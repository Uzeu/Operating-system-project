
#ifndef OS_NOVI_PROJEKAT_17_7_2024_TCB_HPP
#define OS_NOVI_PROJEKAT_17_7_2024_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"


class TCB{
public:

    ~TCB(){ delete[] stack;}

    bool isFinished() const{ return finished;}
    bool isBlocked() const { return blocked;}

    void setFinished(bool value){ finished=value;}
    void setBlocked (bool value){ blocked=value;}

    using Body=void (*)(void *);

    static TCB* createThread(Body body,void* args,void* stack_space);

    static TCB* createThreadNoStart(Body body,void* args,void* stack_space);


    int start();
    static void yield();

    static TCB *running;

private:

    TCB(Body body, void *args,void *stack_space,bool startIt) :
            body(body),
            args(args),
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            startIt(startIt)
    {
        if (body != nullptr && startIt==true) { Scheduler::put(this); }
    }


    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* args;
    uint64  *stack;
    Context context;
    bool finished;
    bool blocked;
    bool startIt;

    friend class Riscv;

    static void threadWrapper();
    static void contextSwitch(Context *oldContext, Context *runningContext);

    static int exit();
    static void dispatch();

    static uint64 constexpr STACK_SIZE=DEFAULT_STACK_SIZE;

};

#endif //OS_NOVI_PROJEKAT_17_7_2024_TCB_HPP
