
#include "../h/syscall_cpp.hpp"


Thread::Thread(void (*body)(void *), void *arg){
    body=body;
    arg=arg;
    thread_createNoStart(&myHandle,body,arg);
}

Thread::~Thread() {
    delete myHandle;
}

int Thread::start() {
    return myHandle->start();
}

void Thread::dispatch() {
    thread_dispatch();
}

Thread::Thread() {
    body=runWrapper;
    thread_createNoStart(&myHandle,runWrapper, this);
}

void Thread::runWrapper(void *thread) {
    ((Thread*)thread)->run();
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    delete myHandle;
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

int Semaphore::tryWait() {
    return sem_trywait(myHandle);
}


char Console::getc() {
    return ::getc();
}

void Console::putc(char c) {
    ::putc(c);
}