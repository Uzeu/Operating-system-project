
#ifndef OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_C_H
#define OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_C_H

#include "../lib/hw.h"
#include "tcb.hpp"
#include "sem.hpp"

void* mem_alloc(size_t size);
int mem_free(void* pointer);



typedef TCB* thread_t;

int thread_create(thread_t* handle,void(*start_routine)(void*),void* arg);

int thread_exit();
void thread_dispatch();

int thread_createNoStart(thread_t* handle,void(*start_routine)(void*),void* arg);
int thread_start(thread_t handle);

typedef Sem* sem_t;

int sem_open(sem_t* handle,unsigned init);
int sem_close(sem_t handle);
int sem_wait(sem_t id);
int sem_signal(sem_t id);
int sem_trywait(sem_t id);


const int EOF=-1;
char getc();
void putc(char c);




#endif //OS_NOVI_PROJEKAT_17_7_2024_SYSCALL_C_H
