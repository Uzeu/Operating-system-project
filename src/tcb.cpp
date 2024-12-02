
#include "../h/tcb.hpp"
#include "../h/riscv.hpp"



TCB *TCB::running= nullptr;

TCB *TCB::createThread(TCB::Body body, void *args, void* stack_space) {
    return new TCB(body,args,stack_space,true);
}

TCB* TCB::createThreadNoStart(TCB::Body body, void *args, void *stack_space) {
    return new TCB(body,args,stack_space,false);
}

int TCB::start() {
    if(this->body== nullptr || this->finished)return -1;
    Scheduler::put(this);
    return 0;
}


void TCB::yield() {
    uint64 num=0x13;
    __asm__ volatile("mv a0,%0" : : "r"(num));
    __asm__ volatile("ecall");
}

int TCB::exit() {
    int returnValue;
    if( running== nullptr || running->body== nullptr){
        returnValue=-1;

        return returnValue;
    }
    running->setFinished(true);
    TCB::dispatch();
    returnValue=0;
    return returnValue;
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    running = Scheduler::get();
    if(old->body != nullptr){
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
    }else{
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    Riscv::popSppSpie();
    running->body(running->args);
    running->setFinished(true);
    TCB::yield();
}