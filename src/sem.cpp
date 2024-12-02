
#include "../h/sem.hpp"
#include "../h/riscv.hpp"

Sem *Sem::create_sem(int val) {
    return new Sem(val);
}

void Sem::block(){
    blocked.addLast(TCB::running);
    TCB::running->setBlocked(true);
    TCB::yield();
}

void Sem::unblock() {
    TCB* thread=blocked.removeFirst();
    thread->setBlocked(false);
    Scheduler::put(thread);
}

int Sem::wait() {
    if(terminated)return -1;
    if(--val<0)block();
    return 0;
}

int Sem::signal() {
    if(terminated) return -1;
    if(++val<=0)unblock();
    return 0;
}

int Sem::close() {
    if(terminated)return -1;

    while(blocked.peekFirst() != nullptr){
        blocked.peekFirst()->setBlocked(false);
        Scheduler::put(blocked.peekFirst());
        blocked.removeFirst();
    }
    terminated=true;
    return 0;

}

int Sem::tryWait() {
    if(terminated) return -1;
    int returnValue;
    if(val-1<0) returnValue=0;
    else {
        returnValue=1;
        val--;
    }
    return returnValue;
}