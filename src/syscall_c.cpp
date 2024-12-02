
#include "../h/syscall_c.h"


void* mem_alloc(size_t size){


    uint64 num=0x01;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)size));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    void* returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));

    return returnValue;

}

int mem_free(void* pointer){
    uint64 num=0x02;
    __asm__ volatile("mv a1,%0" : : "r"((uint64)pointer));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

int thread_create(thread_t* handle,void(*start_routine)(void*),void* arg){
    uint64 num=0x11;

    void* stack_space= new uint64[DEFAULT_STACK_SIZE];

    __asm__ volatile("mv a4,%0" : : "r"((uint64)stack_space));
    __asm__ volatile("mv a3,%0" : : "r"((uint64)arg));
    __asm__ volatile("mv a2,%0" : : "r"((uint64)start_routine));
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

int thread_createNoStart(thread_t* handle,void(*start_routine)(void*),void* arg){
    uint64 num=0x14;

    void* stack_space= new uint64[DEFAULT_STACK_SIZE];

    __asm__ volatile("mv a4,%0" : : "r"((uint64)stack_space));
    __asm__ volatile("mv a3,%0" : : "r"((uint64)arg));
    __asm__ volatile("mv a2,%0" : : "r"((uint64)start_routine));
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}
int thread_start(thread_t handle){
    uint64 num=0x15;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

int thread_exit(){
    uint64 num=0x12;

    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

void thread_dispatch(){
    uint64 num=0x13;

    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");
}




int sem_open(sem_t* handle,unsigned init){
    uint64 num=0x21;

    __asm__ volatile("mv a2,%0" : : "r"((uint64)init));
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;

}


int sem_close(sem_t handle){
    uint64 num=0x22;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;

}

int sem_wait(sem_t id){
    uint64 num=0x23;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

int sem_signal(sem_t id){
    uint64 num=0x24;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}

int sem_trywait(sem_t id){
    uint64 num=0x26;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    __asm__ volatile("mv a0,%0" : : "r"(num));

    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return returnValue;
}


char getc(){
    uint64 num=0x41;

    __asm__ volatile("mv a0,%0" : : "r"(num));
    __asm__ volatile("ecall");

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    return (char)returnValue;
}

void putc(char c){
    uint64 num=0x42;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)c));
    __asm__ volatile("mv a0,%0" : : "r"(num));
    __asm__ volatile("ecall");
}




