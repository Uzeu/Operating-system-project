
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../h/sem.hpp"
#include "../lib/console.h"
#include "../test/printing.hpp"
#include "../lib/mem.h"

typedef TCB* thread_t;
typedef Sem* sem_t;

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap()
{

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        uint64 volatile sepc = r_sepc() + 4;
        uint64 volatile sstatus = r_sstatus();

        uint64 number;
        __asm__ volatile ("ld %0,80(fp)" : "=r"(number));

        if(number==0x01){
            uint64 size;
            __asm__ volatile ("ld %0,88(fp)" : "=r"(size));
            void* returnValue= __mem_alloc((size_t)size);

            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x02){
            uint64 pointer;
            __asm__ volatile ("ld %0,88(fp)" : "=r"(pointer));
            int returnValue= __mem_free((void*)pointer);

            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
        }else if(number==0x11){
            uint64 stack_space;
            uint64  arg;
            uint64 start_routine;
            thread_t* handle;

            __asm__ volatile("ld %0,112(fp)" : "=r"(stack_space));
            __asm__ volatile("ld %0,104(fp)" : "=r"(arg));
            __asm__ volatile("ld %0,96(fp)" : "=r"(start_routine));
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));


            thread_t handlee=TCB::createThread((TCB::Body)start_routine,(void*)arg,(void*)stack_space);
            *handle=handlee;


            int returnValue;
            if(handlee){
                returnValue=0;
            }else{
                returnValue=-1;
            }
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));


        }else if(number==0x12){
            int returnValue;
            returnValue=TCB::exit();

            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));


        }else if(number==0x13){
            TCB::dispatch();
        }else if(number==0x14){

            uint64 stack_space;
            uint64  arg;
            uint64 start_routine;
            thread_t* handle;

            __asm__ volatile("ld %0,112(fp)" : "=r"(stack_space));
            __asm__ volatile("ld %0,104(fp)" : "=r"(arg));
            __asm__ volatile("ld %0,96(fp)" : "=r"(start_routine));
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));


            thread_t handlee=TCB::createThreadNoStart((TCB::Body)start_routine,(void*)arg,(uint64*)stack_space);
            *handle=handlee;


            int returnValue;
            if(handlee){
                returnValue=0;
            }else{
                returnValue=-1;
            }
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x15){
            uint64 handle;
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
            thread_t handlee=(thread_t)handle;

            int returnValue=handlee->start();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));


        }else if(number==0x21){

            uint64 init;
            sem_t* handle;

            __asm__ volatile("ld %0,96(fp)" : "=r"(init));
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));

            sem_t handlee=Sem::create_sem(init);
            *handle=handlee;

            int returnValue;
            if(handlee){
                returnValue=0;
            }else{
                returnValue=-1;
            }
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));



        }else if(number==0x22){
            uint64 handle;
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
            sem_t handlee=(sem_t)handle;
            int returnValue=handlee->close();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x23){
            uint64 handle;
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
            sem_t handlee=(sem_t)handle;
            int returnValue=handlee->wait();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x24){
            uint64 handle;
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
            sem_t handlee=(sem_t)handle;
            int returnValue=handlee->signal();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x26){
            uint64 handle;
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
            sem_t handlee=(sem_t)handle;
            int returnValue=handlee->tryWait();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
        }else if(number==0x41){
            char returnValue=__getc();
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));

        }else if(number==0x42){
            uint64 c;
            __asm__ volatile("ld %0,88(fp)" : "=r"(c));
            __putc((char)c);

        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    {
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    {
        console_handler();
    }
    else
    {
        printString("\n----\n");
        printInt(scause);
        printString("\n");
        printInt(r_sepc());
        printString("\n");
        printInt(r_stval());
        printString("\n----\n");
    }
}