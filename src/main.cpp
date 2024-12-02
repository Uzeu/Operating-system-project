
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"


extern void userMain();
void userMainWrapper(void*){
    userMain();
}


int main(){

    TCB* mainThread=TCB::createThread(nullptr, nullptr, nullptr);
    TCB::running=mainThread;


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    printString("Started.\n");

    TCB* userThread;
    thread_create(&userThread, userMainWrapper, nullptr);

    while(!userThread->isFinished()){
        thread_dispatch();
    }


    delete userThread;
    delete mainThread;

    printString("Finished.\n");


    return 0;

}