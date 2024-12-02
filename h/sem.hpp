
#ifndef OS_NOVI_PROJEKAT_17_7_2024_SEM_HPP
#define OS_NOVI_PROJEKAT_17_7_2024_SEM_HPP

#include "../lib/hw.h"
#include "list.hpp"
#include "scheduler.hpp"
#include "tcb.hpp"

class Sem{
public:
    Sem(uint16 init=1): val(init), terminated(false){}

    static Sem* create_sem(int val);

    int wait();
    int signal();

    int tryWait();

    int close();

    int value()const{return val;}

protected:
    void block();
    void unblock();

private:
    int val;
    List<TCB> blocked;
    bool terminated;

};

#endif //OS_NOVI_PROJEKAT_17_7_2024_SEM_HPP
