
#ifndef OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_CPP_HPP
#define OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_CPP_HPP

#include "syscall_c.h"

using Body=void (*)(void *);


class Thread{
public:
    Thread(void (*body)(void*), void* arg);
    virtual ~Thread();

    int start();

    static void dispatch();

protected:
    static void runWrapper(void* thread);
    Thread();
    virtual void run(){}

private:
    thread_t myHandle;
    Body body;
    void* arg;
};


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore ();
    int wait ();
    int signal ();
    int tryWait();
private:
    sem_t myHandle;
};



class Console {
public:
    static char getc ();
    static void putc (char);
};


#endif //OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_CPP_HPP
