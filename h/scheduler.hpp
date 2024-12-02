

#ifndef OS_NOVI_PROJEKAT_17_7_2024_SCHEDULER_HPP
#define OS_NOVI_PROJEKAT_17_7_2024_SCHEDULER_HPP

#include "list.hpp"

class TCB;


class Scheduler{
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();
    static void put(TCB *tcb);

};

#endif //OS_NOVI_PROJEKAT_17_7_2024_SCHEDULER_HPP
