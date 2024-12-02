
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	ed013103          	ld	sp,-304(sp) # 80009ed0 <_GLOBAL_OFFSET_TABLE_+0x10>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	1bc050ef          	jal	ra,800051d8 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00013023          	sd	zero,0(sp)
    80001008:	00113423          	sd	ra,8(sp)
    8000100c:	00213823          	sd	sp,16(sp)
    80001010:	00313c23          	sd	gp,24(sp)
    80001014:	02413023          	sd	tp,32(sp)
    80001018:	02513423          	sd	t0,40(sp)
    8000101c:	02613823          	sd	t1,48(sp)
    80001020:	02713c23          	sd	t2,56(sp)
    80001024:	04813023          	sd	s0,64(sp)
    80001028:	04913423          	sd	s1,72(sp)
    8000102c:	04a13823          	sd	a0,80(sp)
    80001030:	04b13c23          	sd	a1,88(sp)
    80001034:	06c13023          	sd	a2,96(sp)
    80001038:	06d13423          	sd	a3,104(sp)
    8000103c:	06e13823          	sd	a4,112(sp)
    80001040:	06f13c23          	sd	a5,120(sp)
    80001044:	09013023          	sd	a6,128(sp)
    80001048:	09113423          	sd	a7,136(sp)
    8000104c:	09213823          	sd	s2,144(sp)
    80001050:	09313c23          	sd	s3,152(sp)
    80001054:	0b413023          	sd	s4,160(sp)
    80001058:	0b513423          	sd	s5,168(sp)
    8000105c:	0b613823          	sd	s6,176(sp)
    80001060:	0b713c23          	sd	s7,184(sp)
    80001064:	0d813023          	sd	s8,192(sp)
    80001068:	0d913423          	sd	s9,200(sp)
    8000106c:	0da13823          	sd	s10,208(sp)
    80001070:	0db13c23          	sd	s11,216(sp)
    80001074:	0fc13023          	sd	t3,224(sp)
    80001078:	0fd13423          	sd	t4,232(sp)
    8000107c:	0fe13823          	sd	t5,240(sp)
    80001080:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001084:	419000ef          	jal	ra,80001c9c <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001088:	00013003          	ld	zero,0(sp)
    8000108c:	00813083          	ld	ra,8(sp)
    80001090:	01013103          	ld	sp,16(sp)
    80001094:	01813183          	ld	gp,24(sp)
    80001098:	02013203          	ld	tp,32(sp)
    8000109c:	02813283          	ld	t0,40(sp)
    800010a0:	03013303          	ld	t1,48(sp)
    800010a4:	03813383          	ld	t2,56(sp)
    800010a8:	04013403          	ld	s0,64(sp)
    800010ac:	04813483          	ld	s1,72(sp)
    800010b0:	05013503          	ld	a0,80(sp)
    800010b4:	05813583          	ld	a1,88(sp)
    800010b8:	06013603          	ld	a2,96(sp)
    800010bc:	06813683          	ld	a3,104(sp)
    800010c0:	07013703          	ld	a4,112(sp)
    800010c4:	07813783          	ld	a5,120(sp)
    800010c8:	08013803          	ld	a6,128(sp)
    800010cc:	08813883          	ld	a7,136(sp)
    800010d0:	09013903          	ld	s2,144(sp)
    800010d4:	09813983          	ld	s3,152(sp)
    800010d8:	0a013a03          	ld	s4,160(sp)
    800010dc:	0a813a83          	ld	s5,168(sp)
    800010e0:	0b013b03          	ld	s6,176(sp)
    800010e4:	0b813b83          	ld	s7,184(sp)
    800010e8:	0c013c03          	ld	s8,192(sp)
    800010ec:	0c813c83          	ld	s9,200(sp)
    800010f0:	0d013d03          	ld	s10,208(sp)
    800010f4:	0d813d83          	ld	s11,216(sp)
    800010f8:	0e013e03          	ld	t3,224(sp)
    800010fc:	0e813e83          	ld	t4,232(sp)
    80001100:	0f013f03          	ld	t5,240(sp)
    80001104:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001108:	10010113          	addi	sp,sp,256

    sret
    8000110c:	10200073          	sret

0000000080001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001110:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001114:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001118:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000111c:	0085b103          	ld	sp,8(a1)

    80001120:	00008067          	ret

0000000080001124 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001124:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001128:	00b29a63          	bne	t0,a1,8000113c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000112c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001130:	fe029ae3          	bnez	t0,80001124 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001134:	00000513          	li	a0,0
    jr ra                  # Return.
    80001138:	00008067          	ret

000000008000113c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000113c:	00100513          	li	a0,1
    80001140:	00008067          	ret

0000000080001144 <_Z9mem_allocm>:

#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    80001144:	ff010113          	addi	sp,sp,-16
    80001148:	00813423          	sd	s0,8(sp)
    8000114c:	01010413          	addi	s0,sp,16


    uint64 num=0x01;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)size));
    80001150:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001154:	00100793          	li	a5,1
    80001158:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000115c:	00000073          	ecall

    void* returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    80001160:	00050513          	mv	a0,a0

    return returnValue;

}
    80001164:	00813403          	ld	s0,8(sp)
    80001168:	01010113          	addi	sp,sp,16
    8000116c:	00008067          	ret

0000000080001170 <_Z8mem_freePv>:

int mem_free(void* pointer){
    80001170:	ff010113          	addi	sp,sp,-16
    80001174:	00813423          	sd	s0,8(sp)
    80001178:	01010413          	addi	s0,sp,16
    uint64 num=0x02;
    __asm__ volatile("mv a1,%0" : : "r"((uint64)pointer));
    8000117c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001180:	00200793          	li	a5,2
    80001184:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001188:	00000073          	ecall

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    8000118c:	00050513          	mv	a0,a0
    return returnValue;
}
    80001190:	0005051b          	sext.w	a0,a0
    80001194:	00813403          	ld	s0,8(sp)
    80001198:	01010113          	addi	sp,sp,16
    8000119c:	00008067          	ret

00000000800011a0 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create(thread_t* handle,void(*start_routine)(void*),void* arg){
    800011a0:	fd010113          	addi	sp,sp,-48
    800011a4:	02113423          	sd	ra,40(sp)
    800011a8:	02813023          	sd	s0,32(sp)
    800011ac:	00913c23          	sd	s1,24(sp)
    800011b0:	01213823          	sd	s2,16(sp)
    800011b4:	01313423          	sd	s3,8(sp)
    800011b8:	03010413          	addi	s0,sp,48
    800011bc:	00050493          	mv	s1,a0
    800011c0:	00058913          	mv	s2,a1
    800011c4:	00060993          	mv	s3,a2
    uint64 num=0x11;

    void* stack_space= new uint64[DEFAULT_STACK_SIZE];
    800011c8:	00008537          	lui	a0,0x8
    800011cc:	00000097          	auipc	ra,0x0
    800011d0:	6fc080e7          	jalr	1788(ra) # 800018c8 <_Znam>

    __asm__ volatile("mv a4,%0" : : "r"((uint64)stack_space));
    800011d4:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3,%0" : : "r"((uint64)arg));
    800011d8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2,%0" : : "r"((uint64)start_routine));
    800011dc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    800011e0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0,%0" : : "r"(num));
    800011e4:	01100793          	li	a5,17
    800011e8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800011ec:	00000073          	ecall

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    800011f0:	00050513          	mv	a0,a0
    return returnValue;
}
    800011f4:	0005051b          	sext.w	a0,a0
    800011f8:	02813083          	ld	ra,40(sp)
    800011fc:	02013403          	ld	s0,32(sp)
    80001200:	01813483          	ld	s1,24(sp)
    80001204:	01013903          	ld	s2,16(sp)
    80001208:	00813983          	ld	s3,8(sp)
    8000120c:	03010113          	addi	sp,sp,48
    80001210:	00008067          	ret

0000000080001214 <_Z20thread_createNoStartPP3TCBPFvPvES2_>:

int thread_createNoStart(thread_t* handle,void(*start_routine)(void*),void* arg){
    80001214:	fd010113          	addi	sp,sp,-48
    80001218:	02113423          	sd	ra,40(sp)
    8000121c:	02813023          	sd	s0,32(sp)
    80001220:	00913c23          	sd	s1,24(sp)
    80001224:	01213823          	sd	s2,16(sp)
    80001228:	01313423          	sd	s3,8(sp)
    8000122c:	03010413          	addi	s0,sp,48
    80001230:	00050493          	mv	s1,a0
    80001234:	00058913          	mv	s2,a1
    80001238:	00060993          	mv	s3,a2
    uint64 num=0x14;

    void* stack_space= new uint64[DEFAULT_STACK_SIZE];
    8000123c:	00008537          	lui	a0,0x8
    80001240:	00000097          	auipc	ra,0x0
    80001244:	688080e7          	jalr	1672(ra) # 800018c8 <_Znam>

    __asm__ volatile("mv a4,%0" : : "r"((uint64)stack_space));
    80001248:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3,%0" : : "r"((uint64)arg));
    8000124c:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2,%0" : : "r"((uint64)start_routine));
    80001250:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    80001254:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001258:	01400793          	li	a5,20
    8000125c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    80001260:	00000073          	ecall

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    80001264:	00050513          	mv	a0,a0
    return returnValue;
}
    80001268:	0005051b          	sext.w	a0,a0
    8000126c:	02813083          	ld	ra,40(sp)
    80001270:	02013403          	ld	s0,32(sp)
    80001274:	01813483          	ld	s1,24(sp)
    80001278:	01013903          	ld	s2,16(sp)
    8000127c:	00813983          	ld	s3,8(sp)
    80001280:	03010113          	addi	sp,sp,48
    80001284:	00008067          	ret

0000000080001288 <_Z12thread_startP3TCB>:
int thread_start(thread_t handle){
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    uint64 num=0x15;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    80001294:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001298:	01500793          	li	a5,21
    8000129c:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012a0:	00000073          	ecall

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    800012a4:	00050513          	mv	a0,a0
    return returnValue;
}
    800012a8:	0005051b          	sext.w	a0,a0
    800012ac:	00813403          	ld	s0,8(sp)
    800012b0:	01010113          	addi	sp,sp,16
    800012b4:	00008067          	ret

00000000800012b8 <_Z11thread_exitv>:

int thread_exit(){
    800012b8:	ff010113          	addi	sp,sp,-16
    800012bc:	00813423          	sd	s0,8(sp)
    800012c0:	01010413          	addi	s0,sp,16
    uint64 num=0x12;

    __asm__ volatile("mv a0,%0" : : "r"(num));
    800012c4:	01200793          	li	a5,18
    800012c8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012cc:	00000073          	ecall

    int returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    800012d0:	00050513          	mv	a0,a0
    return returnValue;
}
    800012d4:	0005051b          	sext.w	a0,a0
    800012d8:	00813403          	ld	s0,8(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00813423          	sd	s0,8(sp)
    800012ec:	01010413          	addi	s0,sp,16
    uint64 num=0x13;

    __asm__ volatile("mv a0,%0" : : "r"(num));
    800012f0:	01300793          	li	a5,19
    800012f4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800012f8:	00000073          	ecall
}
    800012fc:	00813403          	ld	s0,8(sp)
    80001300:	01010113          	addi	sp,sp,16
    80001304:	00008067          	ret

0000000080001308 <_Z8sem_openPP3Semj>:




int sem_open(sem_t* handle,unsigned init){
    80001308:	ff010113          	addi	sp,sp,-16
    8000130c:	00813423          	sd	s0,8(sp)
    80001310:	01010413          	addi	s0,sp,16
    uint64 num=0x21;

    __asm__ volatile("mv a2,%0" : : "r"((uint64)init));
    80001314:	02059593          	slli	a1,a1,0x20
    80001318:	0205d593          	srli	a1,a1,0x20
    8000131c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    80001320:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001324:	02100793          	li	a5,33
    80001328:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000132c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    80001330:	00050513          	mv	a0,a0
    return returnValue;

}
    80001334:	0005051b          	sext.w	a0,a0
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_Z9sem_closeP3Sem>:


int sem_close(sem_t handle){
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    uint64 num=0x22;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)handle));
    80001350:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001354:	02200793          	li	a5,34
    80001358:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000135c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    80001360:	00050513          	mv	a0,a0
    return returnValue;

}
    80001364:	0005051b          	sext.w	a0,a0
    80001368:	00813403          	ld	s0,8(sp)
    8000136c:	01010113          	addi	sp,sp,16
    80001370:	00008067          	ret

0000000080001374 <_Z8sem_waitP3Sem>:

int sem_wait(sem_t id){
    80001374:	ff010113          	addi	sp,sp,-16
    80001378:	00813423          	sd	s0,8(sp)
    8000137c:	01010413          	addi	s0,sp,16
    uint64 num=0x23;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    80001380:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001384:	02300793          	li	a5,35
    80001388:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    8000138c:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    80001390:	00050513          	mv	a0,a0
    return returnValue;
}
    80001394:	0005051b          	sext.w	a0,a0
    80001398:	00813403          	ld	s0,8(sp)
    8000139c:	01010113          	addi	sp,sp,16
    800013a0:	00008067          	ret

00000000800013a4 <_Z10sem_signalP3Sem>:

int sem_signal(sem_t id){
    800013a4:	ff010113          	addi	sp,sp,-16
    800013a8:	00813423          	sd	s0,8(sp)
    800013ac:	01010413          	addi	s0,sp,16
    uint64 num=0x24;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    800013b0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    800013b4:	02400793          	li	a5,36
    800013b8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    800013c0:	00050513          	mv	a0,a0
    return returnValue;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	00813403          	ld	s0,8(sp)
    800013cc:	01010113          	addi	sp,sp,16
    800013d0:	00008067          	ret

00000000800013d4 <_Z11sem_trywaitP3Sem>:

int sem_trywait(sem_t id){
    800013d4:	ff010113          	addi	sp,sp,-16
    800013d8:	00813423          	sd	s0,8(sp)
    800013dc:	01010413          	addi	s0,sp,16
    uint64 num=0x26;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)id));
    800013e0:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    800013e4:	02600793          	li	a5,38
    800013e8:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800013ec:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    800013f0:	00050513          	mv	a0,a0
    return returnValue;
}
    800013f4:	0005051b          	sext.w	a0,a0
    800013f8:	00813403          	ld	s0,8(sp)
    800013fc:	01010113          	addi	sp,sp,16
    80001400:	00008067          	ret

0000000080001404 <_Z4getcv>:


char getc(){
    80001404:	ff010113          	addi	sp,sp,-16
    80001408:	00813423          	sd	s0,8(sp)
    8000140c:	01010413          	addi	s0,sp,16
    uint64 num=0x41;

    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001410:	04100793          	li	a5,65
    80001414:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001418:	00000073          	ecall

    uint64 returnValue;
    __asm__ volatile("mv %0,a0" : "=r"(returnValue));
    8000141c:	00050513          	mv	a0,a0
    return (char)returnValue;
}
    80001420:	0ff57513          	andi	a0,a0,255
    80001424:	00813403          	ld	s0,8(sp)
    80001428:	01010113          	addi	sp,sp,16
    8000142c:	00008067          	ret

0000000080001430 <_Z4putcc>:

void putc(char c){
    80001430:	ff010113          	addi	sp,sp,-16
    80001434:	00813423          	sd	s0,8(sp)
    80001438:	01010413          	addi	s0,sp,16
    uint64 num=0x42;

    __asm__ volatile("mv a1,%0" : : "r"((uint64)c));
    8000143c:	00050593          	mv	a1,a0
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001440:	04200793          	li	a5,66
    80001444:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001448:	00000073          	ecall
}
    8000144c:	00813403          	ld	s0,8(sp)
    80001450:	01010113          	addi	sp,sp,16
    80001454:	00008067          	ret

0000000080001458 <_Z15userMainWrapperPv>:
#include "../h/syscall_c.h"
#include "../test/printing.hpp"


extern void userMain();
void userMainWrapper(void*){
    80001458:	ff010113          	addi	sp,sp,-16
    8000145c:	00113423          	sd	ra,8(sp)
    80001460:	00813023          	sd	s0,0(sp)
    80001464:	01010413          	addi	s0,sp,16
    userMain();
    80001468:	00003097          	auipc	ra,0x3
    8000146c:	320080e7          	jalr	800(ra) # 80004788 <_Z8userMainv>
}
    80001470:	00813083          	ld	ra,8(sp)
    80001474:	00013403          	ld	s0,0(sp)
    80001478:	01010113          	addi	sp,sp,16
    8000147c:	00008067          	ret

0000000080001480 <main>:


int main(){
    80001480:	fd010113          	addi	sp,sp,-48
    80001484:	02113423          	sd	ra,40(sp)
    80001488:	02813023          	sd	s0,32(sp)
    8000148c:	00913c23          	sd	s1,24(sp)
    80001490:	01213823          	sd	s2,16(sp)
    80001494:	03010413          	addi	s0,sp,48

    TCB* mainThread=TCB::createThread(nullptr, nullptr, nullptr);
    80001498:	00000613          	li	a2,0
    8000149c:	00000593          	li	a1,0
    800014a0:	00000513          	li	a0,0
    800014a4:	00000097          	auipc	ra,0x0
    800014a8:	0d8080e7          	jalr	216(ra) # 8000157c <_ZN3TCB12createThreadEPFvPvES0_S0_>
    800014ac:	00050913          	mv	s2,a0
    TCB::running=mainThread;
    800014b0:	00009797          	auipc	a5,0x9
    800014b4:	a287b783          	ld	a5,-1496(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800014b8:	00a7b023          	sd	a0,0(a5)


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800014bc:	00009797          	auipc	a5,0x9
    800014c0:	a0c7b783          	ld	a5,-1524(a5) # 80009ec8 <_GLOBAL_OFFSET_TABLE_+0x8>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800014c4:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800014c8:	00200793          	li	a5,2
    800014cc:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);
    printString("Started.\n");
    800014d0:	00007517          	auipc	a0,0x7
    800014d4:	b3050513          	addi	a0,a0,-1232 # 80008000 <kvmincrease+0xa20>
    800014d8:	00003097          	auipc	ra,0x3
    800014dc:	be8080e7          	jalr	-1048(ra) # 800040c0 <_Z11printStringPKc>

    TCB* userThread;
    thread_create(&userThread, userMainWrapper, nullptr);
    800014e0:	00000613          	li	a2,0
    800014e4:	00000597          	auipc	a1,0x0
    800014e8:	f7458593          	addi	a1,a1,-140 # 80001458 <_Z15userMainWrapperPv>
    800014ec:	fd840513          	addi	a0,s0,-40
    800014f0:	00000097          	auipc	ra,0x0
    800014f4:	cb0080e7          	jalr	-848(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>

    while(!userThread->isFinished()){
    800014f8:	fd843483          	ld	s1,-40(s0)
class TCB{
public:

    ~TCB(){ delete[] stack;}

    bool isFinished() const{ return finished;}
    800014fc:	0284c783          	lbu	a5,40(s1)
    80001500:	00079863          	bnez	a5,80001510 <main+0x90>
        thread_dispatch();
    80001504:	00000097          	auipc	ra,0x0
    80001508:	de0080e7          	jalr	-544(ra) # 800012e4 <_Z15thread_dispatchv>
    8000150c:	fedff06f          	j	800014f8 <main+0x78>
    }


    delete userThread;
    80001510:	02048063          	beqz	s1,80001530 <main+0xb0>
    ~TCB(){ delete[] stack;}
    80001514:	0104b503          	ld	a0,16(s1)
    80001518:	00050663          	beqz	a0,80001524 <main+0xa4>
    8000151c:	00000097          	auipc	ra,0x0
    80001520:	3fc080e7          	jalr	1020(ra) # 80001918 <_ZdaPv>
    80001524:	00048513          	mv	a0,s1
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	3c8080e7          	jalr	968(ra) # 800018f0 <_ZdlPv>
    delete mainThread;
    80001530:	02090063          	beqz	s2,80001550 <main+0xd0>
    80001534:	01093503          	ld	a0,16(s2)
    80001538:	00050663          	beqz	a0,80001544 <main+0xc4>
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	3dc080e7          	jalr	988(ra) # 80001918 <_ZdaPv>
    80001544:	00090513          	mv	a0,s2
    80001548:	00000097          	auipc	ra,0x0
    8000154c:	3a8080e7          	jalr	936(ra) # 800018f0 <_ZdlPv>

    printString("Finished.\n");
    80001550:	00007517          	auipc	a0,0x7
    80001554:	ac050513          	addi	a0,a0,-1344 # 80008010 <kvmincrease+0xa30>
    80001558:	00003097          	auipc	ra,0x3
    8000155c:	b68080e7          	jalr	-1176(ra) # 800040c0 <_Z11printStringPKc>


    return 0;

    80001560:	00000513          	li	a0,0
    80001564:	02813083          	ld	ra,40(sp)
    80001568:	02013403          	ld	s0,32(sp)
    8000156c:	01813483          	ld	s1,24(sp)
    80001570:	01013903          	ld	s2,16(sp)
    80001574:	03010113          	addi	sp,sp,48
    80001578:	00008067          	ret

000000008000157c <_ZN3TCB12createThreadEPFvPvES0_S0_>:



TCB *TCB::running= nullptr;

TCB *TCB::createThread(TCB::Body body, void *args, void* stack_space) {
    8000157c:	fd010113          	addi	sp,sp,-48
    80001580:	02113423          	sd	ra,40(sp)
    80001584:	02813023          	sd	s0,32(sp)
    80001588:	00913c23          	sd	s1,24(sp)
    8000158c:	01213823          	sd	s2,16(sp)
    80001590:	01313423          	sd	s3,8(sp)
    80001594:	01413023          	sd	s4,0(sp)
    80001598:	03010413          	addi	s0,sp,48
    8000159c:	00050993          	mv	s3,a0
    800015a0:	00058a13          	mv	s4,a1
    800015a4:	00060913          	mv	s2,a2
    return new TCB(body,args,stack_space,true);
    800015a8:	03000513          	li	a0,48
    800015ac:	00000097          	auipc	ra,0x0
    800015b0:	2f4080e7          	jalr	756(ra) # 800018a0 <_Znwm>
    800015b4:	00050493          	mv	s1,a0
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            finished(false),
            blocked(false),
            startIt(startIt)
    800015b8:	01353023          	sd	s3,0(a0)
    800015bc:	01453423          	sd	s4,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    800015c0:	04098463          	beqz	s3,80001608 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x8c>
            startIt(startIt)
    800015c4:	0124b823          	sd	s2,16(s1)
    800015c8:	00000797          	auipc	a5,0x0
    800015cc:	19878793          	addi	a5,a5,408 # 80001760 <_ZN3TCB13threadWrapperEv>
    800015d0:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800015d4:	02090e63          	beqz	s2,80001610 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x94>
    800015d8:	00008637          	lui	a2,0x8
    800015dc:	00c90933          	add	s2,s2,a2
            startIt(startIt)
    800015e0:	0324b023          	sd	s2,32(s1)
    800015e4:	02048423          	sb	zero,40(s1)
    800015e8:	020484a3          	sb	zero,41(s1)
    800015ec:	00100793          	li	a5,1
    800015f0:	02f48523          	sb	a5,42(s1)
    {
        if (body != nullptr && startIt==true) { Scheduler::put(this); }
    800015f4:	04098063          	beqz	s3,80001634 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb8>
    800015f8:	00048513          	mv	a0,s1
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	d30080e7          	jalr	-720(ra) # 8000232c <_ZN9Scheduler3putEP3TCB>
    80001604:	0300006f          	j	80001634 <_ZN3TCB12createThreadEPFvPvES0_S0_+0xb8>
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001608:	00000913          	li	s2,0
    8000160c:	fb9ff06f          	j	800015c4 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x48>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    80001610:	00000913          	li	s2,0
    80001614:	fcdff06f          	j	800015e0 <_ZN3TCB12createThreadEPFvPvES0_S0_+0x64>
    80001618:	00050913          	mv	s2,a0
    8000161c:	00048513          	mv	a0,s1
    80001620:	00000097          	auipc	ra,0x0
    80001624:	2d0080e7          	jalr	720(ra) # 800018f0 <_ZdlPv>
    80001628:	00090513          	mv	a0,s2
    8000162c:	0000a097          	auipc	ra,0xa
    80001630:	a1c080e7          	jalr	-1508(ra) # 8000b048 <_Unwind_Resume>
}
    80001634:	00048513          	mv	a0,s1
    80001638:	02813083          	ld	ra,40(sp)
    8000163c:	02013403          	ld	s0,32(sp)
    80001640:	01813483          	ld	s1,24(sp)
    80001644:	01013903          	ld	s2,16(sp)
    80001648:	00813983          	ld	s3,8(sp)
    8000164c:	00013a03          	ld	s4,0(sp)
    80001650:	03010113          	addi	sp,sp,48
    80001654:	00008067          	ret

0000000080001658 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_>:

TCB* TCB::createThreadNoStart(TCB::Body body, void *args, void *stack_space) {
    80001658:	fd010113          	addi	sp,sp,-48
    8000165c:	02113423          	sd	ra,40(sp)
    80001660:	02813023          	sd	s0,32(sp)
    80001664:	00913c23          	sd	s1,24(sp)
    80001668:	01213823          	sd	s2,16(sp)
    8000166c:	01313423          	sd	s3,8(sp)
    80001670:	03010413          	addi	s0,sp,48
    80001674:	00050913          	mv	s2,a0
    80001678:	00058993          	mv	s3,a1
    8000167c:	00060493          	mv	s1,a2
    return new TCB(body,args,stack_space,false);
    80001680:	03000513          	li	a0,48
    80001684:	00000097          	auipc	ra,0x0
    80001688:	21c080e7          	jalr	540(ra) # 800018a0 <_Znwm>
            startIt(startIt)
    8000168c:	01253023          	sd	s2,0(a0)
    80001690:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    80001694:	04090663          	beqz	s2,800016e0 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_+0x88>
            startIt(startIt)
    80001698:	00953823          	sd	s1,16(a0)
    8000169c:	00000797          	auipc	a5,0x0
    800016a0:	0c478793          	addi	a5,a5,196 # 80001760 <_ZN3TCB13threadWrapperEv>
    800016a4:	00f53c23          	sd	a5,24(a0)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800016a8:	04048063          	beqz	s1,800016e8 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_+0x90>
    800016ac:	00008637          	lui	a2,0x8
    800016b0:	00c484b3          	add	s1,s1,a2
            startIt(startIt)
    800016b4:	02953023          	sd	s1,32(a0)
    800016b8:	02050423          	sb	zero,40(a0)
    800016bc:	020504a3          	sb	zero,41(a0)
    800016c0:	02050523          	sb	zero,42(a0)
}
    800016c4:	02813083          	ld	ra,40(sp)
    800016c8:	02013403          	ld	s0,32(sp)
    800016cc:	01813483          	ld	s1,24(sp)
    800016d0:	01013903          	ld	s2,16(sp)
    800016d4:	00813983          	ld	s3,8(sp)
    800016d8:	03010113          	addi	sp,sp,48
    800016dc:	00008067          	ret
            stack(body != nullptr ? (uint64*)stack_space : nullptr),
    800016e0:	00000493          	li	s1,0
    800016e4:	fb5ff06f          	j	80001698 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_+0x40>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800016e8:	00000493          	li	s1,0
    800016ec:	fc9ff06f          	j	800016b4 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_+0x5c>

00000000800016f0 <_ZN3TCB5startEv>:

int TCB::start() {
    if(this->body== nullptr || this->finished)return -1;
    800016f0:	00053783          	ld	a5,0(a0)
    800016f4:	02078c63          	beqz	a5,8000172c <_ZN3TCB5startEv+0x3c>
    800016f8:	02854783          	lbu	a5,40(a0)
    800016fc:	02079c63          	bnez	a5,80001734 <_ZN3TCB5startEv+0x44>
int TCB::start() {
    80001700:	ff010113          	addi	sp,sp,-16
    80001704:	00113423          	sd	ra,8(sp)
    80001708:	00813023          	sd	s0,0(sp)
    8000170c:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80001710:	00001097          	auipc	ra,0x1
    80001714:	c1c080e7          	jalr	-996(ra) # 8000232c <_ZN9Scheduler3putEP3TCB>
    return 0;
    80001718:	00000513          	li	a0,0
}
    8000171c:	00813083          	ld	ra,8(sp)
    80001720:	00013403          	ld	s0,0(sp)
    80001724:	01010113          	addi	sp,sp,16
    80001728:	00008067          	ret
    if(this->body== nullptr || this->finished)return -1;
    8000172c:	fff00513          	li	a0,-1
    80001730:	00008067          	ret
    80001734:	fff00513          	li	a0,-1
}
    80001738:	00008067          	ret

000000008000173c <_ZN3TCB5yieldEv>:


void TCB::yield() {
    8000173c:	ff010113          	addi	sp,sp,-16
    80001740:	00813423          	sd	s0,8(sp)
    80001744:	01010413          	addi	s0,sp,16
    uint64 num=0x13;
    __asm__ volatile("mv a0,%0" : : "r"(num));
    80001748:	01300793          	li	a5,19
    8000174c:	00078513          	mv	a0,a5
    __asm__ volatile("ecall");
    80001750:	00000073          	ecall
}
    80001754:	00813403          	ld	s0,8(sp)
    80001758:	01010113          	addi	sp,sp,16
    8000175c:	00008067          	ret

0000000080001760 <_ZN3TCB13threadWrapperEv>:
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    }
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper() {
    80001760:	fe010113          	addi	sp,sp,-32
    80001764:	00113c23          	sd	ra,24(sp)
    80001768:	00813823          	sd	s0,16(sp)
    8000176c:	00913423          	sd	s1,8(sp)
    80001770:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80001774:	00000097          	auipc	ra,0x0
    80001778:	508080e7          	jalr	1288(ra) # 80001c7c <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    8000177c:	00008497          	auipc	s1,0x8
    80001780:	7b448493          	addi	s1,s1,1972 # 80009f30 <_ZN3TCB7runningE>
    80001784:	0004b783          	ld	a5,0(s1)
    80001788:	0007b703          	ld	a4,0(a5)
    8000178c:	0087b503          	ld	a0,8(a5)
    80001790:	000700e7          	jalr	a4
    running->setFinished(true);
    80001794:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value){ finished=value;}
    80001798:	00100713          	li	a4,1
    8000179c:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    800017a0:	00000097          	auipc	ra,0x0
    800017a4:	f9c080e7          	jalr	-100(ra) # 8000173c <_ZN3TCB5yieldEv>
    800017a8:	01813083          	ld	ra,24(sp)
    800017ac:	01013403          	ld	s0,16(sp)
    800017b0:	00813483          	ld	s1,8(sp)
    800017b4:	02010113          	addi	sp,sp,32
    800017b8:	00008067          	ret

00000000800017bc <_ZN3TCB8dispatchEv>:
{
    800017bc:	fe010113          	addi	sp,sp,-32
    800017c0:	00113c23          	sd	ra,24(sp)
    800017c4:	00813823          	sd	s0,16(sp)
    800017c8:	00913423          	sd	s1,8(sp)
    800017cc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800017d0:	00008497          	auipc	s1,0x8
    800017d4:	7604b483          	ld	s1,1888(s1) # 80009f30 <_ZN3TCB7runningE>
    bool isFinished() const{ return finished;}
    800017d8:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    800017dc:	00079663          	bnez	a5,800017e8 <_ZN3TCB8dispatchEv+0x2c>
    bool isBlocked() const { return blocked;}
    800017e0:	0294c783          	lbu	a5,41(s1)
    800017e4:	04078463          	beqz	a5,8000182c <_ZN3TCB8dispatchEv+0x70>
    running = Scheduler::get();
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	adc080e7          	jalr	-1316(ra) # 800022c4 <_ZN9Scheduler3getEv>
    800017f0:	00008797          	auipc	a5,0x8
    800017f4:	74a7b023          	sd	a0,1856(a5) # 80009f30 <_ZN3TCB7runningE>
    if(old->body != nullptr){
    800017f8:	0004b783          	ld	a5,0(s1)
    800017fc:	04078063          	beqz	a5,8000183c <_ZN3TCB8dispatchEv+0x80>
}

inline void Riscv::mc_sstatus(uint64 mask)
{
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001800:	10000793          	li	a5,256
    80001804:	1007b073          	csrc	sstatus,a5
    TCB::contextSwitch(&old->context, &running->context);
    80001808:	01850593          	addi	a1,a0,24
    8000180c:	01848513          	addi	a0,s1,24
    80001810:	00000097          	auipc	ra,0x0
    80001814:	900080e7          	jalr	-1792(ra) # 80001110 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80001818:	01813083          	ld	ra,24(sp)
    8000181c:	01013403          	ld	s0,16(sp)
    80001820:	00813483          	ld	s1,8(sp)
    80001824:	02010113          	addi	sp,sp,32
    80001828:	00008067          	ret
    if (!old->isFinished() && !old->isBlocked()) { Scheduler::put(old); }
    8000182c:	00048513          	mv	a0,s1
    80001830:	00001097          	auipc	ra,0x1
    80001834:	afc080e7          	jalr	-1284(ra) # 8000232c <_ZN9Scheduler3putEP3TCB>
    80001838:	fb1ff06f          	j	800017e8 <_ZN3TCB8dispatchEv+0x2c>
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    8000183c:	10000793          	li	a5,256
    80001840:	1007a073          	csrs	sstatus,a5
}
    80001844:	fc5ff06f          	j	80001808 <_ZN3TCB8dispatchEv+0x4c>

0000000080001848 <_ZN3TCB4exitEv>:
    if( running== nullptr || running->body== nullptr){
    80001848:	00008797          	auipc	a5,0x8
    8000184c:	6e87b783          	ld	a5,1768(a5) # 80009f30 <_ZN3TCB7runningE>
    80001850:	04078063          	beqz	a5,80001890 <_ZN3TCB4exitEv+0x48>
    80001854:	0007b703          	ld	a4,0(a5)
    80001858:	04070063          	beqz	a4,80001898 <_ZN3TCB4exitEv+0x50>
int TCB::exit() {
    8000185c:	ff010113          	addi	sp,sp,-16
    80001860:	00113423          	sd	ra,8(sp)
    80001864:	00813023          	sd	s0,0(sp)
    80001868:	01010413          	addi	s0,sp,16
    void setFinished(bool value){ finished=value;}
    8000186c:	00100713          	li	a4,1
    80001870:	02e78423          	sb	a4,40(a5)
    TCB::dispatch();
    80001874:	00000097          	auipc	ra,0x0
    80001878:	f48080e7          	jalr	-184(ra) # 800017bc <_ZN3TCB8dispatchEv>
    return returnValue;
    8000187c:	00000513          	li	a0,0
}
    80001880:	00813083          	ld	ra,8(sp)
    80001884:	00013403          	ld	s0,0(sp)
    80001888:	01010113          	addi	sp,sp,16
    8000188c:	00008067          	ret
        return returnValue;
    80001890:	fff00513          	li	a0,-1
    80001894:	00008067          	ret
    80001898:	fff00513          	li	a0,-1
}
    8000189c:	00008067          	ret

00000000800018a0 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    800018a0:	ff010113          	addi	sp,sp,-16
    800018a4:	00113423          	sd	ra,8(sp)
    800018a8:	00813023          	sd	s0,0(sp)
    800018ac:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800018b0:	00006097          	auipc	ra,0x6
    800018b4:	ab8080e7          	jalr	-1352(ra) # 80007368 <__mem_alloc>
}
    800018b8:	00813083          	ld	ra,8(sp)
    800018bc:	00013403          	ld	s0,0(sp)
    800018c0:	01010113          	addi	sp,sp,16
    800018c4:	00008067          	ret

00000000800018c8 <_Znam>:

void *operator new[](size_t n)
{
    800018c8:	ff010113          	addi	sp,sp,-16
    800018cc:	00113423          	sd	ra,8(sp)
    800018d0:	00813023          	sd	s0,0(sp)
    800018d4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    800018d8:	00006097          	auipc	ra,0x6
    800018dc:	a90080e7          	jalr	-1392(ra) # 80007368 <__mem_alloc>
}
    800018e0:	00813083          	ld	ra,8(sp)
    800018e4:	00013403          	ld	s0,0(sp)
    800018e8:	01010113          	addi	sp,sp,16
    800018ec:	00008067          	ret

00000000800018f0 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    800018f0:	ff010113          	addi	sp,sp,-16
    800018f4:	00113423          	sd	ra,8(sp)
    800018f8:	00813023          	sd	s0,0(sp)
    800018fc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001900:	00006097          	auipc	ra,0x6
    80001904:	99c080e7          	jalr	-1636(ra) # 8000729c <__mem_free>
}
    80001908:	00813083          	ld	ra,8(sp)
    8000190c:	00013403          	ld	s0,0(sp)
    80001910:	01010113          	addi	sp,sp,16
    80001914:	00008067          	ret

0000000080001918 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001918:	ff010113          	addi	sp,sp,-16
    8000191c:	00113423          	sd	ra,8(sp)
    80001920:	00813023          	sd	s0,0(sp)
    80001924:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001928:	00006097          	auipc	ra,0x6
    8000192c:	974080e7          	jalr	-1676(ra) # 8000729c <__mem_free>
    80001930:	00813083          	ld	ra,8(sp)
    80001934:	00013403          	ld	s0,0(sp)
    80001938:	01010113          	addi	sp,sp,16
    8000193c:	00008067          	ret

0000000080001940 <_ZN6Thread10runWrapperEPv>:
Thread::Thread() {
    body=runWrapper;
    thread_createNoStart(&myHandle,runWrapper, this);
}

void Thread::runWrapper(void *thread) {
    80001940:	ff010113          	addi	sp,sp,-16
    80001944:	00113423          	sd	ra,8(sp)
    80001948:	00813023          	sd	s0,0(sp)
    8000194c:	01010413          	addi	s0,sp,16
    ((Thread*)thread)->run();
    80001950:	00053783          	ld	a5,0(a0)
    80001954:	0107b783          	ld	a5,16(a5)
    80001958:	000780e7          	jalr	a5
}
    8000195c:	00813083          	ld	ra,8(sp)
    80001960:	00013403          	ld	s0,0(sp)
    80001964:	01010113          	addi	sp,sp,16
    80001968:	00008067          	ret

000000008000196c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle,init);
}

Semaphore::~Semaphore() {
    8000196c:	00008797          	auipc	a5,0x8
    80001970:	41478793          	addi	a5,a5,1044 # 80009d80 <_ZTV9Semaphore+0x10>
    80001974:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001978:	00853503          	ld	a0,8(a0)
    8000197c:	02050663          	beqz	a0,800019a8 <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80001980:	ff010113          	addi	sp,sp,-16
    80001984:	00113423          	sd	ra,8(sp)
    80001988:	00813023          	sd	s0,0(sp)
    8000198c:	01010413          	addi	s0,sp,16
    delete myHandle;
    80001990:	00000097          	auipc	ra,0x0
    80001994:	f60080e7          	jalr	-160(ra) # 800018f0 <_ZdlPv>
}
    80001998:	00813083          	ld	ra,8(sp)
    8000199c:	00013403          	ld	s0,0(sp)
    800019a0:	01010113          	addi	sp,sp,16
    800019a4:	00008067          	ret
    800019a8:	00008067          	ret

00000000800019ac <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800019ac:	fe010113          	addi	sp,sp,-32
    800019b0:	00113c23          	sd	ra,24(sp)
    800019b4:	00813823          	sd	s0,16(sp)
    800019b8:	00913423          	sd	s1,8(sp)
    800019bc:	02010413          	addi	s0,sp,32
    800019c0:	00050493          	mv	s1,a0
}
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	fa8080e7          	jalr	-88(ra) # 8000196c <_ZN9SemaphoreD1Ev>
    800019cc:	00048513          	mv	a0,s1
    800019d0:	00000097          	auipc	ra,0x0
    800019d4:	f20080e7          	jalr	-224(ra) # 800018f0 <_ZdlPv>
    800019d8:	01813083          	ld	ra,24(sp)
    800019dc:	01013403          	ld	s0,16(sp)
    800019e0:	00813483          	ld	s1,8(sp)
    800019e4:	02010113          	addi	sp,sp,32
    800019e8:	00008067          	ret

00000000800019ec <_ZN6ThreadD1Ev>:
Thread::~Thread() {
    800019ec:	fe010113          	addi	sp,sp,-32
    800019f0:	00113c23          	sd	ra,24(sp)
    800019f4:	00813823          	sd	s0,16(sp)
    800019f8:	00913423          	sd	s1,8(sp)
    800019fc:	02010413          	addi	s0,sp,32
    80001a00:	00008797          	auipc	a5,0x8
    80001a04:	35878793          	addi	a5,a5,856 # 80009d58 <_ZTV6Thread+0x10>
    80001a08:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80001a0c:	00853483          	ld	s1,8(a0)
    80001a10:	02048063          	beqz	s1,80001a30 <_ZN6ThreadD1Ev+0x44>
    ~TCB(){ delete[] stack;}
    80001a14:	0104b503          	ld	a0,16(s1)
    80001a18:	00050663          	beqz	a0,80001a24 <_ZN6ThreadD1Ev+0x38>
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	efc080e7          	jalr	-260(ra) # 80001918 <_ZdaPv>
    80001a24:	00048513          	mv	a0,s1
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	ec8080e7          	jalr	-312(ra) # 800018f0 <_ZdlPv>
}
    80001a30:	01813083          	ld	ra,24(sp)
    80001a34:	01013403          	ld	s0,16(sp)
    80001a38:	00813483          	ld	s1,8(sp)
    80001a3c:	02010113          	addi	sp,sp,32
    80001a40:	00008067          	ret

0000000080001a44 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	02010413          	addi	s0,sp,32
    80001a58:	00050493          	mv	s1,a0
}
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	f90080e7          	jalr	-112(ra) # 800019ec <_ZN6ThreadD1Ev>
    80001a64:	00048513          	mv	a0,s1
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	e88080e7          	jalr	-376(ra) # 800018f0 <_ZdlPv>
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	02010113          	addi	sp,sp,32
    80001a80:	00008067          	ret

0000000080001a84 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *arg){
    80001a84:	ff010113          	addi	sp,sp,-16
    80001a88:	00113423          	sd	ra,8(sp)
    80001a8c:	00813023          	sd	s0,0(sp)
    80001a90:	01010413          	addi	s0,sp,16
    80001a94:	00008797          	auipc	a5,0x8
    80001a98:	2c478793          	addi	a5,a5,708 # 80009d58 <_ZTV6Thread+0x10>
    80001a9c:	00f53023          	sd	a5,0(a0)
    thread_createNoStart(&myHandle,body,arg);
    80001aa0:	00850513          	addi	a0,a0,8
    80001aa4:	fffff097          	auipc	ra,0xfffff
    80001aa8:	770080e7          	jalr	1904(ra) # 80001214 <_Z20thread_createNoStartPP3TCBPFvPvES2_>
}
    80001aac:	00813083          	ld	ra,8(sp)
    80001ab0:	00013403          	ld	s0,0(sp)
    80001ab4:	01010113          	addi	sp,sp,16
    80001ab8:	00008067          	ret

0000000080001abc <_ZN6Thread5startEv>:
int Thread::start() {
    80001abc:	ff010113          	addi	sp,sp,-16
    80001ac0:	00113423          	sd	ra,8(sp)
    80001ac4:	00813023          	sd	s0,0(sp)
    80001ac8:	01010413          	addi	s0,sp,16
    return myHandle->start();
    80001acc:	00853503          	ld	a0,8(a0)
    80001ad0:	00000097          	auipc	ra,0x0
    80001ad4:	c20080e7          	jalr	-992(ra) # 800016f0 <_ZN3TCB5startEv>
}
    80001ad8:	00813083          	ld	ra,8(sp)
    80001adc:	00013403          	ld	s0,0(sp)
    80001ae0:	01010113          	addi	sp,sp,16
    80001ae4:	00008067          	ret

0000000080001ae8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80001ae8:	ff010113          	addi	sp,sp,-16
    80001aec:	00113423          	sd	ra,8(sp)
    80001af0:	00813023          	sd	s0,0(sp)
    80001af4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001af8:	fffff097          	auipc	ra,0xfffff
    80001afc:	7ec080e7          	jalr	2028(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001b00:	00813083          	ld	ra,8(sp)
    80001b04:	00013403          	ld	s0,0(sp)
    80001b08:	01010113          	addi	sp,sp,16
    80001b0c:	00008067          	ret

0000000080001b10 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001b10:	ff010113          	addi	sp,sp,-16
    80001b14:	00113423          	sd	ra,8(sp)
    80001b18:	00813023          	sd	s0,0(sp)
    80001b1c:	01010413          	addi	s0,sp,16
    80001b20:	00008797          	auipc	a5,0x8
    80001b24:	23878793          	addi	a5,a5,568 # 80009d58 <_ZTV6Thread+0x10>
    80001b28:	00f53023          	sd	a5,0(a0)
    body=runWrapper;
    80001b2c:	00000597          	auipc	a1,0x0
    80001b30:	e1458593          	addi	a1,a1,-492 # 80001940 <_ZN6Thread10runWrapperEPv>
    80001b34:	00b53823          	sd	a1,16(a0)
    thread_createNoStart(&myHandle,runWrapper, this);
    80001b38:	00050613          	mv	a2,a0
    80001b3c:	00850513          	addi	a0,a0,8
    80001b40:	fffff097          	auipc	ra,0xfffff
    80001b44:	6d4080e7          	jalr	1748(ra) # 80001214 <_Z20thread_createNoStartPP3TCBPFvPvES2_>
}
    80001b48:	00813083          	ld	ra,8(sp)
    80001b4c:	00013403          	ld	s0,0(sp)
    80001b50:	01010113          	addi	sp,sp,16
    80001b54:	00008067          	ret

0000000080001b58 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001b58:	ff010113          	addi	sp,sp,-16
    80001b5c:	00113423          	sd	ra,8(sp)
    80001b60:	00813023          	sd	s0,0(sp)
    80001b64:	01010413          	addi	s0,sp,16
    80001b68:	00008797          	auipc	a5,0x8
    80001b6c:	21878793          	addi	a5,a5,536 # 80009d80 <_ZTV9Semaphore+0x10>
    80001b70:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle,init);
    80001b74:	00850513          	addi	a0,a0,8
    80001b78:	fffff097          	auipc	ra,0xfffff
    80001b7c:	790080e7          	jalr	1936(ra) # 80001308 <_Z8sem_openPP3Semj>
}
    80001b80:	00813083          	ld	ra,8(sp)
    80001b84:	00013403          	ld	s0,0(sp)
    80001b88:	01010113          	addi	sp,sp,16
    80001b8c:	00008067          	ret

0000000080001b90 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001b90:	ff010113          	addi	sp,sp,-16
    80001b94:	00113423          	sd	ra,8(sp)
    80001b98:	00813023          	sd	s0,0(sp)
    80001b9c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001ba0:	00853503          	ld	a0,8(a0)
    80001ba4:	fffff097          	auipc	ra,0xfffff
    80001ba8:	7d0080e7          	jalr	2000(ra) # 80001374 <_Z8sem_waitP3Sem>
}
    80001bac:	00813083          	ld	ra,8(sp)
    80001bb0:	00013403          	ld	s0,0(sp)
    80001bb4:	01010113          	addi	sp,sp,16
    80001bb8:	00008067          	ret

0000000080001bbc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001bbc:	ff010113          	addi	sp,sp,-16
    80001bc0:	00113423          	sd	ra,8(sp)
    80001bc4:	00813023          	sd	s0,0(sp)
    80001bc8:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001bcc:	00853503          	ld	a0,8(a0)
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	7d4080e7          	jalr	2004(ra) # 800013a4 <_Z10sem_signalP3Sem>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZN9Semaphore7tryWaitEv>:

int Semaphore::tryWait() {
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    return sem_trywait(myHandle);
    80001bf8:	00853503          	ld	a0,8(a0)
    80001bfc:	fffff097          	auipc	ra,0xfffff
    80001c00:	7d8080e7          	jalr	2008(ra) # 800013d4 <_Z11sem_trywaitP3Sem>
}
    80001c04:	00813083          	ld	ra,8(sp)
    80001c08:	00013403          	ld	s0,0(sp)
    80001c0c:	01010113          	addi	sp,sp,16
    80001c10:	00008067          	ret

0000000080001c14 <_ZN7Console4getcEv>:


char Console::getc() {
    80001c14:	ff010113          	addi	sp,sp,-16
    80001c18:	00113423          	sd	ra,8(sp)
    80001c1c:	00813023          	sd	s0,0(sp)
    80001c20:	01010413          	addi	s0,sp,16
    return ::getc();
    80001c24:	fffff097          	auipc	ra,0xfffff
    80001c28:	7e0080e7          	jalr	2016(ra) # 80001404 <_Z4getcv>
}
    80001c2c:	00813083          	ld	ra,8(sp)
    80001c30:	00013403          	ld	s0,0(sp)
    80001c34:	01010113          	addi	sp,sp,16
    80001c38:	00008067          	ret

0000000080001c3c <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001c3c:	ff010113          	addi	sp,sp,-16
    80001c40:	00113423          	sd	ra,8(sp)
    80001c44:	00813023          	sd	s0,0(sp)
    80001c48:	01010413          	addi	s0,sp,16
    ::putc(c);
    80001c4c:	fffff097          	auipc	ra,0xfffff
    80001c50:	7e4080e7          	jalr	2020(ra) # 80001430 <_Z4putcc>
    80001c54:	00813083          	ld	ra,8(sp)
    80001c58:	00013403          	ld	s0,0(sp)
    80001c5c:	01010113          	addi	sp,sp,16
    80001c60:	00008067          	ret

0000000080001c64 <_ZN6Thread3runEv>:
    static void dispatch();

protected:
    static void runWrapper(void* thread);
    Thread();
    virtual void run(){}
    80001c64:	ff010113          	addi	sp,sp,-16
    80001c68:	00813423          	sd	s0,8(sp)
    80001c6c:	01010413          	addi	s0,sp,16
    80001c70:	00813403          	ld	s0,8(sp)
    80001c74:	01010113          	addi	sp,sp,16
    80001c78:	00008067          	ret

0000000080001c7c <_ZN5Riscv10popSppSpieEv>:

typedef TCB* thread_t;
typedef Sem* sem_t;

void Riscv::popSppSpie()
{
    80001c7c:	ff010113          	addi	sp,sp,-16
    80001c80:	00813423          	sd	s0,8(sp)
    80001c84:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001c88:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001c8c:	10200073          	sret
}
    80001c90:	00813403          	ld	s0,8(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001c9c:	fa010113          	addi	sp,sp,-96
    80001ca0:	04113c23          	sd	ra,88(sp)
    80001ca4:	04813823          	sd	s0,80(sp)
    80001ca8:	04913423          	sd	s1,72(sp)
    80001cac:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001cb0:	142027f3          	csrr	a5,scause
    80001cb4:	faf43c23          	sd	a5,-72(s0)
    return scause;
    80001cb8:	fb843483          	ld	s1,-72(s0)

    uint64 scause = r_scause();
    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001cbc:	ff848713          	addi	a4,s1,-8
    80001cc0:	00100793          	li	a5,1
    80001cc4:	0ae7fe63          	bgeu	a5,a4,80001d80 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        }

        w_sstatus(sstatus);
        w_sepc(sepc);
    }
    else if (scause == 0x8000000000000001UL)
    80001cc8:	fff00793          	li	a5,-1
    80001ccc:	03f79793          	slli	a5,a5,0x3f
    80001cd0:	00178793          	addi	a5,a5,1
    80001cd4:	2cf48463          	beq	s1,a5,80001f9c <_ZN5Riscv20handleSupervisorTrapEv+0x300>
    {
        mc_sip(SIP_SSIP);
    }
    else if (scause == 0x8000000000000009UL)
    80001cd8:	fff00793          	li	a5,-1
    80001cdc:	03f79793          	slli	a5,a5,0x3f
    80001ce0:	00978793          	addi	a5,a5,9
    80001ce4:	2cf48263          	beq	s1,a5,80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x30c>
    {
        console_handler();
    }
    else
    {
        printString("\n----\n");
    80001ce8:	00006517          	auipc	a0,0x6
    80001cec:	33850513          	addi	a0,a0,824 # 80008020 <kvmincrease+0xa40>
    80001cf0:	00002097          	auipc	ra,0x2
    80001cf4:	3d0080e7          	jalr	976(ra) # 800040c0 <_Z11printStringPKc>
        printInt(scause);
    80001cf8:	00000613          	li	a2,0
    80001cfc:	00a00593          	li	a1,10
    80001d00:	0004851b          	sext.w	a0,s1
    80001d04:	00002097          	auipc	ra,0x2
    80001d08:	56c080e7          	jalr	1388(ra) # 80004270 <_Z8printIntiii>
        printString("\n");
    80001d0c:	00006517          	auipc	a0,0x6
    80001d10:	67c50513          	addi	a0,a0,1660 # 80008388 <kvmincrease+0xda8>
    80001d14:	00002097          	auipc	ra,0x2
    80001d18:	3ac080e7          	jalr	940(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d1c:	141027f3          	csrr	a5,sepc
    80001d20:	fcf43c23          	sd	a5,-40(s0)
    return sepc;
    80001d24:	fd843503          	ld	a0,-40(s0)
        printInt(r_sepc());
    80001d28:	00000613          	li	a2,0
    80001d2c:	00a00593          	li	a1,10
    80001d30:	0005051b          	sext.w	a0,a0
    80001d34:	00002097          	auipc	ra,0x2
    80001d38:	53c080e7          	jalr	1340(ra) # 80004270 <_Z8printIntiii>
        printString("\n");
    80001d3c:	00006517          	auipc	a0,0x6
    80001d40:	64c50513          	addi	a0,a0,1612 # 80008388 <kvmincrease+0xda8>
    80001d44:	00002097          	auipc	ra,0x2
    80001d48:	37c080e7          	jalr	892(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ volatile ("csrr %[stval], stval" : [stval] "=r"(stval));
    80001d4c:	143027f3          	csrr	a5,stval
    80001d50:	fcf43823          	sd	a5,-48(s0)
    return stval;
    80001d54:	fd043503          	ld	a0,-48(s0)
        printInt(r_stval());
    80001d58:	00000613          	li	a2,0
    80001d5c:	00a00593          	li	a1,10
    80001d60:	0005051b          	sext.w	a0,a0
    80001d64:	00002097          	auipc	ra,0x2
    80001d68:	50c080e7          	jalr	1292(ra) # 80004270 <_Z8printIntiii>
        printString("\n----\n");
    80001d6c:	00006517          	auipc	a0,0x6
    80001d70:	2b450513          	addi	a0,a0,692 # 80008020 <kvmincrease+0xa40>
    80001d74:	00002097          	auipc	ra,0x2
    80001d78:	34c080e7          	jalr	844(ra) # 800040c0 <_Z11printStringPKc>
    }
    80001d7c:	0d00006f          	j	80001e4c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001d80:	141027f3          	csrr	a5,sepc
    80001d84:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80001d88:	fc843783          	ld	a5,-56(s0)
        uint64 volatile sepc = r_sepc() + 4;
    80001d8c:	00478793          	addi	a5,a5,4
    80001d90:	faf43423          	sd	a5,-88(s0)
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001d94:	100027f3          	csrr	a5,sstatus
    80001d98:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80001d9c:	fc043783          	ld	a5,-64(s0)
        uint64 volatile sstatus = r_sstatus();
    80001da0:	faf43823          	sd	a5,-80(s0)
        __asm__ volatile ("ld %0,80(fp)" : "=r"(number));
    80001da4:	05043783          	ld	a5,80(s0)
        if(number==0x01){
    80001da8:	00100713          	li	a4,1
    80001dac:	08e78063          	beq	a5,a4,80001e2c <_ZN5Riscv20handleSupervisorTrapEv+0x190>
        }else if(number==0x02){
    80001db0:	00200713          	li	a4,2
    80001db4:	0ae78663          	beq	a5,a4,80001e60 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
        }else if(number==0x11){
    80001db8:	01100713          	li	a4,17
    80001dbc:	0ae78c63          	beq	a5,a4,80001e74 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        }else if(number==0x12){
    80001dc0:	01200713          	li	a4,18
    80001dc4:	0ee78263          	beq	a5,a4,80001ea8 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        }else if(number==0x13){
    80001dc8:	01300713          	li	a4,19
    80001dcc:	0ee78663          	beq	a5,a4,80001eb8 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
        }else if(number==0x14){
    80001dd0:	01400713          	li	a4,20
    80001dd4:	0ee78863          	beq	a5,a4,80001ec4 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
        }else if(number==0x15){
    80001dd8:	01500713          	li	a4,21
    80001ddc:	10e78e63          	beq	a5,a4,80001ef8 <_ZN5Riscv20handleSupervisorTrapEv+0x25c>
        }else if(number==0x21){
    80001de0:	02100713          	li	a4,33
    80001de4:	12e78463          	beq	a5,a4,80001f0c <_ZN5Riscv20handleSupervisorTrapEv+0x270>
        }else if(number==0x22){
    80001de8:	02200713          	li	a4,34
    80001dec:	14e78863          	beq	a5,a4,80001f3c <_ZN5Riscv20handleSupervisorTrapEv+0x2a0>
        }else if(number==0x23){
    80001df0:	02300713          	li	a4,35
    80001df4:	14e78e63          	beq	a5,a4,80001f50 <_ZN5Riscv20handleSupervisorTrapEv+0x2b4>
        }else if(number==0x24){
    80001df8:	02400713          	li	a4,36
    80001dfc:	16e78463          	beq	a5,a4,80001f64 <_ZN5Riscv20handleSupervisorTrapEv+0x2c8>
        }else if(number==0x26){
    80001e00:	02600713          	li	a4,38
    80001e04:	16e78a63          	beq	a5,a4,80001f78 <_ZN5Riscv20handleSupervisorTrapEv+0x2dc>
        }else if(number==0x41){
    80001e08:	04100713          	li	a4,65
    80001e0c:	18e78063          	beq	a5,a4,80001f8c <_ZN5Riscv20handleSupervisorTrapEv+0x2f0>
        }else if(number==0x42){
    80001e10:	04200713          	li	a4,66
    80001e14:	02e79463          	bne	a5,a4,80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,88(fp)" : "=r"(c));
    80001e18:	05843503          	ld	a0,88(s0)
            __putc((char)c);
    80001e1c:	0ff57513          	andi	a0,a0,255
    80001e20:	00005097          	auipc	ra,0x5
    80001e24:	6a0080e7          	jalr	1696(ra) # 800074c0 <__putc>
    80001e28:	0140006f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile ("ld %0,88(fp)" : "=r"(size));
    80001e2c:	05843503          	ld	a0,88(s0)
            void* returnValue= __mem_alloc((size_t)size);
    80001e30:	00005097          	auipc	ra,0x5
    80001e34:	538080e7          	jalr	1336(ra) # 80007368 <__mem_alloc>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001e38:	04a43823          	sd	a0,80(s0)
        w_sstatus(sstatus);
    80001e3c:	fb043783          	ld	a5,-80(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus)
{
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001e40:	10079073          	csrw	sstatus,a5
        w_sepc(sepc);
    80001e44:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001e48:	14179073          	csrw	sepc,a5
    80001e4c:	05813083          	ld	ra,88(sp)
    80001e50:	05013403          	ld	s0,80(sp)
    80001e54:	04813483          	ld	s1,72(sp)
    80001e58:	06010113          	addi	sp,sp,96
    80001e5c:	00008067          	ret
            __asm__ volatile ("ld %0,88(fp)" : "=r"(pointer));
    80001e60:	05843503          	ld	a0,88(s0)
            int returnValue= __mem_free((void*)pointer);
    80001e64:	00005097          	auipc	ra,0x5
    80001e68:	438080e7          	jalr	1080(ra) # 8000729c <__mem_free>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001e6c:	04a43823          	sd	a0,80(s0)
    80001e70:	fcdff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,112(fp)" : "=r"(stack_space));
    80001e74:	07043603          	ld	a2,112(s0)
            __asm__ volatile("ld %0,104(fp)" : "=r"(arg));
    80001e78:	06843583          	ld	a1,104(s0)
            __asm__ volatile("ld %0,96(fp)" : "=r"(start_routine));
    80001e7c:	06043503          	ld	a0,96(s0)
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001e80:	05843483          	ld	s1,88(s0)
            thread_t handlee=TCB::createThread((TCB::Body)start_routine,(void*)arg,(void*)stack_space);
    80001e84:	fffff097          	auipc	ra,0xfffff
    80001e88:	6f8080e7          	jalr	1784(ra) # 8000157c <_ZN3TCB12createThreadEPFvPvES0_S0_>
            *handle=handlee;
    80001e8c:	00a4b023          	sd	a0,0(s1)
            if(handlee){
    80001e90:	00050863          	beqz	a0,80001ea0 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
                returnValue=0;
    80001e94:	00000793          	li	a5,0
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001e98:	04f43823          	sd	a5,80(s0)
    80001e9c:	fa1ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                returnValue=-1;
    80001ea0:	fff00793          	li	a5,-1
    80001ea4:	ff5ff06f          	j	80001e98 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            returnValue=TCB::exit();
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	9a0080e7          	jalr	-1632(ra) # 80001848 <_ZN3TCB4exitEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001eb0:	04a43823          	sd	a0,80(s0)
    80001eb4:	f89ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            TCB::dispatch();
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	904080e7          	jalr	-1788(ra) # 800017bc <_ZN3TCB8dispatchEv>
    80001ec0:	f7dff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,112(fp)" : "=r"(stack_space));
    80001ec4:	07043603          	ld	a2,112(s0)
            __asm__ volatile("ld %0,104(fp)" : "=r"(arg));
    80001ec8:	06843583          	ld	a1,104(s0)
            __asm__ volatile("ld %0,96(fp)" : "=r"(start_routine));
    80001ecc:	06043503          	ld	a0,96(s0)
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001ed0:	05843483          	ld	s1,88(s0)
            thread_t handlee=TCB::createThreadNoStart((TCB::Body)start_routine,(void*)arg,(uint64*)stack_space);
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	784080e7          	jalr	1924(ra) # 80001658 <_ZN3TCB19createThreadNoStartEPFvPvES0_S0_>
            *handle=handlee;
    80001edc:	00a4b023          	sd	a0,0(s1)
            if(handlee){
    80001ee0:	00050863          	beqz	a0,80001ef0 <_ZN5Riscv20handleSupervisorTrapEv+0x254>
                returnValue=0;
    80001ee4:	00000793          	li	a5,0
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001ee8:	04f43823          	sd	a5,80(s0)
    80001eec:	f51ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                returnValue=-1;
    80001ef0:	fff00793          	li	a5,-1
    80001ef4:	ff5ff06f          	j	80001ee8 <_ZN5Riscv20handleSupervisorTrapEv+0x24c>
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001ef8:	05843503          	ld	a0,88(s0)
            int returnValue=handlee->start();
    80001efc:	fffff097          	auipc	ra,0xfffff
    80001f00:	7f4080e7          	jalr	2036(ra) # 800016f0 <_ZN3TCB5startEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f04:	04a43823          	sd	a0,80(s0)
    80001f08:	f35ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,96(fp)" : "=r"(init));
    80001f0c:	06043503          	ld	a0,96(s0)
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001f10:	05843483          	ld	s1,88(s0)
            sem_t handlee=Sem::create_sem(init);
    80001f14:	0005051b          	sext.w	a0,a0
    80001f18:	00000097          	auipc	ra,0x0
    80001f1c:	09c080e7          	jalr	156(ra) # 80001fb4 <_ZN3Sem10create_semEi>
            *handle=handlee;
    80001f20:	00a4b023          	sd	a0,0(s1)
            if(handlee){
    80001f24:	00050863          	beqz	a0,80001f34 <_ZN5Riscv20handleSupervisorTrapEv+0x298>
                returnValue=0;
    80001f28:	00000793          	li	a5,0
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f2c:	04f43823          	sd	a5,80(s0)
    80001f30:	f0dff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
                returnValue=-1;
    80001f34:	fff00793          	li	a5,-1
    80001f38:	ff5ff06f          	j	80001f2c <_ZN5Riscv20handleSupervisorTrapEv+0x290>
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001f3c:	05843503          	ld	a0,88(s0)
            int returnValue=handlee->close();
    80001f40:	00000097          	auipc	ra,0x0
    80001f44:	26c080e7          	jalr	620(ra) # 800021ac <_ZN3Sem5closeEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f48:	04a43823          	sd	a0,80(s0)
    80001f4c:	ef1ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001f50:	05843503          	ld	a0,88(s0)
            int returnValue=handlee->wait();
    80001f54:	00000097          	auipc	ra,0x0
    80001f58:	1a8080e7          	jalr	424(ra) # 800020fc <_ZN3Sem4waitEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f5c:	04a43823          	sd	a0,80(s0)
    80001f60:	eddff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001f64:	05843503          	ld	a0,88(s0)
            int returnValue=handlee->signal();
    80001f68:	00000097          	auipc	ra,0x0
    80001f6c:	1ec080e7          	jalr	492(ra) # 80002154 <_ZN3Sem6signalEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f70:	04a43823          	sd	a0,80(s0)
    80001f74:	ec9ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            __asm__ volatile("ld %0,88(fp)" : "=r"(handle));
    80001f78:	05843503          	ld	a0,88(s0)
            int returnValue=handlee->tryWait();
    80001f7c:	00000097          	auipc	ra,0x0
    80001f80:	2c4080e7          	jalr	708(ra) # 80002240 <_ZN3Sem7tryWaitEv>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f84:	04a43823          	sd	a0,80(s0)
    80001f88:	eb5ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
            char returnValue=__getc();
    80001f8c:	00005097          	auipc	ra,0x5
    80001f90:	570080e7          	jalr	1392(ra) # 800074fc <__getc>
            __asm__ volatile("sd %0,80(fp)" : : "r"(returnValue));
    80001f94:	04a43823          	sd	a0,80(s0)
    80001f98:	ea5ff06f          	j	80001e3c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80001f9c:	00200793          	li	a5,2
    80001fa0:	1447b073          	csrc	sip,a5
}
    80001fa4:	ea9ff06f          	j	80001e4c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>
        console_handler();
    80001fa8:	00005097          	auipc	ra,0x5
    80001fac:	58c080e7          	jalr	1420(ra) # 80007534 <console_handler>
    80001fb0:	e9dff06f          	j	80001e4c <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>

0000000080001fb4 <_ZN3Sem10create_semEi>:

#include "../h/sem.hpp"
#include "../h/riscv.hpp"

Sem *Sem::create_sem(int val) {
    80001fb4:	fe010113          	addi	sp,sp,-32
    80001fb8:	00113c23          	sd	ra,24(sp)
    80001fbc:	00813823          	sd	s0,16(sp)
    80001fc0:	00913423          	sd	s1,8(sp)
    80001fc4:	02010413          	addi	s0,sp,32
    80001fc8:	00050493          	mv	s1,a0
    return new Sem(val);
    80001fcc:	02000513          	li	a0,32
    80001fd0:	00000097          	auipc	ra,0x0
    80001fd4:	8d0080e7          	jalr	-1840(ra) # 800018a0 <_Znwm>
#include "scheduler.hpp"
#include "tcb.hpp"

class Sem{
public:
    Sem(uint16 init=1): val(init), terminated(false){}
    80001fd8:	03049493          	slli	s1,s1,0x30
    80001fdc:	0304d493          	srli	s1,s1,0x30
    80001fe0:	00952023          	sw	s1,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001fe4:	00053423          	sd	zero,8(a0)
    80001fe8:	00053823          	sd	zero,16(a0)
    80001fec:	00050c23          	sb	zero,24(a0)
}
    80001ff0:	01813083          	ld	ra,24(sp)
    80001ff4:	01013403          	ld	s0,16(sp)
    80001ff8:	00813483          	ld	s1,8(sp)
    80001ffc:	02010113          	addi	sp,sp,32
    80002000:	00008067          	ret

0000000080002004 <_ZN3Sem5blockEv>:

void Sem::block(){
    80002004:	fe010113          	addi	sp,sp,-32
    80002008:	00113c23          	sd	ra,24(sp)
    8000200c:	00813823          	sd	s0,16(sp)
    80002010:	00913423          	sd	s1,8(sp)
    80002014:	01213023          	sd	s2,0(sp)
    80002018:	02010413          	addi	s0,sp,32
    8000201c:	00050493          	mv	s1,a0
    blocked.addLast(TCB::running);
    80002020:	00008797          	auipc	a5,0x8
    80002024:	eb87b783          	ld	a5,-328(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002028:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    8000202c:	01000513          	li	a0,16
    80002030:	00000097          	auipc	ra,0x0
    80002034:	870080e7          	jalr	-1936(ra) # 800018a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002038:	01253023          	sd	s2,0(a0)
    8000203c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002040:	0104b783          	ld	a5,16(s1)
    80002044:	04078063          	beqz	a5,80002084 <_ZN3Sem5blockEv+0x80>
        {
            tail->next = elem;
    80002048:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000204c:	00a4b823          	sd	a0,16(s1)
    TCB::running->setBlocked(true);
    80002050:	00008797          	auipc	a5,0x8
    80002054:	e887b783          	ld	a5,-376(a5) # 80009ed8 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002058:	0007b783          	ld	a5,0(a5)
    void setBlocked (bool value){ blocked=value;}
    8000205c:	00100713          	li	a4,1
    80002060:	02e784a3          	sb	a4,41(a5)
    TCB::yield();
    80002064:	fffff097          	auipc	ra,0xfffff
    80002068:	6d8080e7          	jalr	1752(ra) # 8000173c <_ZN3TCB5yieldEv>
}
    8000206c:	01813083          	ld	ra,24(sp)
    80002070:	01013403          	ld	s0,16(sp)
    80002074:	00813483          	ld	s1,8(sp)
    80002078:	00013903          	ld	s2,0(sp)
    8000207c:	02010113          	addi	sp,sp,32
    80002080:	00008067          	ret
        } else
        {
            head = tail = elem;
    80002084:	00a4b823          	sd	a0,16(s1)
    80002088:	00a4b423          	sd	a0,8(s1)
    8000208c:	fc5ff06f          	j	80002050 <_ZN3Sem5blockEv+0x4c>

0000000080002090 <_ZN3Sem7unblockEv>:

void Sem::unblock() {
    80002090:	fe010113          	addi	sp,sp,-32
    80002094:	00113c23          	sd	ra,24(sp)
    80002098:	00813823          	sd	s0,16(sp)
    8000209c:	00913423          	sd	s1,8(sp)
    800020a0:	02010413          	addi	s0,sp,32
    800020a4:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800020a8:	00853503          	ld	a0,8(a0)
    800020ac:	04050463          	beqz	a0,800020f4 <_ZN3Sem7unblockEv+0x64>

        Elem *elem = head;
        head = head->next;
    800020b0:	00853703          	ld	a4,8(a0)
    800020b4:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800020b8:	02070a63          	beqz	a4,800020ec <_ZN3Sem7unblockEv+0x5c>

        T *ret = elem->data;
    800020bc:	00053483          	ld	s1,0(a0)
        delete elem;
    800020c0:	00000097          	auipc	ra,0x0
    800020c4:	830080e7          	jalr	-2000(ra) # 800018f0 <_ZdlPv>
    800020c8:	020484a3          	sb	zero,41(s1)
    TCB* thread=blocked.removeFirst();
    thread->setBlocked(false);
    Scheduler::put(thread);
    800020cc:	00048513          	mv	a0,s1
    800020d0:	00000097          	auipc	ra,0x0
    800020d4:	25c080e7          	jalr	604(ra) # 8000232c <_ZN9Scheduler3putEP3TCB>
}
    800020d8:	01813083          	ld	ra,24(sp)
    800020dc:	01013403          	ld	s0,16(sp)
    800020e0:	00813483          	ld	s1,8(sp)
    800020e4:	02010113          	addi	sp,sp,32
    800020e8:	00008067          	ret
        if (!head) { tail = 0; }
    800020ec:	0007b823          	sd	zero,16(a5)
    800020f0:	fcdff06f          	j	800020bc <_ZN3Sem7unblockEv+0x2c>
        if (!head) { return 0; }
    800020f4:	00050493          	mv	s1,a0
    800020f8:	fd1ff06f          	j	800020c8 <_ZN3Sem7unblockEv+0x38>

00000000800020fc <_ZN3Sem4waitEv>:

int Sem::wait() {
    if(terminated)return -1;
    800020fc:	01854783          	lbu	a5,24(a0)
    80002100:	04079663          	bnez	a5,8000214c <_ZN3Sem4waitEv+0x50>
    if(--val<0)block();
    80002104:	00052783          	lw	a5,0(a0)
    80002108:	fff7879b          	addiw	a5,a5,-1
    8000210c:	00f52023          	sw	a5,0(a0)
    80002110:	02079713          	slli	a4,a5,0x20
    80002114:	00074663          	bltz	a4,80002120 <_ZN3Sem4waitEv+0x24>
    return 0;
    80002118:	00000513          	li	a0,0
}
    8000211c:	00008067          	ret
int Sem::wait() {
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00113423          	sd	ra,8(sp)
    80002128:	00813023          	sd	s0,0(sp)
    8000212c:	01010413          	addi	s0,sp,16
    if(--val<0)block();
    80002130:	00000097          	auipc	ra,0x0
    80002134:	ed4080e7          	jalr	-300(ra) # 80002004 <_ZN3Sem5blockEv>
    return 0;
    80002138:	00000513          	li	a0,0
}
    8000213c:	00813083          	ld	ra,8(sp)
    80002140:	00013403          	ld	s0,0(sp)
    80002144:	01010113          	addi	sp,sp,16
    80002148:	00008067          	ret
    if(terminated)return -1;
    8000214c:	fff00513          	li	a0,-1
    80002150:	00008067          	ret

0000000080002154 <_ZN3Sem6signalEv>:

int Sem::signal() {
    if(terminated) return -1;
    80002154:	01854783          	lbu	a5,24(a0)
    80002158:	04079663          	bnez	a5,800021a4 <_ZN3Sem6signalEv+0x50>
    if(++val<=0)unblock();
    8000215c:	00052783          	lw	a5,0(a0)
    80002160:	0017879b          	addiw	a5,a5,1
    80002164:	0007871b          	sext.w	a4,a5
    80002168:	00f52023          	sw	a5,0(a0)
    8000216c:	00e05663          	blez	a4,80002178 <_ZN3Sem6signalEv+0x24>
    return 0;
    80002170:	00000513          	li	a0,0
}
    80002174:	00008067          	ret
int Sem::signal() {
    80002178:	ff010113          	addi	sp,sp,-16
    8000217c:	00113423          	sd	ra,8(sp)
    80002180:	00813023          	sd	s0,0(sp)
    80002184:	01010413          	addi	s0,sp,16
    if(++val<=0)unblock();
    80002188:	00000097          	auipc	ra,0x0
    8000218c:	f08080e7          	jalr	-248(ra) # 80002090 <_ZN3Sem7unblockEv>
    return 0;
    80002190:	00000513          	li	a0,0
}
    80002194:	00813083          	ld	ra,8(sp)
    80002198:	00013403          	ld	s0,0(sp)
    8000219c:	01010113          	addi	sp,sp,16
    800021a0:	00008067          	ret
    if(terminated) return -1;
    800021a4:	fff00513          	li	a0,-1
    800021a8:	00008067          	ret

00000000800021ac <_ZN3Sem5closeEv>:

int Sem::close() {
    800021ac:	fe010113          	addi	sp,sp,-32
    800021b0:	00113c23          	sd	ra,24(sp)
    800021b4:	00813823          	sd	s0,16(sp)
    800021b8:	00913423          	sd	s1,8(sp)
    800021bc:	02010413          	addi	s0,sp,32
    800021c0:	00050493          	mv	s1,a0
    if(terminated)return -1;
    800021c4:	01854783          	lbu	a5,24(a0)
    800021c8:	00078c63          	beqz	a5,800021e0 <_ZN3Sem5closeEv+0x34>
    800021cc:	fff00513          	li	a0,-1
    800021d0:	05c0006f          	j	8000222c <_ZN3Sem5closeEv+0x80>
        if (!head) { tail = 0; }
    800021d4:	0004b823          	sd	zero,16(s1)
        delete elem;
    800021d8:	fffff097          	auipc	ra,0xfffff
    800021dc:	718080e7          	jalr	1816(ra) # 800018f0 <_ZdlPv>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800021e0:	0084b783          	ld	a5,8(s1)
    800021e4:	02078e63          	beqz	a5,80002220 <_ZN3Sem5closeEv+0x74>
        return head->data;
    800021e8:	0007b783          	ld	a5,0(a5)

    while(blocked.peekFirst() != nullptr){
    800021ec:	02078a63          	beqz	a5,80002220 <_ZN3Sem5closeEv+0x74>
    800021f0:	020784a3          	sb	zero,41(a5)
        if (!head) { return 0; }
    800021f4:	0084b503          	ld	a0,8(s1)
    800021f8:	00050463          	beqz	a0,80002200 <_ZN3Sem5closeEv+0x54>
        return head->data;
    800021fc:	00053503          	ld	a0,0(a0)
        blocked.peekFirst()->setBlocked(false);
        Scheduler::put(blocked.peekFirst());
    80002200:	00000097          	auipc	ra,0x0
    80002204:	12c080e7          	jalr	300(ra) # 8000232c <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80002208:	0084b503          	ld	a0,8(s1)
    8000220c:	fc050ae3          	beqz	a0,800021e0 <_ZN3Sem5closeEv+0x34>
        head = head->next;
    80002210:	00853783          	ld	a5,8(a0)
    80002214:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80002218:	fc0790e3          	bnez	a5,800021d8 <_ZN3Sem5closeEv+0x2c>
    8000221c:	fb9ff06f          	j	800021d4 <_ZN3Sem5closeEv+0x28>
        blocked.removeFirst();
    }
    terminated=true;
    80002220:	00100793          	li	a5,1
    80002224:	00f48c23          	sb	a5,24(s1)
    return 0;
    80002228:	00000513          	li	a0,0

}
    8000222c:	01813083          	ld	ra,24(sp)
    80002230:	01013403          	ld	s0,16(sp)
    80002234:	00813483          	ld	s1,8(sp)
    80002238:	02010113          	addi	sp,sp,32
    8000223c:	00008067          	ret

0000000080002240 <_ZN3Sem7tryWaitEv>:

int Sem::tryWait() {
    80002240:	ff010113          	addi	sp,sp,-16
    80002244:	00813423          	sd	s0,8(sp)
    80002248:	01010413          	addi	s0,sp,16
    if(terminated) return -1;
    8000224c:	01854783          	lbu	a5,24(a0)
    80002250:	02079263          	bnez	a5,80002274 <_ZN3Sem7tryWaitEv+0x34>
    int returnValue;
    if(val-1<0) returnValue=0;
    80002254:	00052783          	lw	a5,0(a0)
    80002258:	02f05263          	blez	a5,8000227c <_ZN3Sem7tryWaitEv+0x3c>
    else {
        returnValue=1;
        val--;
    8000225c:	fff7879b          	addiw	a5,a5,-1
    80002260:	00f52023          	sw	a5,0(a0)
        returnValue=1;
    80002264:	00100513          	li	a0,1
    }
    return returnValue;
    80002268:	00813403          	ld	s0,8(sp)
    8000226c:	01010113          	addi	sp,sp,16
    80002270:	00008067          	ret
    if(terminated) return -1;
    80002274:	fff00513          	li	a0,-1
    80002278:	ff1ff06f          	j	80002268 <_ZN3Sem7tryWaitEv+0x28>
    if(val-1<0) returnValue=0;
    8000227c:	00000513          	li	a0,0
    80002280:	fe9ff06f          	j	80002268 <_ZN3Sem7tryWaitEv+0x28>

0000000080002284 <_Z41__static_initialization_and_destruction_0ii>:
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *tcb){
    readyThreadQueue.addLast(tcb);
}
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00813423          	sd	s0,8(sp)
    8000228c:	01010413          	addi	s0,sp,16
    80002290:	00100793          	li	a5,1
    80002294:	00f50863          	beq	a0,a5,800022a4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002298:	00813403          	ld	s0,8(sp)
    8000229c:	01010113          	addi	sp,sp,16
    800022a0:	00008067          	ret
    800022a4:	000107b7          	lui	a5,0x10
    800022a8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800022ac:	fef596e3          	bne	a1,a5,80002298 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800022b0:	00008797          	auipc	a5,0x8
    800022b4:	c8878793          	addi	a5,a5,-888 # 80009f38 <_ZN9Scheduler16readyThreadQueueE>
    800022b8:	0007b023          	sd	zero,0(a5)
    800022bc:	0007b423          	sd	zero,8(a5)
    800022c0:	fd9ff06f          	j	80002298 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800022c4 <_ZN9Scheduler3getEv>:
TCB *Scheduler::get() {
    800022c4:	fe010113          	addi	sp,sp,-32
    800022c8:	00113c23          	sd	ra,24(sp)
    800022cc:	00813823          	sd	s0,16(sp)
    800022d0:	00913423          	sd	s1,8(sp)
    800022d4:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800022d8:	00008517          	auipc	a0,0x8
    800022dc:	c6053503          	ld	a0,-928(a0) # 80009f38 <_ZN9Scheduler16readyThreadQueueE>
    800022e0:	04050263          	beqz	a0,80002324 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800022e4:	00853783          	ld	a5,8(a0)
    800022e8:	00008717          	auipc	a4,0x8
    800022ec:	c4f73823          	sd	a5,-944(a4) # 80009f38 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800022f0:	02078463          	beqz	a5,80002318 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800022f4:	00053483          	ld	s1,0(a0)
        delete elem;
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	5f8080e7          	jalr	1528(ra) # 800018f0 <_ZdlPv>
}
    80002300:	00048513          	mv	a0,s1
    80002304:	01813083          	ld	ra,24(sp)
    80002308:	01013403          	ld	s0,16(sp)
    8000230c:	00813483          	ld	s1,8(sp)
    80002310:	02010113          	addi	sp,sp,32
    80002314:	00008067          	ret
        if (!head) { tail = 0; }
    80002318:	00008797          	auipc	a5,0x8
    8000231c:	c207b423          	sd	zero,-984(a5) # 80009f40 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002320:	fd5ff06f          	j	800022f4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002324:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002328:	fd9ff06f          	j	80002300 <_ZN9Scheduler3getEv+0x3c>

000000008000232c <_ZN9Scheduler3putEP3TCB>:
void Scheduler::put(TCB *tcb){
    8000232c:	fe010113          	addi	sp,sp,-32
    80002330:	00113c23          	sd	ra,24(sp)
    80002334:	00813823          	sd	s0,16(sp)
    80002338:	00913423          	sd	s1,8(sp)
    8000233c:	02010413          	addi	s0,sp,32
    80002340:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002344:	01000513          	li	a0,16
    80002348:	fffff097          	auipc	ra,0xfffff
    8000234c:	558080e7          	jalr	1368(ra) # 800018a0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002350:	00953023          	sd	s1,0(a0)
    80002354:	00053423          	sd	zero,8(a0)
        if (tail)
    80002358:	00008797          	auipc	a5,0x8
    8000235c:	be87b783          	ld	a5,-1048(a5) # 80009f40 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002360:	02078263          	beqz	a5,80002384 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002364:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002368:	00008797          	auipc	a5,0x8
    8000236c:	bca7bc23          	sd	a0,-1064(a5) # 80009f40 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002370:	01813083          	ld	ra,24(sp)
    80002374:	01013403          	ld	s0,16(sp)
    80002378:	00813483          	ld	s1,8(sp)
    8000237c:	02010113          	addi	sp,sp,32
    80002380:	00008067          	ret
            head = tail = elem;
    80002384:	00008797          	auipc	a5,0x8
    80002388:	bb478793          	addi	a5,a5,-1100 # 80009f38 <_ZN9Scheduler16readyThreadQueueE>
    8000238c:	00a7b423          	sd	a0,8(a5)
    80002390:	00a7b023          	sd	a0,0(a5)
    80002394:	fddff06f          	j	80002370 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002398 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    800023a8:	000105b7          	lui	a1,0x10
    800023ac:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800023b0:	00100513          	li	a0,1
    800023b4:	00000097          	auipc	ra,0x0
    800023b8:	ed0080e7          	jalr	-304(ra) # 80002284 <_Z41__static_initialization_and_destruction_0ii>
    800023bc:	00813083          	ld	ra,8(sp)
    800023c0:	00013403          	ld	s0,0(sp)
    800023c4:	01010113          	addi	sp,sp,16
    800023c8:	00008067          	ret

00000000800023cc <_ZL16producerKeyboardPv>:
    sem_t wait;
};

static volatile int threadEnd = 0;

static void producerKeyboard(void *arg) {
    800023cc:	fe010113          	addi	sp,sp,-32
    800023d0:	00113c23          	sd	ra,24(sp)
    800023d4:	00813823          	sd	s0,16(sp)
    800023d8:	00913423          	sd	s1,8(sp)
    800023dc:	01213023          	sd	s2,0(sp)
    800023e0:	02010413          	addi	s0,sp,32
    800023e4:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800023e8:	00000913          	li	s2,0
    800023ec:	00c0006f          	j	800023f8 <_ZL16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	ef4080e7          	jalr	-268(ra) # 800012e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    800023f8:	fffff097          	auipc	ra,0xfffff
    800023fc:	00c080e7          	jalr	12(ra) # 80001404 <_Z4getcv>
    80002400:	0005059b          	sext.w	a1,a0
    80002404:	01b00793          	li	a5,27
    80002408:	02f58a63          	beq	a1,a5,8000243c <_ZL16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000240c:	0084b503          	ld	a0,8(s1)
    80002410:	00003097          	auipc	ra,0x3
    80002414:	b44080e7          	jalr	-1212(ra) # 80004f54 <_ZN6Buffer3putEi>
        i++;
    80002418:	0019071b          	addiw	a4,s2,1
    8000241c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80002420:	0004a683          	lw	a3,0(s1)
    80002424:	0026979b          	slliw	a5,a3,0x2
    80002428:	00d787bb          	addw	a5,a5,a3
    8000242c:	0017979b          	slliw	a5,a5,0x1
    80002430:	02f767bb          	remw	a5,a4,a5
    80002434:	fc0792e3          	bnez	a5,800023f8 <_ZL16producerKeyboardPv+0x2c>
    80002438:	fb9ff06f          	j	800023f0 <_ZL16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    8000243c:	00100793          	li	a5,1
    80002440:	00008717          	auipc	a4,0x8
    80002444:	b0f72423          	sw	a5,-1272(a4) # 80009f48 <_ZL9threadEnd>
    data->buffer->put('!');
    80002448:	02100593          	li	a1,33
    8000244c:	0084b503          	ld	a0,8(s1)
    80002450:	00003097          	auipc	ra,0x3
    80002454:	b04080e7          	jalr	-1276(ra) # 80004f54 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80002458:	0104b503          	ld	a0,16(s1)
    8000245c:	fffff097          	auipc	ra,0xfffff
    80002460:	f48080e7          	jalr	-184(ra) # 800013a4 <_Z10sem_signalP3Sem>
}
    80002464:	01813083          	ld	ra,24(sp)
    80002468:	01013403          	ld	s0,16(sp)
    8000246c:	00813483          	ld	s1,8(sp)
    80002470:	00013903          	ld	s2,0(sp)
    80002474:	02010113          	addi	sp,sp,32
    80002478:	00008067          	ret

000000008000247c <_ZL8producerPv>:

static void producer(void *arg) {
    8000247c:	fe010113          	addi	sp,sp,-32
    80002480:	00113c23          	sd	ra,24(sp)
    80002484:	00813823          	sd	s0,16(sp)
    80002488:	00913423          	sd	s1,8(sp)
    8000248c:	01213023          	sd	s2,0(sp)
    80002490:	02010413          	addi	s0,sp,32
    80002494:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002498:	00000913          	li	s2,0
    8000249c:	00c0006f          	j	800024a8 <_ZL8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800024a0:	fffff097          	auipc	ra,0xfffff
    800024a4:	e44080e7          	jalr	-444(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800024a8:	00008797          	auipc	a5,0x8
    800024ac:	aa07a783          	lw	a5,-1376(a5) # 80009f48 <_ZL9threadEnd>
    800024b0:	02079e63          	bnez	a5,800024ec <_ZL8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800024b4:	0004a583          	lw	a1,0(s1)
    800024b8:	0305859b          	addiw	a1,a1,48
    800024bc:	0084b503          	ld	a0,8(s1)
    800024c0:	00003097          	auipc	ra,0x3
    800024c4:	a94080e7          	jalr	-1388(ra) # 80004f54 <_ZN6Buffer3putEi>
        i++;
    800024c8:	0019071b          	addiw	a4,s2,1
    800024cc:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800024d0:	0004a683          	lw	a3,0(s1)
    800024d4:	0026979b          	slliw	a5,a3,0x2
    800024d8:	00d787bb          	addw	a5,a5,a3
    800024dc:	0017979b          	slliw	a5,a5,0x1
    800024e0:	02f767bb          	remw	a5,a4,a5
    800024e4:	fc0792e3          	bnez	a5,800024a8 <_ZL8producerPv+0x2c>
    800024e8:	fb9ff06f          	j	800024a0 <_ZL8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800024ec:	0104b503          	ld	a0,16(s1)
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	eb4080e7          	jalr	-332(ra) # 800013a4 <_Z10sem_signalP3Sem>
}
    800024f8:	01813083          	ld	ra,24(sp)
    800024fc:	01013403          	ld	s0,16(sp)
    80002500:	00813483          	ld	s1,8(sp)
    80002504:	00013903          	ld	s2,0(sp)
    80002508:	02010113          	addi	sp,sp,32
    8000250c:	00008067          	ret

0000000080002510 <_ZL8consumerPv>:

static void consumer(void *arg) {
    80002510:	fd010113          	addi	sp,sp,-48
    80002514:	02113423          	sd	ra,40(sp)
    80002518:	02813023          	sd	s0,32(sp)
    8000251c:	00913c23          	sd	s1,24(sp)
    80002520:	01213823          	sd	s2,16(sp)
    80002524:	01313423          	sd	s3,8(sp)
    80002528:	03010413          	addi	s0,sp,48
    8000252c:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80002530:	00000993          	li	s3,0
    80002534:	01c0006f          	j	80002550 <_ZL8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80002538:	fffff097          	auipc	ra,0xfffff
    8000253c:	dac080e7          	jalr	-596(ra) # 800012e4 <_Z15thread_dispatchv>
    80002540:	0500006f          	j	80002590 <_ZL8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80002544:	00a00513          	li	a0,10
    80002548:	fffff097          	auipc	ra,0xfffff
    8000254c:	ee8080e7          	jalr	-280(ra) # 80001430 <_Z4putcc>
    while (!threadEnd) {
    80002550:	00008797          	auipc	a5,0x8
    80002554:	9f87a783          	lw	a5,-1544(a5) # 80009f48 <_ZL9threadEnd>
    80002558:	06079063          	bnez	a5,800025b8 <_ZL8consumerPv+0xa8>
        int key = data->buffer->get();
    8000255c:	00893503          	ld	a0,8(s2)
    80002560:	00003097          	auipc	ra,0x3
    80002564:	a84080e7          	jalr	-1404(ra) # 80004fe4 <_ZN6Buffer3getEv>
        i++;
    80002568:	0019849b          	addiw	s1,s3,1
    8000256c:	0004899b          	sext.w	s3,s1
        putc(key);
    80002570:	0ff57513          	andi	a0,a0,255
    80002574:	fffff097          	auipc	ra,0xfffff
    80002578:	ebc080e7          	jalr	-324(ra) # 80001430 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    8000257c:	00092703          	lw	a4,0(s2)
    80002580:	0027179b          	slliw	a5,a4,0x2
    80002584:	00e787bb          	addw	a5,a5,a4
    80002588:	02f4e7bb          	remw	a5,s1,a5
    8000258c:	fa0786e3          	beqz	a5,80002538 <_ZL8consumerPv+0x28>
        if (i % 80 == 0) {
    80002590:	05000793          	li	a5,80
    80002594:	02f4e4bb          	remw	s1,s1,a5
    80002598:	fa049ce3          	bnez	s1,80002550 <_ZL8consumerPv+0x40>
    8000259c:	fa9ff06f          	j	80002544 <_ZL8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800025a0:	00893503          	ld	a0,8(s2)
    800025a4:	00003097          	auipc	ra,0x3
    800025a8:	a40080e7          	jalr	-1472(ra) # 80004fe4 <_ZN6Buffer3getEv>
        putc(key);
    800025ac:	0ff57513          	andi	a0,a0,255
    800025b0:	fffff097          	auipc	ra,0xfffff
    800025b4:	e80080e7          	jalr	-384(ra) # 80001430 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800025b8:	00893503          	ld	a0,8(s2)
    800025bc:	00003097          	auipc	ra,0x3
    800025c0:	ab4080e7          	jalr	-1356(ra) # 80005070 <_ZN6Buffer6getCntEv>
    800025c4:	fca04ee3          	bgtz	a0,800025a0 <_ZL8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800025c8:	01093503          	ld	a0,16(s2)
    800025cc:	fffff097          	auipc	ra,0xfffff
    800025d0:	dd8080e7          	jalr	-552(ra) # 800013a4 <_Z10sem_signalP3Sem>
}
    800025d4:	02813083          	ld	ra,40(sp)
    800025d8:	02013403          	ld	s0,32(sp)
    800025dc:	01813483          	ld	s1,24(sp)
    800025e0:	01013903          	ld	s2,16(sp)
    800025e4:	00813983          	ld	s3,8(sp)
    800025e8:	03010113          	addi	sp,sp,48
    800025ec:	00008067          	ret

00000000800025f0 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800025f0:	f9010113          	addi	sp,sp,-112
    800025f4:	06113423          	sd	ra,104(sp)
    800025f8:	06813023          	sd	s0,96(sp)
    800025fc:	04913c23          	sd	s1,88(sp)
    80002600:	05213823          	sd	s2,80(sp)
    80002604:	05313423          	sd	s3,72(sp)
    80002608:	05413023          	sd	s4,64(sp)
    8000260c:	03513c23          	sd	s5,56(sp)
    80002610:	03613823          	sd	s6,48(sp)
    80002614:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80002618:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000261c:	00006517          	auipc	a0,0x6
    80002620:	a0c50513          	addi	a0,a0,-1524 # 80008028 <kvmincrease+0xa48>
    80002624:	00002097          	auipc	ra,0x2
    80002628:	a9c080e7          	jalr	-1380(ra) # 800040c0 <_Z11printStringPKc>
    getString(input, 30);
    8000262c:	01e00593          	li	a1,30
    80002630:	fa040493          	addi	s1,s0,-96
    80002634:	00048513          	mv	a0,s1
    80002638:	00002097          	auipc	ra,0x2
    8000263c:	b10080e7          	jalr	-1264(ra) # 80004148 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80002640:	00048513          	mv	a0,s1
    80002644:	00002097          	auipc	ra,0x2
    80002648:	bdc080e7          	jalr	-1060(ra) # 80004220 <_Z11stringToIntPKc>
    8000264c:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80002650:	00006517          	auipc	a0,0x6
    80002654:	9f850513          	addi	a0,a0,-1544 # 80008048 <kvmincrease+0xa68>
    80002658:	00002097          	auipc	ra,0x2
    8000265c:	a68080e7          	jalr	-1432(ra) # 800040c0 <_Z11printStringPKc>
    getString(input, 30);
    80002660:	01e00593          	li	a1,30
    80002664:	00048513          	mv	a0,s1
    80002668:	00002097          	auipc	ra,0x2
    8000266c:	ae0080e7          	jalr	-1312(ra) # 80004148 <_Z9getStringPci>
    n = stringToInt(input);
    80002670:	00048513          	mv	a0,s1
    80002674:	00002097          	auipc	ra,0x2
    80002678:	bac080e7          	jalr	-1108(ra) # 80004220 <_Z11stringToIntPKc>
    8000267c:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80002680:	00006517          	auipc	a0,0x6
    80002684:	9e850513          	addi	a0,a0,-1560 # 80008068 <kvmincrease+0xa88>
    80002688:	00002097          	auipc	ra,0x2
    8000268c:	a38080e7          	jalr	-1480(ra) # 800040c0 <_Z11printStringPKc>
    80002690:	00000613          	li	a2,0
    80002694:	00a00593          	li	a1,10
    80002698:	00090513          	mv	a0,s2
    8000269c:	00002097          	auipc	ra,0x2
    800026a0:	bd4080e7          	jalr	-1068(ra) # 80004270 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800026a4:	00006517          	auipc	a0,0x6
    800026a8:	9dc50513          	addi	a0,a0,-1572 # 80008080 <kvmincrease+0xaa0>
    800026ac:	00002097          	auipc	ra,0x2
    800026b0:	a14080e7          	jalr	-1516(ra) # 800040c0 <_Z11printStringPKc>
    800026b4:	00000613          	li	a2,0
    800026b8:	00a00593          	li	a1,10
    800026bc:	00048513          	mv	a0,s1
    800026c0:	00002097          	auipc	ra,0x2
    800026c4:	bb0080e7          	jalr	-1104(ra) # 80004270 <_Z8printIntiii>
    printString(".\n");
    800026c8:	00006517          	auipc	a0,0x6
    800026cc:	95050513          	addi	a0,a0,-1712 # 80008018 <kvmincrease+0xa38>
    800026d0:	00002097          	auipc	ra,0x2
    800026d4:	9f0080e7          	jalr	-1552(ra) # 800040c0 <_Z11printStringPKc>
    if(threadNum > n) {
    800026d8:	0324c463          	blt	s1,s2,80002700 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800026dc:	03205c63          	blez	s2,80002714 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800026e0:	03800513          	li	a0,56
    800026e4:	fffff097          	auipc	ra,0xfffff
    800026e8:	1bc080e7          	jalr	444(ra) # 800018a0 <_Znwm>
    800026ec:	00050a13          	mv	s4,a0
    800026f0:	00048593          	mv	a1,s1
    800026f4:	00002097          	auipc	ra,0x2
    800026f8:	7c4080e7          	jalr	1988(ra) # 80004eb8 <_ZN6BufferC1Ei>
    800026fc:	0300006f          	j	8000272c <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80002700:	00006517          	auipc	a0,0x6
    80002704:	99850513          	addi	a0,a0,-1640 # 80008098 <kvmincrease+0xab8>
    80002708:	00002097          	auipc	ra,0x2
    8000270c:	9b8080e7          	jalr	-1608(ra) # 800040c0 <_Z11printStringPKc>
        return;
    80002710:	0140006f          	j	80002724 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80002714:	00006517          	auipc	a0,0x6
    80002718:	9c450513          	addi	a0,a0,-1596 # 800080d8 <kvmincrease+0xaf8>
    8000271c:	00002097          	auipc	ra,0x2
    80002720:	9a4080e7          	jalr	-1628(ra) # 800040c0 <_Z11printStringPKc>
        return;
    80002724:	000b0113          	mv	sp,s6
    80002728:	1500006f          	j	80002878 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    8000272c:	00000593          	li	a1,0
    80002730:	00008517          	auipc	a0,0x8
    80002734:	82050513          	addi	a0,a0,-2016 # 80009f50 <_ZL10waitForAll>
    80002738:	fffff097          	auipc	ra,0xfffff
    8000273c:	bd0080e7          	jalr	-1072(ra) # 80001308 <_Z8sem_openPP3Semj>
    thread_t threads[threadNum];
    80002740:	00391793          	slli	a5,s2,0x3
    80002744:	00f78793          	addi	a5,a5,15
    80002748:	ff07f793          	andi	a5,a5,-16
    8000274c:	40f10133          	sub	sp,sp,a5
    80002750:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80002754:	0019071b          	addiw	a4,s2,1
    80002758:	00171793          	slli	a5,a4,0x1
    8000275c:	00e787b3          	add	a5,a5,a4
    80002760:	00379793          	slli	a5,a5,0x3
    80002764:	00f78793          	addi	a5,a5,15
    80002768:	ff07f793          	andi	a5,a5,-16
    8000276c:	40f10133          	sub	sp,sp,a5
    80002770:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80002774:	00191613          	slli	a2,s2,0x1
    80002778:	012607b3          	add	a5,a2,s2
    8000277c:	00379793          	slli	a5,a5,0x3
    80002780:	00f987b3          	add	a5,s3,a5
    80002784:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80002788:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    8000278c:	00007717          	auipc	a4,0x7
    80002790:	7c473703          	ld	a4,1988(a4) # 80009f50 <_ZL10waitForAll>
    80002794:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80002798:	00078613          	mv	a2,a5
    8000279c:	00000597          	auipc	a1,0x0
    800027a0:	d7458593          	addi	a1,a1,-652 # 80002510 <_ZL8consumerPv>
    800027a4:	f9840513          	addi	a0,s0,-104
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	9f8080e7          	jalr	-1544(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800027b0:	00000493          	li	s1,0
    800027b4:	0280006f          	j	800027dc <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800027b8:	00000597          	auipc	a1,0x0
    800027bc:	c1458593          	addi	a1,a1,-1004 # 800023cc <_ZL16producerKeyboardPv>
                      data + i);
    800027c0:	00179613          	slli	a2,a5,0x1
    800027c4:	00f60633          	add	a2,a2,a5
    800027c8:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800027cc:	00c98633          	add	a2,s3,a2
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	9d0080e7          	jalr	-1584(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800027d8:	0014849b          	addiw	s1,s1,1
    800027dc:	0524d263          	bge	s1,s2,80002820 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800027e0:	00149793          	slli	a5,s1,0x1
    800027e4:	009787b3          	add	a5,a5,s1
    800027e8:	00379793          	slli	a5,a5,0x3
    800027ec:	00f987b3          	add	a5,s3,a5
    800027f0:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    800027f4:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    800027f8:	00007717          	auipc	a4,0x7
    800027fc:	75873703          	ld	a4,1880(a4) # 80009f50 <_ZL10waitForAll>
    80002800:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80002804:	00048793          	mv	a5,s1
    80002808:	00349513          	slli	a0,s1,0x3
    8000280c:	00aa8533          	add	a0,s5,a0
    80002810:	fa9054e3          	blez	s1,800027b8 <_Z22producerConsumer_C_APIv+0x1c8>
    80002814:	00000597          	auipc	a1,0x0
    80002818:	c6858593          	addi	a1,a1,-920 # 8000247c <_ZL8producerPv>
    8000281c:	fa5ff06f          	j	800027c0 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80002820:	fffff097          	auipc	ra,0xfffff
    80002824:	ac4080e7          	jalr	-1340(ra) # 800012e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80002828:	00000493          	li	s1,0
    8000282c:	00994e63          	blt	s2,s1,80002848 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80002830:	00007517          	auipc	a0,0x7
    80002834:	72053503          	ld	a0,1824(a0) # 80009f50 <_ZL10waitForAll>
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	b3c080e7          	jalr	-1220(ra) # 80001374 <_Z8sem_waitP3Sem>
    for (int i = 0; i <= threadNum; i++) {
    80002840:	0014849b          	addiw	s1,s1,1
    80002844:	fe9ff06f          	j	8000282c <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80002848:	00007517          	auipc	a0,0x7
    8000284c:	70853503          	ld	a0,1800(a0) # 80009f50 <_ZL10waitForAll>
    80002850:	fffff097          	auipc	ra,0xfffff
    80002854:	af4080e7          	jalr	-1292(ra) # 80001344 <_Z9sem_closeP3Sem>
    delete buffer;
    80002858:	000a0e63          	beqz	s4,80002874 <_Z22producerConsumer_C_APIv+0x284>
    8000285c:	000a0513          	mv	a0,s4
    80002860:	00003097          	auipc	ra,0x3
    80002864:	898080e7          	jalr	-1896(ra) # 800050f8 <_ZN6BufferD1Ev>
    80002868:	000a0513          	mv	a0,s4
    8000286c:	fffff097          	auipc	ra,0xfffff
    80002870:	084080e7          	jalr	132(ra) # 800018f0 <_ZdlPv>
    80002874:	000b0113          	mv	sp,s6

}
    80002878:	f9040113          	addi	sp,s0,-112
    8000287c:	06813083          	ld	ra,104(sp)
    80002880:	06013403          	ld	s0,96(sp)
    80002884:	05813483          	ld	s1,88(sp)
    80002888:	05013903          	ld	s2,80(sp)
    8000288c:	04813983          	ld	s3,72(sp)
    80002890:	04013a03          	ld	s4,64(sp)
    80002894:	03813a83          	ld	s5,56(sp)
    80002898:	03013b03          	ld	s6,48(sp)
    8000289c:	07010113          	addi	sp,sp,112
    800028a0:	00008067          	ret
    800028a4:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    800028a8:	000a0513          	mv	a0,s4
    800028ac:	fffff097          	auipc	ra,0xfffff
    800028b0:	044080e7          	jalr	68(ra) # 800018f0 <_ZdlPv>
    800028b4:	00048513          	mv	a0,s1
    800028b8:	00008097          	auipc	ra,0x8
    800028bc:	790080e7          	jalr	1936(ra) # 8000b048 <_Unwind_Resume>

00000000800028c0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800028c0:	fe010113          	addi	sp,sp,-32
    800028c4:	00113c23          	sd	ra,24(sp)
    800028c8:	00813823          	sd	s0,16(sp)
    800028cc:	00913423          	sd	s1,8(sp)
    800028d0:	01213023          	sd	s2,0(sp)
    800028d4:	02010413          	addi	s0,sp,32
    800028d8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800028dc:	00100793          	li	a5,1
    800028e0:	02a7f863          	bgeu	a5,a0,80002910 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800028e4:	00a00793          	li	a5,10
    800028e8:	02f577b3          	remu	a5,a0,a5
    800028ec:	02078e63          	beqz	a5,80002928 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800028f0:	fff48513          	addi	a0,s1,-1
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	fcc080e7          	jalr	-52(ra) # 800028c0 <_ZL9fibonaccim>
    800028fc:	00050913          	mv	s2,a0
    80002900:	ffe48513          	addi	a0,s1,-2
    80002904:	00000097          	auipc	ra,0x0
    80002908:	fbc080e7          	jalr	-68(ra) # 800028c0 <_ZL9fibonaccim>
    8000290c:	00a90533          	add	a0,s2,a0
}
    80002910:	01813083          	ld	ra,24(sp)
    80002914:	01013403          	ld	s0,16(sp)
    80002918:	00813483          	ld	s1,8(sp)
    8000291c:	00013903          	ld	s2,0(sp)
    80002920:	02010113          	addi	sp,sp,32
    80002924:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80002928:	fffff097          	auipc	ra,0xfffff
    8000292c:	9bc080e7          	jalr	-1604(ra) # 800012e4 <_Z15thread_dispatchv>
    80002930:	fc1ff06f          	j	800028f0 <_ZL9fibonaccim+0x30>

0000000080002934 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80002934:	fe010113          	addi	sp,sp,-32
    80002938:	00113c23          	sd	ra,24(sp)
    8000293c:	00813823          	sd	s0,16(sp)
    80002940:	00913423          	sd	s1,8(sp)
    80002944:	01213023          	sd	s2,0(sp)
    80002948:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000294c:	00000913          	li	s2,0
    80002950:	0380006f          	j	80002988 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002954:	fffff097          	auipc	ra,0xfffff
    80002958:	990080e7          	jalr	-1648(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000295c:	00148493          	addi	s1,s1,1
    80002960:	000027b7          	lui	a5,0x2
    80002964:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002968:	0097ee63          	bltu	a5,s1,80002984 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000296c:	00000713          	li	a4,0
    80002970:	000077b7          	lui	a5,0x7
    80002974:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002978:	fce7eee3          	bltu	a5,a4,80002954 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000297c:	00170713          	addi	a4,a4,1
    80002980:	ff1ff06f          	j	80002970 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80002984:	00190913          	addi	s2,s2,1
    80002988:	00900793          	li	a5,9
    8000298c:	0527e063          	bltu	a5,s2,800029cc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80002990:	00005517          	auipc	a0,0x5
    80002994:	77850513          	addi	a0,a0,1912 # 80008108 <kvmincrease+0xb28>
    80002998:	00001097          	auipc	ra,0x1
    8000299c:	728080e7          	jalr	1832(ra) # 800040c0 <_Z11printStringPKc>
    800029a0:	00000613          	li	a2,0
    800029a4:	00a00593          	li	a1,10
    800029a8:	0009051b          	sext.w	a0,s2
    800029ac:	00002097          	auipc	ra,0x2
    800029b0:	8c4080e7          	jalr	-1852(ra) # 80004270 <_Z8printIntiii>
    800029b4:	00006517          	auipc	a0,0x6
    800029b8:	9d450513          	addi	a0,a0,-1580 # 80008388 <kvmincrease+0xda8>
    800029bc:	00001097          	auipc	ra,0x1
    800029c0:	704080e7          	jalr	1796(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800029c4:	00000493          	li	s1,0
    800029c8:	f99ff06f          	j	80002960 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800029cc:	00005517          	auipc	a0,0x5
    800029d0:	74450513          	addi	a0,a0,1860 # 80008110 <kvmincrease+0xb30>
    800029d4:	00001097          	auipc	ra,0x1
    800029d8:	6ec080e7          	jalr	1772(ra) # 800040c0 <_Z11printStringPKc>
    finishedA = true;
    800029dc:	00100793          	li	a5,1
    800029e0:	00007717          	auipc	a4,0x7
    800029e4:	56f70c23          	sb	a5,1400(a4) # 80009f58 <_ZL9finishedA>
}
    800029e8:	01813083          	ld	ra,24(sp)
    800029ec:	01013403          	ld	s0,16(sp)
    800029f0:	00813483          	ld	s1,8(sp)
    800029f4:	00013903          	ld	s2,0(sp)
    800029f8:	02010113          	addi	sp,sp,32
    800029fc:	00008067          	ret

0000000080002a00 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80002a00:	fe010113          	addi	sp,sp,-32
    80002a04:	00113c23          	sd	ra,24(sp)
    80002a08:	00813823          	sd	s0,16(sp)
    80002a0c:	00913423          	sd	s1,8(sp)
    80002a10:	01213023          	sd	s2,0(sp)
    80002a14:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80002a18:	00000913          	li	s2,0
    80002a1c:	0380006f          	j	80002a54 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80002a20:	fffff097          	auipc	ra,0xfffff
    80002a24:	8c4080e7          	jalr	-1852(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80002a28:	00148493          	addi	s1,s1,1
    80002a2c:	000027b7          	lui	a5,0x2
    80002a30:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002a34:	0097ee63          	bltu	a5,s1,80002a50 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002a38:	00000713          	li	a4,0
    80002a3c:	000077b7          	lui	a5,0x7
    80002a40:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002a44:	fce7eee3          	bltu	a5,a4,80002a20 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80002a48:	00170713          	addi	a4,a4,1
    80002a4c:	ff1ff06f          	j	80002a3c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80002a50:	00190913          	addi	s2,s2,1
    80002a54:	00f00793          	li	a5,15
    80002a58:	0527e063          	bltu	a5,s2,80002a98 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80002a5c:	00005517          	auipc	a0,0x5
    80002a60:	6c450513          	addi	a0,a0,1732 # 80008120 <kvmincrease+0xb40>
    80002a64:	00001097          	auipc	ra,0x1
    80002a68:	65c080e7          	jalr	1628(ra) # 800040c0 <_Z11printStringPKc>
    80002a6c:	00000613          	li	a2,0
    80002a70:	00a00593          	li	a1,10
    80002a74:	0009051b          	sext.w	a0,s2
    80002a78:	00001097          	auipc	ra,0x1
    80002a7c:	7f8080e7          	jalr	2040(ra) # 80004270 <_Z8printIntiii>
    80002a80:	00006517          	auipc	a0,0x6
    80002a84:	90850513          	addi	a0,a0,-1784 # 80008388 <kvmincrease+0xda8>
    80002a88:	00001097          	auipc	ra,0x1
    80002a8c:	638080e7          	jalr	1592(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002a90:	00000493          	li	s1,0
    80002a94:	f99ff06f          	j	80002a2c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80002a98:	00005517          	auipc	a0,0x5
    80002a9c:	69050513          	addi	a0,a0,1680 # 80008128 <kvmincrease+0xb48>
    80002aa0:	00001097          	auipc	ra,0x1
    80002aa4:	620080e7          	jalr	1568(ra) # 800040c0 <_Z11printStringPKc>
    finishedB = true;
    80002aa8:	00100793          	li	a5,1
    80002aac:	00007717          	auipc	a4,0x7
    80002ab0:	4af706a3          	sb	a5,1197(a4) # 80009f59 <_ZL9finishedB>
    thread_dispatch();
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	830080e7          	jalr	-2000(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002abc:	01813083          	ld	ra,24(sp)
    80002ac0:	01013403          	ld	s0,16(sp)
    80002ac4:	00813483          	ld	s1,8(sp)
    80002ac8:	00013903          	ld	s2,0(sp)
    80002acc:	02010113          	addi	sp,sp,32
    80002ad0:	00008067          	ret

0000000080002ad4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80002ad4:	fe010113          	addi	sp,sp,-32
    80002ad8:	00113c23          	sd	ra,24(sp)
    80002adc:	00813823          	sd	s0,16(sp)
    80002ae0:	00913423          	sd	s1,8(sp)
    80002ae4:	01213023          	sd	s2,0(sp)
    80002ae8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80002aec:	00000493          	li	s1,0
    80002af0:	0400006f          	j	80002b30 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002af4:	00005517          	auipc	a0,0x5
    80002af8:	64450513          	addi	a0,a0,1604 # 80008138 <kvmincrease+0xb58>
    80002afc:	00001097          	auipc	ra,0x1
    80002b00:	5c4080e7          	jalr	1476(ra) # 800040c0 <_Z11printStringPKc>
    80002b04:	00000613          	li	a2,0
    80002b08:	00a00593          	li	a1,10
    80002b0c:	00048513          	mv	a0,s1
    80002b10:	00001097          	auipc	ra,0x1
    80002b14:	760080e7          	jalr	1888(ra) # 80004270 <_Z8printIntiii>
    80002b18:	00006517          	auipc	a0,0x6
    80002b1c:	87050513          	addi	a0,a0,-1936 # 80008388 <kvmincrease+0xda8>
    80002b20:	00001097          	auipc	ra,0x1
    80002b24:	5a0080e7          	jalr	1440(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80002b28:	0014849b          	addiw	s1,s1,1
    80002b2c:	0ff4f493          	andi	s1,s1,255
    80002b30:	00200793          	li	a5,2
    80002b34:	fc97f0e3          	bgeu	a5,s1,80002af4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80002b38:	00005517          	auipc	a0,0x5
    80002b3c:	60850513          	addi	a0,a0,1544 # 80008140 <kvmincrease+0xb60>
    80002b40:	00001097          	auipc	ra,0x1
    80002b44:	580080e7          	jalr	1408(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80002b48:	00700313          	li	t1,7
    thread_dispatch();
    80002b4c:	ffffe097          	auipc	ra,0xffffe
    80002b50:	798080e7          	jalr	1944(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80002b54:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80002b58:	00005517          	auipc	a0,0x5
    80002b5c:	5f850513          	addi	a0,a0,1528 # 80008150 <kvmincrease+0xb70>
    80002b60:	00001097          	auipc	ra,0x1
    80002b64:	560080e7          	jalr	1376(ra) # 800040c0 <_Z11printStringPKc>
    80002b68:	00000613          	li	a2,0
    80002b6c:	00a00593          	li	a1,10
    80002b70:	0009051b          	sext.w	a0,s2
    80002b74:	00001097          	auipc	ra,0x1
    80002b78:	6fc080e7          	jalr	1788(ra) # 80004270 <_Z8printIntiii>
    80002b7c:	00006517          	auipc	a0,0x6
    80002b80:	80c50513          	addi	a0,a0,-2036 # 80008388 <kvmincrease+0xda8>
    80002b84:	00001097          	auipc	ra,0x1
    80002b88:	53c080e7          	jalr	1340(ra) # 800040c0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80002b8c:	00c00513          	li	a0,12
    80002b90:	00000097          	auipc	ra,0x0
    80002b94:	d30080e7          	jalr	-720(ra) # 800028c0 <_ZL9fibonaccim>
    80002b98:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80002b9c:	00005517          	auipc	a0,0x5
    80002ba0:	5bc50513          	addi	a0,a0,1468 # 80008158 <kvmincrease+0xb78>
    80002ba4:	00001097          	auipc	ra,0x1
    80002ba8:	51c080e7          	jalr	1308(ra) # 800040c0 <_Z11printStringPKc>
    80002bac:	00000613          	li	a2,0
    80002bb0:	00a00593          	li	a1,10
    80002bb4:	0009051b          	sext.w	a0,s2
    80002bb8:	00001097          	auipc	ra,0x1
    80002bbc:	6b8080e7          	jalr	1720(ra) # 80004270 <_Z8printIntiii>
    80002bc0:	00005517          	auipc	a0,0x5
    80002bc4:	7c850513          	addi	a0,a0,1992 # 80008388 <kvmincrease+0xda8>
    80002bc8:	00001097          	auipc	ra,0x1
    80002bcc:	4f8080e7          	jalr	1272(ra) # 800040c0 <_Z11printStringPKc>
    80002bd0:	0400006f          	j	80002c10 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80002bd4:	00005517          	auipc	a0,0x5
    80002bd8:	56450513          	addi	a0,a0,1380 # 80008138 <kvmincrease+0xb58>
    80002bdc:	00001097          	auipc	ra,0x1
    80002be0:	4e4080e7          	jalr	1252(ra) # 800040c0 <_Z11printStringPKc>
    80002be4:	00000613          	li	a2,0
    80002be8:	00a00593          	li	a1,10
    80002bec:	00048513          	mv	a0,s1
    80002bf0:	00001097          	auipc	ra,0x1
    80002bf4:	680080e7          	jalr	1664(ra) # 80004270 <_Z8printIntiii>
    80002bf8:	00005517          	auipc	a0,0x5
    80002bfc:	79050513          	addi	a0,a0,1936 # 80008388 <kvmincrease+0xda8>
    80002c00:	00001097          	auipc	ra,0x1
    80002c04:	4c0080e7          	jalr	1216(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80002c08:	0014849b          	addiw	s1,s1,1
    80002c0c:	0ff4f493          	andi	s1,s1,255
    80002c10:	00500793          	li	a5,5
    80002c14:	fc97f0e3          	bgeu	a5,s1,80002bd4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80002c18:	00005517          	auipc	a0,0x5
    80002c1c:	4f850513          	addi	a0,a0,1272 # 80008110 <kvmincrease+0xb30>
    80002c20:	00001097          	auipc	ra,0x1
    80002c24:	4a0080e7          	jalr	1184(ra) # 800040c0 <_Z11printStringPKc>
    finishedC = true;
    80002c28:	00100793          	li	a5,1
    80002c2c:	00007717          	auipc	a4,0x7
    80002c30:	32f70723          	sb	a5,814(a4) # 80009f5a <_ZL9finishedC>
    thread_dispatch();
    80002c34:	ffffe097          	auipc	ra,0xffffe
    80002c38:	6b0080e7          	jalr	1712(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002c3c:	01813083          	ld	ra,24(sp)
    80002c40:	01013403          	ld	s0,16(sp)
    80002c44:	00813483          	ld	s1,8(sp)
    80002c48:	00013903          	ld	s2,0(sp)
    80002c4c:	02010113          	addi	sp,sp,32
    80002c50:	00008067          	ret

0000000080002c54 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80002c54:	fe010113          	addi	sp,sp,-32
    80002c58:	00113c23          	sd	ra,24(sp)
    80002c5c:	00813823          	sd	s0,16(sp)
    80002c60:	00913423          	sd	s1,8(sp)
    80002c64:	01213023          	sd	s2,0(sp)
    80002c68:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80002c6c:	00a00493          	li	s1,10
    80002c70:	0400006f          	j	80002cb0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002c74:	00005517          	auipc	a0,0x5
    80002c78:	4f450513          	addi	a0,a0,1268 # 80008168 <kvmincrease+0xb88>
    80002c7c:	00001097          	auipc	ra,0x1
    80002c80:	444080e7          	jalr	1092(ra) # 800040c0 <_Z11printStringPKc>
    80002c84:	00000613          	li	a2,0
    80002c88:	00a00593          	li	a1,10
    80002c8c:	00048513          	mv	a0,s1
    80002c90:	00001097          	auipc	ra,0x1
    80002c94:	5e0080e7          	jalr	1504(ra) # 80004270 <_Z8printIntiii>
    80002c98:	00005517          	auipc	a0,0x5
    80002c9c:	6f050513          	addi	a0,a0,1776 # 80008388 <kvmincrease+0xda8>
    80002ca0:	00001097          	auipc	ra,0x1
    80002ca4:	420080e7          	jalr	1056(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80002ca8:	0014849b          	addiw	s1,s1,1
    80002cac:	0ff4f493          	andi	s1,s1,255
    80002cb0:	00c00793          	li	a5,12
    80002cb4:	fc97f0e3          	bgeu	a5,s1,80002c74 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80002cb8:	00005517          	auipc	a0,0x5
    80002cbc:	4b850513          	addi	a0,a0,1208 # 80008170 <kvmincrease+0xb90>
    80002cc0:	00001097          	auipc	ra,0x1
    80002cc4:	400080e7          	jalr	1024(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80002cc8:	00500313          	li	t1,5
    thread_dispatch();
    80002ccc:	ffffe097          	auipc	ra,0xffffe
    80002cd0:	618080e7          	jalr	1560(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80002cd4:	01000513          	li	a0,16
    80002cd8:	00000097          	auipc	ra,0x0
    80002cdc:	be8080e7          	jalr	-1048(ra) # 800028c0 <_ZL9fibonaccim>
    80002ce0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80002ce4:	00005517          	auipc	a0,0x5
    80002ce8:	49c50513          	addi	a0,a0,1180 # 80008180 <kvmincrease+0xba0>
    80002cec:	00001097          	auipc	ra,0x1
    80002cf0:	3d4080e7          	jalr	980(ra) # 800040c0 <_Z11printStringPKc>
    80002cf4:	00000613          	li	a2,0
    80002cf8:	00a00593          	li	a1,10
    80002cfc:	0009051b          	sext.w	a0,s2
    80002d00:	00001097          	auipc	ra,0x1
    80002d04:	570080e7          	jalr	1392(ra) # 80004270 <_Z8printIntiii>
    80002d08:	00005517          	auipc	a0,0x5
    80002d0c:	68050513          	addi	a0,a0,1664 # 80008388 <kvmincrease+0xda8>
    80002d10:	00001097          	auipc	ra,0x1
    80002d14:	3b0080e7          	jalr	944(ra) # 800040c0 <_Z11printStringPKc>
    80002d18:	0400006f          	j	80002d58 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80002d1c:	00005517          	auipc	a0,0x5
    80002d20:	44c50513          	addi	a0,a0,1100 # 80008168 <kvmincrease+0xb88>
    80002d24:	00001097          	auipc	ra,0x1
    80002d28:	39c080e7          	jalr	924(ra) # 800040c0 <_Z11printStringPKc>
    80002d2c:	00000613          	li	a2,0
    80002d30:	00a00593          	li	a1,10
    80002d34:	00048513          	mv	a0,s1
    80002d38:	00001097          	auipc	ra,0x1
    80002d3c:	538080e7          	jalr	1336(ra) # 80004270 <_Z8printIntiii>
    80002d40:	00005517          	auipc	a0,0x5
    80002d44:	64850513          	addi	a0,a0,1608 # 80008388 <kvmincrease+0xda8>
    80002d48:	00001097          	auipc	ra,0x1
    80002d4c:	378080e7          	jalr	888(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80002d50:	0014849b          	addiw	s1,s1,1
    80002d54:	0ff4f493          	andi	s1,s1,255
    80002d58:	00f00793          	li	a5,15
    80002d5c:	fc97f0e3          	bgeu	a5,s1,80002d1c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80002d60:	00005517          	auipc	a0,0x5
    80002d64:	43050513          	addi	a0,a0,1072 # 80008190 <kvmincrease+0xbb0>
    80002d68:	00001097          	auipc	ra,0x1
    80002d6c:	358080e7          	jalr	856(ra) # 800040c0 <_Z11printStringPKc>
    finishedD = true;
    80002d70:	00100793          	li	a5,1
    80002d74:	00007717          	auipc	a4,0x7
    80002d78:	1ef703a3          	sb	a5,487(a4) # 80009f5b <_ZL9finishedD>
    thread_dispatch();
    80002d7c:	ffffe097          	auipc	ra,0xffffe
    80002d80:	568080e7          	jalr	1384(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002d84:	01813083          	ld	ra,24(sp)
    80002d88:	01013403          	ld	s0,16(sp)
    80002d8c:	00813483          	ld	s1,8(sp)
    80002d90:	00013903          	ld	s2,0(sp)
    80002d94:	02010113          	addi	sp,sp,32
    80002d98:	00008067          	ret

0000000080002d9c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80002d9c:	fc010113          	addi	sp,sp,-64
    80002da0:	02113c23          	sd	ra,56(sp)
    80002da4:	02813823          	sd	s0,48(sp)
    80002da8:	02913423          	sd	s1,40(sp)
    80002dac:	03213023          	sd	s2,32(sp)
    80002db0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80002db4:	02000513          	li	a0,32
    80002db8:	fffff097          	auipc	ra,0xfffff
    80002dbc:	ae8080e7          	jalr	-1304(ra) # 800018a0 <_Znwm>
    80002dc0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80002dc4:	fffff097          	auipc	ra,0xfffff
    80002dc8:	d4c080e7          	jalr	-692(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80002dcc:	00007797          	auipc	a5,0x7
    80002dd0:	fd478793          	addi	a5,a5,-44 # 80009da0 <_ZTV7WorkerA+0x10>
    80002dd4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80002dd8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80002ddc:	00005517          	auipc	a0,0x5
    80002de0:	3c450513          	addi	a0,a0,964 # 800081a0 <kvmincrease+0xbc0>
    80002de4:	00001097          	auipc	ra,0x1
    80002de8:	2dc080e7          	jalr	732(ra) # 800040c0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80002dec:	02000513          	li	a0,32
    80002df0:	fffff097          	auipc	ra,0xfffff
    80002df4:	ab0080e7          	jalr	-1360(ra) # 800018a0 <_Znwm>
    80002df8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80002dfc:	fffff097          	auipc	ra,0xfffff
    80002e00:	d14080e7          	jalr	-748(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80002e04:	00007797          	auipc	a5,0x7
    80002e08:	fc478793          	addi	a5,a5,-60 # 80009dc8 <_ZTV7WorkerB+0x10>
    80002e0c:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80002e10:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80002e14:	00005517          	auipc	a0,0x5
    80002e18:	3a450513          	addi	a0,a0,932 # 800081b8 <kvmincrease+0xbd8>
    80002e1c:	00001097          	auipc	ra,0x1
    80002e20:	2a4080e7          	jalr	676(ra) # 800040c0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80002e24:	02000513          	li	a0,32
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	a78080e7          	jalr	-1416(ra) # 800018a0 <_Znwm>
    80002e30:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80002e34:	fffff097          	auipc	ra,0xfffff
    80002e38:	cdc080e7          	jalr	-804(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80002e3c:	00007797          	auipc	a5,0x7
    80002e40:	fb478793          	addi	a5,a5,-76 # 80009df0 <_ZTV7WorkerC+0x10>
    80002e44:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80002e48:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80002e4c:	00005517          	auipc	a0,0x5
    80002e50:	38450513          	addi	a0,a0,900 # 800081d0 <kvmincrease+0xbf0>
    80002e54:	00001097          	auipc	ra,0x1
    80002e58:	26c080e7          	jalr	620(ra) # 800040c0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80002e5c:	02000513          	li	a0,32
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	a40080e7          	jalr	-1472(ra) # 800018a0 <_Znwm>
    80002e68:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80002e6c:	fffff097          	auipc	ra,0xfffff
    80002e70:	ca4080e7          	jalr	-860(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80002e74:	00007797          	auipc	a5,0x7
    80002e78:	fa478793          	addi	a5,a5,-92 # 80009e18 <_ZTV7WorkerD+0x10>
    80002e7c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80002e80:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80002e84:	00005517          	auipc	a0,0x5
    80002e88:	36450513          	addi	a0,a0,868 # 800081e8 <kvmincrease+0xc08>
    80002e8c:	00001097          	auipc	ra,0x1
    80002e90:	234080e7          	jalr	564(ra) # 800040c0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80002e94:	00000493          	li	s1,0
    80002e98:	00300793          	li	a5,3
    80002e9c:	0297c663          	blt	a5,s1,80002ec8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80002ea0:	00349793          	slli	a5,s1,0x3
    80002ea4:	fe040713          	addi	a4,s0,-32
    80002ea8:	00f707b3          	add	a5,a4,a5
    80002eac:	fe07b503          	ld	a0,-32(a5)
    80002eb0:	fffff097          	auipc	ra,0xfffff
    80002eb4:	c0c080e7          	jalr	-1012(ra) # 80001abc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80002eb8:	0014849b          	addiw	s1,s1,1
    80002ebc:	fddff06f          	j	80002e98 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	c28080e7          	jalr	-984(ra) # 80001ae8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80002ec8:	00007797          	auipc	a5,0x7
    80002ecc:	0907c783          	lbu	a5,144(a5) # 80009f58 <_ZL9finishedA>
    80002ed0:	fe0788e3          	beqz	a5,80002ec0 <_Z20Threads_CPP_API_testv+0x124>
    80002ed4:	00007797          	auipc	a5,0x7
    80002ed8:	0857c783          	lbu	a5,133(a5) # 80009f59 <_ZL9finishedB>
    80002edc:	fe0782e3          	beqz	a5,80002ec0 <_Z20Threads_CPP_API_testv+0x124>
    80002ee0:	00007797          	auipc	a5,0x7
    80002ee4:	07a7c783          	lbu	a5,122(a5) # 80009f5a <_ZL9finishedC>
    80002ee8:	fc078ce3          	beqz	a5,80002ec0 <_Z20Threads_CPP_API_testv+0x124>
    80002eec:	00007797          	auipc	a5,0x7
    80002ef0:	06f7c783          	lbu	a5,111(a5) # 80009f5b <_ZL9finishedD>
    80002ef4:	fc0786e3          	beqz	a5,80002ec0 <_Z20Threads_CPP_API_testv+0x124>
    80002ef8:	fc040493          	addi	s1,s0,-64
    80002efc:	0080006f          	j	80002f04 <_Z20Threads_CPP_API_testv+0x168>
    }

    for (auto thread: threads) { delete thread; }
    80002f00:	00848493          	addi	s1,s1,8
    80002f04:	fe040793          	addi	a5,s0,-32
    80002f08:	08f48663          	beq	s1,a5,80002f94 <_Z20Threads_CPP_API_testv+0x1f8>
    80002f0c:	0004b503          	ld	a0,0(s1)
    80002f10:	fe0508e3          	beqz	a0,80002f00 <_Z20Threads_CPP_API_testv+0x164>
    80002f14:	00053783          	ld	a5,0(a0)
    80002f18:	0087b783          	ld	a5,8(a5)
    80002f1c:	000780e7          	jalr	a5
    80002f20:	fe1ff06f          	j	80002f00 <_Z20Threads_CPP_API_testv+0x164>
    80002f24:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80002f28:	00048513          	mv	a0,s1
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	9c4080e7          	jalr	-1596(ra) # 800018f0 <_ZdlPv>
    80002f34:	00090513          	mv	a0,s2
    80002f38:	00008097          	auipc	ra,0x8
    80002f3c:	110080e7          	jalr	272(ra) # 8000b048 <_Unwind_Resume>
    80002f40:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80002f44:	00048513          	mv	a0,s1
    80002f48:	fffff097          	auipc	ra,0xfffff
    80002f4c:	9a8080e7          	jalr	-1624(ra) # 800018f0 <_ZdlPv>
    80002f50:	00090513          	mv	a0,s2
    80002f54:	00008097          	auipc	ra,0x8
    80002f58:	0f4080e7          	jalr	244(ra) # 8000b048 <_Unwind_Resume>
    80002f5c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80002f60:	00048513          	mv	a0,s1
    80002f64:	fffff097          	auipc	ra,0xfffff
    80002f68:	98c080e7          	jalr	-1652(ra) # 800018f0 <_ZdlPv>
    80002f6c:	00090513          	mv	a0,s2
    80002f70:	00008097          	auipc	ra,0x8
    80002f74:	0d8080e7          	jalr	216(ra) # 8000b048 <_Unwind_Resume>
    80002f78:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80002f7c:	00048513          	mv	a0,s1
    80002f80:	fffff097          	auipc	ra,0xfffff
    80002f84:	970080e7          	jalr	-1680(ra) # 800018f0 <_ZdlPv>
    80002f88:	00090513          	mv	a0,s2
    80002f8c:	00008097          	auipc	ra,0x8
    80002f90:	0bc080e7          	jalr	188(ra) # 8000b048 <_Unwind_Resume>
}
    80002f94:	03813083          	ld	ra,56(sp)
    80002f98:	03013403          	ld	s0,48(sp)
    80002f9c:	02813483          	ld	s1,40(sp)
    80002fa0:	02013903          	ld	s2,32(sp)
    80002fa4:	04010113          	addi	sp,sp,64
    80002fa8:	00008067          	ret

0000000080002fac <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00113423          	sd	ra,8(sp)
    80002fb4:	00813023          	sd	s0,0(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    80002fbc:	00007797          	auipc	a5,0x7
    80002fc0:	de478793          	addi	a5,a5,-540 # 80009da0 <_ZTV7WorkerA+0x10>
    80002fc4:	00f53023          	sd	a5,0(a0)
    80002fc8:	fffff097          	auipc	ra,0xfffff
    80002fcc:	a24080e7          	jalr	-1500(ra) # 800019ec <_ZN6ThreadD1Ev>
    80002fd0:	00813083          	ld	ra,8(sp)
    80002fd4:	00013403          	ld	s0,0(sp)
    80002fd8:	01010113          	addi	sp,sp,16
    80002fdc:	00008067          	ret

0000000080002fe0 <_ZN7WorkerAD0Ev>:
    80002fe0:	fe010113          	addi	sp,sp,-32
    80002fe4:	00113c23          	sd	ra,24(sp)
    80002fe8:	00813823          	sd	s0,16(sp)
    80002fec:	00913423          	sd	s1,8(sp)
    80002ff0:	02010413          	addi	s0,sp,32
    80002ff4:	00050493          	mv	s1,a0
    80002ff8:	00007797          	auipc	a5,0x7
    80002ffc:	da878793          	addi	a5,a5,-600 # 80009da0 <_ZTV7WorkerA+0x10>
    80003000:	00f53023          	sd	a5,0(a0)
    80003004:	fffff097          	auipc	ra,0xfffff
    80003008:	9e8080e7          	jalr	-1560(ra) # 800019ec <_ZN6ThreadD1Ev>
    8000300c:	00048513          	mv	a0,s1
    80003010:	fffff097          	auipc	ra,0xfffff
    80003014:	8e0080e7          	jalr	-1824(ra) # 800018f0 <_ZdlPv>
    80003018:	01813083          	ld	ra,24(sp)
    8000301c:	01013403          	ld	s0,16(sp)
    80003020:	00813483          	ld	s1,8(sp)
    80003024:	02010113          	addi	sp,sp,32
    80003028:	00008067          	ret

000000008000302c <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    8000302c:	ff010113          	addi	sp,sp,-16
    80003030:	00113423          	sd	ra,8(sp)
    80003034:	00813023          	sd	s0,0(sp)
    80003038:	01010413          	addi	s0,sp,16
    8000303c:	00007797          	auipc	a5,0x7
    80003040:	d8c78793          	addi	a5,a5,-628 # 80009dc8 <_ZTV7WorkerB+0x10>
    80003044:	00f53023          	sd	a5,0(a0)
    80003048:	fffff097          	auipc	ra,0xfffff
    8000304c:	9a4080e7          	jalr	-1628(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003050:	00813083          	ld	ra,8(sp)
    80003054:	00013403          	ld	s0,0(sp)
    80003058:	01010113          	addi	sp,sp,16
    8000305c:	00008067          	ret

0000000080003060 <_ZN7WorkerBD0Ev>:
    80003060:	fe010113          	addi	sp,sp,-32
    80003064:	00113c23          	sd	ra,24(sp)
    80003068:	00813823          	sd	s0,16(sp)
    8000306c:	00913423          	sd	s1,8(sp)
    80003070:	02010413          	addi	s0,sp,32
    80003074:	00050493          	mv	s1,a0
    80003078:	00007797          	auipc	a5,0x7
    8000307c:	d5078793          	addi	a5,a5,-688 # 80009dc8 <_ZTV7WorkerB+0x10>
    80003080:	00f53023          	sd	a5,0(a0)
    80003084:	fffff097          	auipc	ra,0xfffff
    80003088:	968080e7          	jalr	-1688(ra) # 800019ec <_ZN6ThreadD1Ev>
    8000308c:	00048513          	mv	a0,s1
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	860080e7          	jalr	-1952(ra) # 800018f0 <_ZdlPv>
    80003098:	01813083          	ld	ra,24(sp)
    8000309c:	01013403          	ld	s0,16(sp)
    800030a0:	00813483          	ld	s1,8(sp)
    800030a4:	02010113          	addi	sp,sp,32
    800030a8:	00008067          	ret

00000000800030ac <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    800030ac:	ff010113          	addi	sp,sp,-16
    800030b0:	00113423          	sd	ra,8(sp)
    800030b4:	00813023          	sd	s0,0(sp)
    800030b8:	01010413          	addi	s0,sp,16
    800030bc:	00007797          	auipc	a5,0x7
    800030c0:	d3478793          	addi	a5,a5,-716 # 80009df0 <_ZTV7WorkerC+0x10>
    800030c4:	00f53023          	sd	a5,0(a0)
    800030c8:	fffff097          	auipc	ra,0xfffff
    800030cc:	924080e7          	jalr	-1756(ra) # 800019ec <_ZN6ThreadD1Ev>
    800030d0:	00813083          	ld	ra,8(sp)
    800030d4:	00013403          	ld	s0,0(sp)
    800030d8:	01010113          	addi	sp,sp,16
    800030dc:	00008067          	ret

00000000800030e0 <_ZN7WorkerCD0Ev>:
    800030e0:	fe010113          	addi	sp,sp,-32
    800030e4:	00113c23          	sd	ra,24(sp)
    800030e8:	00813823          	sd	s0,16(sp)
    800030ec:	00913423          	sd	s1,8(sp)
    800030f0:	02010413          	addi	s0,sp,32
    800030f4:	00050493          	mv	s1,a0
    800030f8:	00007797          	auipc	a5,0x7
    800030fc:	cf878793          	addi	a5,a5,-776 # 80009df0 <_ZTV7WorkerC+0x10>
    80003100:	00f53023          	sd	a5,0(a0)
    80003104:	fffff097          	auipc	ra,0xfffff
    80003108:	8e8080e7          	jalr	-1816(ra) # 800019ec <_ZN6ThreadD1Ev>
    8000310c:	00048513          	mv	a0,s1
    80003110:	ffffe097          	auipc	ra,0xffffe
    80003114:	7e0080e7          	jalr	2016(ra) # 800018f0 <_ZdlPv>
    80003118:	01813083          	ld	ra,24(sp)
    8000311c:	01013403          	ld	s0,16(sp)
    80003120:	00813483          	ld	s1,8(sp)
    80003124:	02010113          	addi	sp,sp,32
    80003128:	00008067          	ret

000000008000312c <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    8000312c:	ff010113          	addi	sp,sp,-16
    80003130:	00113423          	sd	ra,8(sp)
    80003134:	00813023          	sd	s0,0(sp)
    80003138:	01010413          	addi	s0,sp,16
    8000313c:	00007797          	auipc	a5,0x7
    80003140:	cdc78793          	addi	a5,a5,-804 # 80009e18 <_ZTV7WorkerD+0x10>
    80003144:	00f53023          	sd	a5,0(a0)
    80003148:	fffff097          	auipc	ra,0xfffff
    8000314c:	8a4080e7          	jalr	-1884(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003150:	00813083          	ld	ra,8(sp)
    80003154:	00013403          	ld	s0,0(sp)
    80003158:	01010113          	addi	sp,sp,16
    8000315c:	00008067          	ret

0000000080003160 <_ZN7WorkerDD0Ev>:
    80003160:	fe010113          	addi	sp,sp,-32
    80003164:	00113c23          	sd	ra,24(sp)
    80003168:	00813823          	sd	s0,16(sp)
    8000316c:	00913423          	sd	s1,8(sp)
    80003170:	02010413          	addi	s0,sp,32
    80003174:	00050493          	mv	s1,a0
    80003178:	00007797          	auipc	a5,0x7
    8000317c:	ca078793          	addi	a5,a5,-864 # 80009e18 <_ZTV7WorkerD+0x10>
    80003180:	00f53023          	sd	a5,0(a0)
    80003184:	fffff097          	auipc	ra,0xfffff
    80003188:	868080e7          	jalr	-1944(ra) # 800019ec <_ZN6ThreadD1Ev>
    8000318c:	00048513          	mv	a0,s1
    80003190:	ffffe097          	auipc	ra,0xffffe
    80003194:	760080e7          	jalr	1888(ra) # 800018f0 <_ZdlPv>
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	00813483          	ld	s1,8(sp)
    800031a4:	02010113          	addi	sp,sp,32
    800031a8:	00008067          	ret

00000000800031ac <_ZN7WorkerA3runEv>:
    void run() override {
    800031ac:	ff010113          	addi	sp,sp,-16
    800031b0:	00113423          	sd	ra,8(sp)
    800031b4:	00813023          	sd	s0,0(sp)
    800031b8:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    800031bc:	00000593          	li	a1,0
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	774080e7          	jalr	1908(ra) # 80002934 <_ZN7WorkerA11workerBodyAEPv>
    }
    800031c8:	00813083          	ld	ra,8(sp)
    800031cc:	00013403          	ld	s0,0(sp)
    800031d0:	01010113          	addi	sp,sp,16
    800031d4:	00008067          	ret

00000000800031d8 <_ZN7WorkerB3runEv>:
    void run() override {
    800031d8:	ff010113          	addi	sp,sp,-16
    800031dc:	00113423          	sd	ra,8(sp)
    800031e0:	00813023          	sd	s0,0(sp)
    800031e4:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    800031e8:	00000593          	li	a1,0
    800031ec:	00000097          	auipc	ra,0x0
    800031f0:	814080e7          	jalr	-2028(ra) # 80002a00 <_ZN7WorkerB11workerBodyBEPv>
    }
    800031f4:	00813083          	ld	ra,8(sp)
    800031f8:	00013403          	ld	s0,0(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret

0000000080003204 <_ZN7WorkerC3runEv>:
    void run() override {
    80003204:	ff010113          	addi	sp,sp,-16
    80003208:	00113423          	sd	ra,8(sp)
    8000320c:	00813023          	sd	s0,0(sp)
    80003210:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80003214:	00000593          	li	a1,0
    80003218:	00000097          	auipc	ra,0x0
    8000321c:	8bc080e7          	jalr	-1860(ra) # 80002ad4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80003220:	00813083          	ld	ra,8(sp)
    80003224:	00013403          	ld	s0,0(sp)
    80003228:	01010113          	addi	sp,sp,16
    8000322c:	00008067          	ret

0000000080003230 <_ZN7WorkerD3runEv>:
    void run() override {
    80003230:	ff010113          	addi	sp,sp,-16
    80003234:	00113423          	sd	ra,8(sp)
    80003238:	00813023          	sd	s0,0(sp)
    8000323c:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80003240:	00000593          	li	a1,0
    80003244:	00000097          	auipc	ra,0x0
    80003248:	a10080e7          	jalr	-1520(ra) # 80002c54 <_ZN7WorkerD11workerBodyDEPv>
    }
    8000324c:	00813083          	ld	ra,8(sp)
    80003250:	00013403          	ld	s0,0(sp)
    80003254:	01010113          	addi	sp,sp,16
    80003258:	00008067          	ret

000000008000325c <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    8000325c:	fe010113          	addi	sp,sp,-32
    80003260:	00113c23          	sd	ra,24(sp)
    80003264:	00813823          	sd	s0,16(sp)
    80003268:	00913423          	sd	s1,8(sp)
    8000326c:	01213023          	sd	s2,0(sp)
    80003270:	02010413          	addi	s0,sp,32
    80003274:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80003278:	00100793          	li	a5,1
    8000327c:	02a7f863          	bgeu	a5,a0,800032ac <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80003280:	00a00793          	li	a5,10
    80003284:	02f577b3          	remu	a5,a0,a5
    80003288:	02078e63          	beqz	a5,800032c4 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    8000328c:	fff48513          	addi	a0,s1,-1
    80003290:	00000097          	auipc	ra,0x0
    80003294:	fcc080e7          	jalr	-52(ra) # 8000325c <_ZL9fibonaccim>
    80003298:	00050913          	mv	s2,a0
    8000329c:	ffe48513          	addi	a0,s1,-2
    800032a0:	00000097          	auipc	ra,0x0
    800032a4:	fbc080e7          	jalr	-68(ra) # 8000325c <_ZL9fibonaccim>
    800032a8:	00a90533          	add	a0,s2,a0
}
    800032ac:	01813083          	ld	ra,24(sp)
    800032b0:	01013403          	ld	s0,16(sp)
    800032b4:	00813483          	ld	s1,8(sp)
    800032b8:	00013903          	ld	s2,0(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800032c4:	ffffe097          	auipc	ra,0xffffe
    800032c8:	020080e7          	jalr	32(ra) # 800012e4 <_Z15thread_dispatchv>
    800032cc:	fc1ff06f          	j	8000328c <_ZL9fibonaccim+0x30>

00000000800032d0 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800032e8:	00a00493          	li	s1,10
    800032ec:	0400006f          	j	8000332c <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800032f0:	00005517          	auipc	a0,0x5
    800032f4:	e7850513          	addi	a0,a0,-392 # 80008168 <kvmincrease+0xb88>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	dc8080e7          	jalr	-568(ra) # 800040c0 <_Z11printStringPKc>
    80003300:	00000613          	li	a2,0
    80003304:	00a00593          	li	a1,10
    80003308:	00048513          	mv	a0,s1
    8000330c:	00001097          	auipc	ra,0x1
    80003310:	f64080e7          	jalr	-156(ra) # 80004270 <_Z8printIntiii>
    80003314:	00005517          	auipc	a0,0x5
    80003318:	07450513          	addi	a0,a0,116 # 80008388 <kvmincrease+0xda8>
    8000331c:	00001097          	auipc	ra,0x1
    80003320:	da4080e7          	jalr	-604(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80003324:	0014849b          	addiw	s1,s1,1
    80003328:	0ff4f493          	andi	s1,s1,255
    8000332c:	00c00793          	li	a5,12
    80003330:	fc97f0e3          	bgeu	a5,s1,800032f0 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    80003334:	00005517          	auipc	a0,0x5
    80003338:	e3c50513          	addi	a0,a0,-452 # 80008170 <kvmincrease+0xb90>
    8000333c:	00001097          	auipc	ra,0x1
    80003340:	d84080e7          	jalr	-636(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80003344:	00500313          	li	t1,5
    thread_dispatch();
    80003348:	ffffe097          	auipc	ra,0xffffe
    8000334c:	f9c080e7          	jalr	-100(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80003350:	01000513          	li	a0,16
    80003354:	00000097          	auipc	ra,0x0
    80003358:	f08080e7          	jalr	-248(ra) # 8000325c <_ZL9fibonaccim>
    8000335c:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80003360:	00005517          	auipc	a0,0x5
    80003364:	e2050513          	addi	a0,a0,-480 # 80008180 <kvmincrease+0xba0>
    80003368:	00001097          	auipc	ra,0x1
    8000336c:	d58080e7          	jalr	-680(ra) # 800040c0 <_Z11printStringPKc>
    80003370:	00000613          	li	a2,0
    80003374:	00a00593          	li	a1,10
    80003378:	0009051b          	sext.w	a0,s2
    8000337c:	00001097          	auipc	ra,0x1
    80003380:	ef4080e7          	jalr	-268(ra) # 80004270 <_Z8printIntiii>
    80003384:	00005517          	auipc	a0,0x5
    80003388:	00450513          	addi	a0,a0,4 # 80008388 <kvmincrease+0xda8>
    8000338c:	00001097          	auipc	ra,0x1
    80003390:	d34080e7          	jalr	-716(ra) # 800040c0 <_Z11printStringPKc>
    80003394:	0400006f          	j	800033d4 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80003398:	00005517          	auipc	a0,0x5
    8000339c:	dd050513          	addi	a0,a0,-560 # 80008168 <kvmincrease+0xb88>
    800033a0:	00001097          	auipc	ra,0x1
    800033a4:	d20080e7          	jalr	-736(ra) # 800040c0 <_Z11printStringPKc>
    800033a8:	00000613          	li	a2,0
    800033ac:	00a00593          	li	a1,10
    800033b0:	00048513          	mv	a0,s1
    800033b4:	00001097          	auipc	ra,0x1
    800033b8:	ebc080e7          	jalr	-324(ra) # 80004270 <_Z8printIntiii>
    800033bc:	00005517          	auipc	a0,0x5
    800033c0:	fcc50513          	addi	a0,a0,-52 # 80008388 <kvmincrease+0xda8>
    800033c4:	00001097          	auipc	ra,0x1
    800033c8:	cfc080e7          	jalr	-772(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800033cc:	0014849b          	addiw	s1,s1,1
    800033d0:	0ff4f493          	andi	s1,s1,255
    800033d4:	00f00793          	li	a5,15
    800033d8:	fc97f0e3          	bgeu	a5,s1,80003398 <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    800033dc:	00005517          	auipc	a0,0x5
    800033e0:	db450513          	addi	a0,a0,-588 # 80008190 <kvmincrease+0xbb0>
    800033e4:	00001097          	auipc	ra,0x1
    800033e8:	cdc080e7          	jalr	-804(ra) # 800040c0 <_Z11printStringPKc>
    finishedD = true;
    800033ec:	00100793          	li	a5,1
    800033f0:	00007717          	auipc	a4,0x7
    800033f4:	b6f70623          	sb	a5,-1172(a4) # 80009f5c <_ZL9finishedD>
    thread_dispatch();
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	eec080e7          	jalr	-276(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80003400:	01813083          	ld	ra,24(sp)
    80003404:	01013403          	ld	s0,16(sp)
    80003408:	00813483          	ld	s1,8(sp)
    8000340c:	00013903          	ld	s2,0(sp)
    80003410:	02010113          	addi	sp,sp,32
    80003414:	00008067          	ret

0000000080003418 <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80003418:	fe010113          	addi	sp,sp,-32
    8000341c:	00113c23          	sd	ra,24(sp)
    80003420:	00813823          	sd	s0,16(sp)
    80003424:	00913423          	sd	s1,8(sp)
    80003428:	01213023          	sd	s2,0(sp)
    8000342c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80003430:	00000493          	li	s1,0
    80003434:	0400006f          	j	80003474 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80003438:	00005517          	auipc	a0,0x5
    8000343c:	d0050513          	addi	a0,a0,-768 # 80008138 <kvmincrease+0xb58>
    80003440:	00001097          	auipc	ra,0x1
    80003444:	c80080e7          	jalr	-896(ra) # 800040c0 <_Z11printStringPKc>
    80003448:	00000613          	li	a2,0
    8000344c:	00a00593          	li	a1,10
    80003450:	00048513          	mv	a0,s1
    80003454:	00001097          	auipc	ra,0x1
    80003458:	e1c080e7          	jalr	-484(ra) # 80004270 <_Z8printIntiii>
    8000345c:	00005517          	auipc	a0,0x5
    80003460:	f2c50513          	addi	a0,a0,-212 # 80008388 <kvmincrease+0xda8>
    80003464:	00001097          	auipc	ra,0x1
    80003468:	c5c080e7          	jalr	-932(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000346c:	0014849b          	addiw	s1,s1,1
    80003470:	0ff4f493          	andi	s1,s1,255
    80003474:	00200793          	li	a5,2
    80003478:	fc97f0e3          	bgeu	a5,s1,80003438 <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    8000347c:	00005517          	auipc	a0,0x5
    80003480:	cc450513          	addi	a0,a0,-828 # 80008140 <kvmincrease+0xb60>
    80003484:	00001097          	auipc	ra,0x1
    80003488:	c3c080e7          	jalr	-964(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000348c:	00700313          	li	t1,7
    thread_dispatch();
    80003490:	ffffe097          	auipc	ra,0xffffe
    80003494:	e54080e7          	jalr	-428(ra) # 800012e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80003498:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    8000349c:	00005517          	auipc	a0,0x5
    800034a0:	cb450513          	addi	a0,a0,-844 # 80008150 <kvmincrease+0xb70>
    800034a4:	00001097          	auipc	ra,0x1
    800034a8:	c1c080e7          	jalr	-996(ra) # 800040c0 <_Z11printStringPKc>
    800034ac:	00000613          	li	a2,0
    800034b0:	00a00593          	li	a1,10
    800034b4:	0009051b          	sext.w	a0,s2
    800034b8:	00001097          	auipc	ra,0x1
    800034bc:	db8080e7          	jalr	-584(ra) # 80004270 <_Z8printIntiii>
    800034c0:	00005517          	auipc	a0,0x5
    800034c4:	ec850513          	addi	a0,a0,-312 # 80008388 <kvmincrease+0xda8>
    800034c8:	00001097          	auipc	ra,0x1
    800034cc:	bf8080e7          	jalr	-1032(ra) # 800040c0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    800034d0:	00c00513          	li	a0,12
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	d88080e7          	jalr	-632(ra) # 8000325c <_ZL9fibonaccim>
    800034dc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800034e0:	00005517          	auipc	a0,0x5
    800034e4:	c7850513          	addi	a0,a0,-904 # 80008158 <kvmincrease+0xb78>
    800034e8:	00001097          	auipc	ra,0x1
    800034ec:	bd8080e7          	jalr	-1064(ra) # 800040c0 <_Z11printStringPKc>
    800034f0:	00000613          	li	a2,0
    800034f4:	00a00593          	li	a1,10
    800034f8:	0009051b          	sext.w	a0,s2
    800034fc:	00001097          	auipc	ra,0x1
    80003500:	d74080e7          	jalr	-652(ra) # 80004270 <_Z8printIntiii>
    80003504:	00005517          	auipc	a0,0x5
    80003508:	e8450513          	addi	a0,a0,-380 # 80008388 <kvmincrease+0xda8>
    8000350c:	00001097          	auipc	ra,0x1
    80003510:	bb4080e7          	jalr	-1100(ra) # 800040c0 <_Z11printStringPKc>
    80003514:	0400006f          	j	80003554 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80003518:	00005517          	auipc	a0,0x5
    8000351c:	c2050513          	addi	a0,a0,-992 # 80008138 <kvmincrease+0xb58>
    80003520:	00001097          	auipc	ra,0x1
    80003524:	ba0080e7          	jalr	-1120(ra) # 800040c0 <_Z11printStringPKc>
    80003528:	00000613          	li	a2,0
    8000352c:	00a00593          	li	a1,10
    80003530:	00048513          	mv	a0,s1
    80003534:	00001097          	auipc	ra,0x1
    80003538:	d3c080e7          	jalr	-708(ra) # 80004270 <_Z8printIntiii>
    8000353c:	00005517          	auipc	a0,0x5
    80003540:	e4c50513          	addi	a0,a0,-436 # 80008388 <kvmincrease+0xda8>
    80003544:	00001097          	auipc	ra,0x1
    80003548:	b7c080e7          	jalr	-1156(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    8000354c:	0014849b          	addiw	s1,s1,1
    80003550:	0ff4f493          	andi	s1,s1,255
    80003554:	00500793          	li	a5,5
    80003558:	fc97f0e3          	bgeu	a5,s1,80003518 <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    8000355c:	00005517          	auipc	a0,0x5
    80003560:	bb450513          	addi	a0,a0,-1100 # 80008110 <kvmincrease+0xb30>
    80003564:	00001097          	auipc	ra,0x1
    80003568:	b5c080e7          	jalr	-1188(ra) # 800040c0 <_Z11printStringPKc>
    finishedC = true;
    8000356c:	00100793          	li	a5,1
    80003570:	00007717          	auipc	a4,0x7
    80003574:	9ef706a3          	sb	a5,-1555(a4) # 80009f5d <_ZL9finishedC>
    thread_dispatch();
    80003578:	ffffe097          	auipc	ra,0xffffe
    8000357c:	d6c080e7          	jalr	-660(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80003580:	01813083          	ld	ra,24(sp)
    80003584:	01013403          	ld	s0,16(sp)
    80003588:	00813483          	ld	s1,8(sp)
    8000358c:	00013903          	ld	s2,0(sp)
    80003590:	02010113          	addi	sp,sp,32
    80003594:	00008067          	ret

0000000080003598 <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80003598:	fe010113          	addi	sp,sp,-32
    8000359c:	00113c23          	sd	ra,24(sp)
    800035a0:	00813823          	sd	s0,16(sp)
    800035a4:	00913423          	sd	s1,8(sp)
    800035a8:	01213023          	sd	s2,0(sp)
    800035ac:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800035b0:	00000913          	li	s2,0
    800035b4:	0380006f          	j	800035ec <_ZL11workerBodyBPv+0x54>
            thread_dispatch();
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	d2c080e7          	jalr	-724(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800035c0:	00148493          	addi	s1,s1,1
    800035c4:	000027b7          	lui	a5,0x2
    800035c8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800035cc:	0097ee63          	bltu	a5,s1,800035e8 <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800035d0:	00000713          	li	a4,0
    800035d4:	000077b7          	lui	a5,0x7
    800035d8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800035dc:	fce7eee3          	bltu	a5,a4,800035b8 <_ZL11workerBodyBPv+0x20>
    800035e0:	00170713          	addi	a4,a4,1
    800035e4:	ff1ff06f          	j	800035d4 <_ZL11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800035e8:	00190913          	addi	s2,s2,1
    800035ec:	00f00793          	li	a5,15
    800035f0:	0527e063          	bltu	a5,s2,80003630 <_ZL11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800035f4:	00005517          	auipc	a0,0x5
    800035f8:	b2c50513          	addi	a0,a0,-1236 # 80008120 <kvmincrease+0xb40>
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	ac4080e7          	jalr	-1340(ra) # 800040c0 <_Z11printStringPKc>
    80003604:	00000613          	li	a2,0
    80003608:	00a00593          	li	a1,10
    8000360c:	0009051b          	sext.w	a0,s2
    80003610:	00001097          	auipc	ra,0x1
    80003614:	c60080e7          	jalr	-928(ra) # 80004270 <_Z8printIntiii>
    80003618:	00005517          	auipc	a0,0x5
    8000361c:	d7050513          	addi	a0,a0,-656 # 80008388 <kvmincrease+0xda8>
    80003620:	00001097          	auipc	ra,0x1
    80003624:	aa0080e7          	jalr	-1376(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80003628:	00000493          	li	s1,0
    8000362c:	f99ff06f          	j	800035c4 <_ZL11workerBodyBPv+0x2c>
    printString("B finished!\n");
    80003630:	00005517          	auipc	a0,0x5
    80003634:	af850513          	addi	a0,a0,-1288 # 80008128 <kvmincrease+0xb48>
    80003638:	00001097          	auipc	ra,0x1
    8000363c:	a88080e7          	jalr	-1400(ra) # 800040c0 <_Z11printStringPKc>
    finishedB = true;
    80003640:	00100793          	li	a5,1
    80003644:	00007717          	auipc	a4,0x7
    80003648:	90f70d23          	sb	a5,-1766(a4) # 80009f5e <_ZL9finishedB>
    thread_dispatch();
    8000364c:	ffffe097          	auipc	ra,0xffffe
    80003650:	c98080e7          	jalr	-872(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80003654:	01813083          	ld	ra,24(sp)
    80003658:	01013403          	ld	s0,16(sp)
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	00013903          	ld	s2,0(sp)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00008067          	ret

000000008000366c <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    8000366c:	fe010113          	addi	sp,sp,-32
    80003670:	00113c23          	sd	ra,24(sp)
    80003674:	00813823          	sd	s0,16(sp)
    80003678:	00913423          	sd	s1,8(sp)
    8000367c:	01213023          	sd	s2,0(sp)
    80003680:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80003684:	00000913          	li	s2,0
    80003688:	0380006f          	j	800036c0 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    8000368c:	ffffe097          	auipc	ra,0xffffe
    80003690:	c58080e7          	jalr	-936(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80003694:	00148493          	addi	s1,s1,1
    80003698:	000027b7          	lui	a5,0x2
    8000369c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800036a0:	0097ee63          	bltu	a5,s1,800036bc <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800036a4:	00000713          	li	a4,0
    800036a8:	000077b7          	lui	a5,0x7
    800036ac:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800036b0:	fce7eee3          	bltu	a5,a4,8000368c <_ZL11workerBodyAPv+0x20>
    800036b4:	00170713          	addi	a4,a4,1
    800036b8:	ff1ff06f          	j	800036a8 <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800036bc:	00190913          	addi	s2,s2,1
    800036c0:	00900793          	li	a5,9
    800036c4:	0527e063          	bltu	a5,s2,80003704 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800036c8:	00005517          	auipc	a0,0x5
    800036cc:	a4050513          	addi	a0,a0,-1472 # 80008108 <kvmincrease+0xb28>
    800036d0:	00001097          	auipc	ra,0x1
    800036d4:	9f0080e7          	jalr	-1552(ra) # 800040c0 <_Z11printStringPKc>
    800036d8:	00000613          	li	a2,0
    800036dc:	00a00593          	li	a1,10
    800036e0:	0009051b          	sext.w	a0,s2
    800036e4:	00001097          	auipc	ra,0x1
    800036e8:	b8c080e7          	jalr	-1140(ra) # 80004270 <_Z8printIntiii>
    800036ec:	00005517          	auipc	a0,0x5
    800036f0:	c9c50513          	addi	a0,a0,-868 # 80008388 <kvmincrease+0xda8>
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	9cc080e7          	jalr	-1588(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800036fc:	00000493          	li	s1,0
    80003700:	f99ff06f          	j	80003698 <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80003704:	00005517          	auipc	a0,0x5
    80003708:	a0c50513          	addi	a0,a0,-1524 # 80008110 <kvmincrease+0xb30>
    8000370c:	00001097          	auipc	ra,0x1
    80003710:	9b4080e7          	jalr	-1612(ra) # 800040c0 <_Z11printStringPKc>
    finishedA = true;
    80003714:	00100793          	li	a5,1
    80003718:	00007717          	auipc	a4,0x7
    8000371c:	84f703a3          	sb	a5,-1977(a4) # 80009f5f <_ZL9finishedA>
}
    80003720:	01813083          	ld	ra,24(sp)
    80003724:	01013403          	ld	s0,16(sp)
    80003728:	00813483          	ld	s1,8(sp)
    8000372c:	00013903          	ld	s2,0(sp)
    80003730:	02010113          	addi	sp,sp,32
    80003734:	00008067          	ret

0000000080003738 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80003738:	fd010113          	addi	sp,sp,-48
    8000373c:	02113423          	sd	ra,40(sp)
    80003740:	02813023          	sd	s0,32(sp)
    80003744:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80003748:	00000613          	li	a2,0
    8000374c:	00000597          	auipc	a1,0x0
    80003750:	f2058593          	addi	a1,a1,-224 # 8000366c <_ZL11workerBodyAPv>
    80003754:	fd040513          	addi	a0,s0,-48
    80003758:	ffffe097          	auipc	ra,0xffffe
    8000375c:	a48080e7          	jalr	-1464(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80003760:	00005517          	auipc	a0,0x5
    80003764:	a4050513          	addi	a0,a0,-1472 # 800081a0 <kvmincrease+0xbc0>
    80003768:	00001097          	auipc	ra,0x1
    8000376c:	958080e7          	jalr	-1704(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80003770:	00000613          	li	a2,0
    80003774:	00000597          	auipc	a1,0x0
    80003778:	e2458593          	addi	a1,a1,-476 # 80003598 <_ZL11workerBodyBPv>
    8000377c:	fd840513          	addi	a0,s0,-40
    80003780:	ffffe097          	auipc	ra,0xffffe
    80003784:	a20080e7          	jalr	-1504(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80003788:	00005517          	auipc	a0,0x5
    8000378c:	a3050513          	addi	a0,a0,-1488 # 800081b8 <kvmincrease+0xbd8>
    80003790:	00001097          	auipc	ra,0x1
    80003794:	930080e7          	jalr	-1744(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80003798:	00000613          	li	a2,0
    8000379c:	00000597          	auipc	a1,0x0
    800037a0:	c7c58593          	addi	a1,a1,-900 # 80003418 <_ZL11workerBodyCPv>
    800037a4:	fe040513          	addi	a0,s0,-32
    800037a8:	ffffe097          	auipc	ra,0xffffe
    800037ac:	9f8080e7          	jalr	-1544(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    800037b0:	00005517          	auipc	a0,0x5
    800037b4:	a2050513          	addi	a0,a0,-1504 # 800081d0 <kvmincrease+0xbf0>
    800037b8:	00001097          	auipc	ra,0x1
    800037bc:	908080e7          	jalr	-1784(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    800037c0:	00000613          	li	a2,0
    800037c4:	00000597          	auipc	a1,0x0
    800037c8:	b0c58593          	addi	a1,a1,-1268 # 800032d0 <_ZL11workerBodyDPv>
    800037cc:	fe840513          	addi	a0,s0,-24
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	9d0080e7          	jalr	-1584(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    800037d8:	00005517          	auipc	a0,0x5
    800037dc:	a1050513          	addi	a0,a0,-1520 # 800081e8 <kvmincrease+0xc08>
    800037e0:	00001097          	auipc	ra,0x1
    800037e4:	8e0080e7          	jalr	-1824(ra) # 800040c0 <_Z11printStringPKc>
    800037e8:	00c0006f          	j	800037f4 <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    800037ec:	ffffe097          	auipc	ra,0xffffe
    800037f0:	af8080e7          	jalr	-1288(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    800037f4:	00006797          	auipc	a5,0x6
    800037f8:	76b7c783          	lbu	a5,1899(a5) # 80009f5f <_ZL9finishedA>
    800037fc:	fe0788e3          	beqz	a5,800037ec <_Z18Threads_C_API_testv+0xb4>
    80003800:	00006797          	auipc	a5,0x6
    80003804:	75e7c783          	lbu	a5,1886(a5) # 80009f5e <_ZL9finishedB>
    80003808:	fe0782e3          	beqz	a5,800037ec <_Z18Threads_C_API_testv+0xb4>
    8000380c:	00006797          	auipc	a5,0x6
    80003810:	7517c783          	lbu	a5,1873(a5) # 80009f5d <_ZL9finishedC>
    80003814:	fc078ce3          	beqz	a5,800037ec <_Z18Threads_C_API_testv+0xb4>
    80003818:	00006797          	auipc	a5,0x6
    8000381c:	7447c783          	lbu	a5,1860(a5) # 80009f5c <_ZL9finishedD>
    80003820:	fc0786e3          	beqz	a5,800037ec <_Z18Threads_C_API_testv+0xb4>
    }

}
    80003824:	02813083          	ld	ra,40(sp)
    80003828:	02013403          	ld	s0,32(sp)
    8000382c:	03010113          	addi	sp,sp,48
    80003830:	00008067          	ret

0000000080003834 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    80003834:	fd010113          	addi	sp,sp,-48
    80003838:	02113423          	sd	ra,40(sp)
    8000383c:	02813023          	sd	s0,32(sp)
    80003840:	00913c23          	sd	s1,24(sp)
    80003844:	01213823          	sd	s2,16(sp)
    80003848:	01313423          	sd	s3,8(sp)
    8000384c:	03010413          	addi	s0,sp,48
    80003850:	00050993          	mv	s3,a0
    80003854:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80003858:	00000913          	li	s2,0
    8000385c:	00c0006f          	j	80003868 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	288080e7          	jalr	648(ra) # 80001ae8 <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 0x1b) {
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	b9c080e7          	jalr	-1124(ra) # 80001404 <_Z4getcv>
    80003870:	0005059b          	sext.w	a1,a0
    80003874:	01b00793          	li	a5,27
    80003878:	02f58a63          	beq	a1,a5,800038ac <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000387c:	0084b503          	ld	a0,8(s1)
    80003880:	00001097          	auipc	ra,0x1
    80003884:	c64080e7          	jalr	-924(ra) # 800044e4 <_ZN9BufferCPP3putEi>
        i++;
    80003888:	0019071b          	addiw	a4,s2,1
    8000388c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003890:	0004a683          	lw	a3,0(s1)
    80003894:	0026979b          	slliw	a5,a3,0x2
    80003898:	00d787bb          	addw	a5,a5,a3
    8000389c:	0017979b          	slliw	a5,a5,0x1
    800038a0:	02f767bb          	remw	a5,a4,a5
    800038a4:	fc0792e3          	bnez	a5,80003868 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    800038a8:	fb9ff06f          	j	80003860 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    800038ac:	00100793          	li	a5,1
    800038b0:	00006717          	auipc	a4,0x6
    800038b4:	6af72823          	sw	a5,1712(a4) # 80009f60 <_ZL9threadEnd>
    td->buffer->put('!');
    800038b8:	0209b783          	ld	a5,32(s3)
    800038bc:	02100593          	li	a1,33
    800038c0:	0087b503          	ld	a0,8(a5)
    800038c4:	00001097          	auipc	ra,0x1
    800038c8:	c20080e7          	jalr	-992(ra) # 800044e4 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    800038cc:	0104b503          	ld	a0,16(s1)
    800038d0:	ffffe097          	auipc	ra,0xffffe
    800038d4:	2ec080e7          	jalr	748(ra) # 80001bbc <_ZN9Semaphore6signalEv>
}
    800038d8:	02813083          	ld	ra,40(sp)
    800038dc:	02013403          	ld	s0,32(sp)
    800038e0:	01813483          	ld	s1,24(sp)
    800038e4:	01013903          	ld	s2,16(sp)
    800038e8:	00813983          	ld	s3,8(sp)
    800038ec:	03010113          	addi	sp,sp,48
    800038f0:	00008067          	ret

00000000800038f4 <_ZN12ProducerSync8producerEPv>:
    void run() override {
        producer(td);
    }
};

void ProducerSync::producer(void *arg) {
    800038f4:	fe010113          	addi	sp,sp,-32
    800038f8:	00113c23          	sd	ra,24(sp)
    800038fc:	00813823          	sd	s0,16(sp)
    80003900:	00913423          	sd	s1,8(sp)
    80003904:	01213023          	sd	s2,0(sp)
    80003908:	02010413          	addi	s0,sp,32
    8000390c:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80003910:	00000913          	li	s2,0
    80003914:	00c0006f          	j	80003920 <_ZN12ProducerSync8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80003918:	ffffe097          	auipc	ra,0xffffe
    8000391c:	1d0080e7          	jalr	464(ra) # 80001ae8 <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    80003920:	00006797          	auipc	a5,0x6
    80003924:	6407a783          	lw	a5,1600(a5) # 80009f60 <_ZL9threadEnd>
    80003928:	02079e63          	bnez	a5,80003964 <_ZN12ProducerSync8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    8000392c:	0004a583          	lw	a1,0(s1)
    80003930:	0305859b          	addiw	a1,a1,48
    80003934:	0084b503          	ld	a0,8(s1)
    80003938:	00001097          	auipc	ra,0x1
    8000393c:	bac080e7          	jalr	-1108(ra) # 800044e4 <_ZN9BufferCPP3putEi>
        i++;
    80003940:	0019071b          	addiw	a4,s2,1
    80003944:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80003948:	0004a683          	lw	a3,0(s1)
    8000394c:	0026979b          	slliw	a5,a3,0x2
    80003950:	00d787bb          	addw	a5,a5,a3
    80003954:	0017979b          	slliw	a5,a5,0x1
    80003958:	02f767bb          	remw	a5,a4,a5
    8000395c:	fc0792e3          	bnez	a5,80003920 <_ZN12ProducerSync8producerEPv+0x2c>
    80003960:	fb9ff06f          	j	80003918 <_ZN12ProducerSync8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80003964:	0104b503          	ld	a0,16(s1)
    80003968:	ffffe097          	auipc	ra,0xffffe
    8000396c:	254080e7          	jalr	596(ra) # 80001bbc <_ZN9Semaphore6signalEv>
}
    80003970:	01813083          	ld	ra,24(sp)
    80003974:	01013403          	ld	s0,16(sp)
    80003978:	00813483          	ld	s1,8(sp)
    8000397c:	00013903          	ld	s2,0(sp)
    80003980:	02010113          	addi	sp,sp,32
    80003984:	00008067          	ret

0000000080003988 <_ZN12ConsumerSync8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void ConsumerSync::consumer(void *arg) {
    80003988:	fd010113          	addi	sp,sp,-48
    8000398c:	02113423          	sd	ra,40(sp)
    80003990:	02813023          	sd	s0,32(sp)
    80003994:	00913c23          	sd	s1,24(sp)
    80003998:	01213823          	sd	s2,16(sp)
    8000399c:	01313423          	sd	s3,8(sp)
    800039a0:	01413023          	sd	s4,0(sp)
    800039a4:	03010413          	addi	s0,sp,48
    800039a8:	00050993          	mv	s3,a0
    800039ac:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800039b0:	00000a13          	li	s4,0
    800039b4:	01c0006f          	j	800039d0 <_ZN12ConsumerSync8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    800039b8:	ffffe097          	auipc	ra,0xffffe
    800039bc:	130080e7          	jalr	304(ra) # 80001ae8 <_ZN6Thread8dispatchEv>
    800039c0:	0500006f          	j	80003a10 <_ZN12ConsumerSync8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    800039c4:	00a00513          	li	a0,10
    800039c8:	ffffe097          	auipc	ra,0xffffe
    800039cc:	a68080e7          	jalr	-1432(ra) # 80001430 <_Z4putcc>
    while (!threadEnd) {
    800039d0:	00006797          	auipc	a5,0x6
    800039d4:	5907a783          	lw	a5,1424(a5) # 80009f60 <_ZL9threadEnd>
    800039d8:	06079263          	bnez	a5,80003a3c <_ZN12ConsumerSync8consumerEPv+0xb4>
        int key = data->buffer->get();
    800039dc:	00893503          	ld	a0,8(s2)
    800039e0:	00001097          	auipc	ra,0x1
    800039e4:	b94080e7          	jalr	-1132(ra) # 80004574 <_ZN9BufferCPP3getEv>
        i++;
    800039e8:	001a049b          	addiw	s1,s4,1
    800039ec:	00048a1b          	sext.w	s4,s1
        putc(key);
    800039f0:	0ff57513          	andi	a0,a0,255
    800039f4:	ffffe097          	auipc	ra,0xffffe
    800039f8:	a3c080e7          	jalr	-1476(ra) # 80001430 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800039fc:	00092703          	lw	a4,0(s2)
    80003a00:	0027179b          	slliw	a5,a4,0x2
    80003a04:	00e787bb          	addw	a5,a5,a4
    80003a08:	02f4e7bb          	remw	a5,s1,a5
    80003a0c:	fa0786e3          	beqz	a5,800039b8 <_ZN12ConsumerSync8consumerEPv+0x30>
        if (i % 80 == 0) {
    80003a10:	05000793          	li	a5,80
    80003a14:	02f4e4bb          	remw	s1,s1,a5
    80003a18:	fa049ce3          	bnez	s1,800039d0 <_ZN12ConsumerSync8consumerEPv+0x48>
    80003a1c:	fa9ff06f          	j	800039c4 <_ZN12ConsumerSync8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    80003a20:	0209b783          	ld	a5,32(s3)
    80003a24:	0087b503          	ld	a0,8(a5)
    80003a28:	00001097          	auipc	ra,0x1
    80003a2c:	b4c080e7          	jalr	-1204(ra) # 80004574 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    80003a30:	0ff57513          	andi	a0,a0,255
    80003a34:	ffffe097          	auipc	ra,0xffffe
    80003a38:	208080e7          	jalr	520(ra) # 80001c3c <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    80003a3c:	0209b783          	ld	a5,32(s3)
    80003a40:	0087b503          	ld	a0,8(a5)
    80003a44:	00001097          	auipc	ra,0x1
    80003a48:	bbc080e7          	jalr	-1092(ra) # 80004600 <_ZN9BufferCPP6getCntEv>
    80003a4c:	fca04ae3          	bgtz	a0,80003a20 <_ZN12ConsumerSync8consumerEPv+0x98>
    }

    data->wait->signal();
    80003a50:	01093503          	ld	a0,16(s2)
    80003a54:	ffffe097          	auipc	ra,0xffffe
    80003a58:	168080e7          	jalr	360(ra) # 80001bbc <_ZN9Semaphore6signalEv>
}
    80003a5c:	02813083          	ld	ra,40(sp)
    80003a60:	02013403          	ld	s0,32(sp)
    80003a64:	01813483          	ld	s1,24(sp)
    80003a68:	01013903          	ld	s2,16(sp)
    80003a6c:	00813983          	ld	s3,8(sp)
    80003a70:	00013a03          	ld	s4,0(sp)
    80003a74:	03010113          	addi	sp,sp,48
    80003a78:	00008067          	ret

0000000080003a7c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    80003a7c:	f8010113          	addi	sp,sp,-128
    80003a80:	06113c23          	sd	ra,120(sp)
    80003a84:	06813823          	sd	s0,112(sp)
    80003a88:	06913423          	sd	s1,104(sp)
    80003a8c:	07213023          	sd	s2,96(sp)
    80003a90:	05313c23          	sd	s3,88(sp)
    80003a94:	05413823          	sd	s4,80(sp)
    80003a98:	05513423          	sd	s5,72(sp)
    80003a9c:	05613023          	sd	s6,64(sp)
    80003aa0:	03713c23          	sd	s7,56(sp)
    80003aa4:	03813823          	sd	s8,48(sp)
    80003aa8:	03913423          	sd	s9,40(sp)
    80003aac:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80003ab0:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80003ab4:	00004517          	auipc	a0,0x4
    80003ab8:	57450513          	addi	a0,a0,1396 # 80008028 <kvmincrease+0xa48>
    80003abc:	00000097          	auipc	ra,0x0
    80003ac0:	604080e7          	jalr	1540(ra) # 800040c0 <_Z11printStringPKc>
    getString(input, 30);
    80003ac4:	01e00593          	li	a1,30
    80003ac8:	f8040493          	addi	s1,s0,-128
    80003acc:	00048513          	mv	a0,s1
    80003ad0:	00000097          	auipc	ra,0x0
    80003ad4:	678080e7          	jalr	1656(ra) # 80004148 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80003ad8:	00048513          	mv	a0,s1
    80003adc:	00000097          	auipc	ra,0x0
    80003ae0:	744080e7          	jalr	1860(ra) # 80004220 <_Z11stringToIntPKc>
    80003ae4:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80003ae8:	00004517          	auipc	a0,0x4
    80003aec:	56050513          	addi	a0,a0,1376 # 80008048 <kvmincrease+0xa68>
    80003af0:	00000097          	auipc	ra,0x0
    80003af4:	5d0080e7          	jalr	1488(ra) # 800040c0 <_Z11printStringPKc>
    getString(input, 30);
    80003af8:	01e00593          	li	a1,30
    80003afc:	00048513          	mv	a0,s1
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	648080e7          	jalr	1608(ra) # 80004148 <_Z9getStringPci>
    n = stringToInt(input);
    80003b08:	00048513          	mv	a0,s1
    80003b0c:	00000097          	auipc	ra,0x0
    80003b10:	714080e7          	jalr	1812(ra) # 80004220 <_Z11stringToIntPKc>
    80003b14:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80003b18:	00004517          	auipc	a0,0x4
    80003b1c:	55050513          	addi	a0,a0,1360 # 80008068 <kvmincrease+0xa88>
    80003b20:	00000097          	auipc	ra,0x0
    80003b24:	5a0080e7          	jalr	1440(ra) # 800040c0 <_Z11printStringPKc>
    80003b28:	00000613          	li	a2,0
    80003b2c:	00a00593          	li	a1,10
    80003b30:	00090513          	mv	a0,s2
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	73c080e7          	jalr	1852(ra) # 80004270 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80003b3c:	00004517          	auipc	a0,0x4
    80003b40:	54450513          	addi	a0,a0,1348 # 80008080 <kvmincrease+0xaa0>
    80003b44:	00000097          	auipc	ra,0x0
    80003b48:	57c080e7          	jalr	1404(ra) # 800040c0 <_Z11printStringPKc>
    80003b4c:	00000613          	li	a2,0
    80003b50:	00a00593          	li	a1,10
    80003b54:	00048513          	mv	a0,s1
    80003b58:	00000097          	auipc	ra,0x0
    80003b5c:	718080e7          	jalr	1816(ra) # 80004270 <_Z8printIntiii>
    printString(".\n");
    80003b60:	00004517          	auipc	a0,0x4
    80003b64:	4b850513          	addi	a0,a0,1208 # 80008018 <kvmincrease+0xa38>
    80003b68:	00000097          	auipc	ra,0x0
    80003b6c:	558080e7          	jalr	1368(ra) # 800040c0 <_Z11printStringPKc>
    if(threadNum > n) {
    80003b70:	0324c463          	blt	s1,s2,80003b98 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80003b74:	03205c63          	blez	s2,80003bac <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80003b78:	03800513          	li	a0,56
    80003b7c:	ffffe097          	auipc	ra,0xffffe
    80003b80:	d24080e7          	jalr	-732(ra) # 800018a0 <_Znwm>
    80003b84:	00050a93          	mv	s5,a0
    80003b88:	00048593          	mv	a1,s1
    80003b8c:	00001097          	auipc	ra,0x1
    80003b90:	804080e7          	jalr	-2044(ra) # 80004390 <_ZN9BufferCPPC1Ei>
    80003b94:	0300006f          	j	80003bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80003b98:	00004517          	auipc	a0,0x4
    80003b9c:	50050513          	addi	a0,a0,1280 # 80008098 <kvmincrease+0xab8>
    80003ba0:	00000097          	auipc	ra,0x0
    80003ba4:	520080e7          	jalr	1312(ra) # 800040c0 <_Z11printStringPKc>
        return;
    80003ba8:	0140006f          	j	80003bbc <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80003bac:	00004517          	auipc	a0,0x4
    80003bb0:	52c50513          	addi	a0,a0,1324 # 800080d8 <kvmincrease+0xaf8>
    80003bb4:	00000097          	auipc	ra,0x0
    80003bb8:	50c080e7          	jalr	1292(ra) # 800040c0 <_Z11printStringPKc>
        return;
    80003bbc:	000b8113          	mv	sp,s7
    80003bc0:	2380006f          	j	80003df8 <_Z29producerConsumer_CPP_Sync_APIv+0x37c>
    waitForAll = new Semaphore(0);
    80003bc4:	01000513          	li	a0,16
    80003bc8:	ffffe097          	auipc	ra,0xffffe
    80003bcc:	cd8080e7          	jalr	-808(ra) # 800018a0 <_Znwm>
    80003bd0:	00050493          	mv	s1,a0
    80003bd4:	00000593          	li	a1,0
    80003bd8:	ffffe097          	auipc	ra,0xffffe
    80003bdc:	f80080e7          	jalr	-128(ra) # 80001b58 <_ZN9SemaphoreC1Ej>
    80003be0:	00006797          	auipc	a5,0x6
    80003be4:	3897b423          	sd	s1,904(a5) # 80009f68 <_ZL10waitForAll>
    Thread* threads[threadNum];
    80003be8:	00391793          	slli	a5,s2,0x3
    80003bec:	00f78793          	addi	a5,a5,15
    80003bf0:	ff07f793          	andi	a5,a5,-16
    80003bf4:	40f10133          	sub	sp,sp,a5
    80003bf8:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80003bfc:	0019071b          	addiw	a4,s2,1
    80003c00:	00171793          	slli	a5,a4,0x1
    80003c04:	00e787b3          	add	a5,a5,a4
    80003c08:	00379793          	slli	a5,a5,0x3
    80003c0c:	00f78793          	addi	a5,a5,15
    80003c10:	ff07f793          	andi	a5,a5,-16
    80003c14:	40f10133          	sub	sp,sp,a5
    80003c18:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80003c1c:	00191c13          	slli	s8,s2,0x1
    80003c20:	012c07b3          	add	a5,s8,s2
    80003c24:	00379793          	slli	a5,a5,0x3
    80003c28:	00fa07b3          	add	a5,s4,a5
    80003c2c:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80003c30:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80003c34:	0097b823          	sd	s1,16(a5)
    consumerThread = new ConsumerSync(data+threadNum);
    80003c38:	02800513          	li	a0,40
    80003c3c:	ffffe097          	auipc	ra,0xffffe
    80003c40:	c64080e7          	jalr	-924(ra) # 800018a0 <_Znwm>
    80003c44:	00050b13          	mv	s6,a0
    80003c48:	012c0c33          	add	s8,s8,s2
    80003c4c:	003c1c13          	slli	s8,s8,0x3
    80003c50:	018a0c33          	add	s8,s4,s8
    ConsumerSync(thread_data* _td):Thread(), td(_td) {}
    80003c54:	ffffe097          	auipc	ra,0xffffe
    80003c58:	ebc080e7          	jalr	-324(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80003c5c:	00006797          	auipc	a5,0x6
    80003c60:	23478793          	addi	a5,a5,564 # 80009e90 <_ZTV12ConsumerSync+0x10>
    80003c64:	00fb3023          	sd	a5,0(s6)
    80003c68:	038b3023          	sd	s8,32(s6)
    consumerThread->start();
    80003c6c:	000b0513          	mv	a0,s6
    80003c70:	ffffe097          	auipc	ra,0xffffe
    80003c74:	e4c080e7          	jalr	-436(ra) # 80001abc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003c78:	00000493          	li	s1,0
    80003c7c:	0380006f          	j	80003cb4 <_Z29producerConsumer_CPP_Sync_APIv+0x238>
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003c80:	00006797          	auipc	a5,0x6
    80003c84:	1e878793          	addi	a5,a5,488 # 80009e68 <_ZTV12ProducerSync+0x10>
    80003c88:	00fcb023          	sd	a5,0(s9)
    80003c8c:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerSync(data+i);
    80003c90:	00349793          	slli	a5,s1,0x3
    80003c94:	00f987b3          	add	a5,s3,a5
    80003c98:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80003c9c:	00349793          	slli	a5,s1,0x3
    80003ca0:	00f987b3          	add	a5,s3,a5
    80003ca4:	0007b503          	ld	a0,0(a5)
    80003ca8:	ffffe097          	auipc	ra,0xffffe
    80003cac:	e14080e7          	jalr	-492(ra) # 80001abc <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80003cb0:	0014849b          	addiw	s1,s1,1
    80003cb4:	0b24d063          	bge	s1,s2,80003d54 <_Z29producerConsumer_CPP_Sync_APIv+0x2d8>
        data[i].id = i;
    80003cb8:	00149793          	slli	a5,s1,0x1
    80003cbc:	009787b3          	add	a5,a5,s1
    80003cc0:	00379793          	slli	a5,a5,0x3
    80003cc4:	00fa07b3          	add	a5,s4,a5
    80003cc8:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80003ccc:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80003cd0:	00006717          	auipc	a4,0x6
    80003cd4:	29873703          	ld	a4,664(a4) # 80009f68 <_ZL10waitForAll>
    80003cd8:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80003cdc:	02905863          	blez	s1,80003d0c <_Z29producerConsumer_CPP_Sync_APIv+0x290>
            threads[i] = new ProducerSync(data+i);
    80003ce0:	02800513          	li	a0,40
    80003ce4:	ffffe097          	auipc	ra,0xffffe
    80003ce8:	bbc080e7          	jalr	-1092(ra) # 800018a0 <_Znwm>
    80003cec:	00050c93          	mv	s9,a0
    80003cf0:	00149c13          	slli	s8,s1,0x1
    80003cf4:	009c0c33          	add	s8,s8,s1
    80003cf8:	003c1c13          	slli	s8,s8,0x3
    80003cfc:	018a0c33          	add	s8,s4,s8
    ProducerSync(thread_data* _td):Thread(), td(_td) {}
    80003d00:	ffffe097          	auipc	ra,0xffffe
    80003d04:	e10080e7          	jalr	-496(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80003d08:	f79ff06f          	j	80003c80 <_Z29producerConsumer_CPP_Sync_APIv+0x204>
            threads[i] = new ProducerKeyboard(data+i);
    80003d0c:	02800513          	li	a0,40
    80003d10:	ffffe097          	auipc	ra,0xffffe
    80003d14:	b90080e7          	jalr	-1136(ra) # 800018a0 <_Znwm>
    80003d18:	00050c93          	mv	s9,a0
    80003d1c:	00149c13          	slli	s8,s1,0x1
    80003d20:	009c0c33          	add	s8,s8,s1
    80003d24:	003c1c13          	slli	s8,s8,0x3
    80003d28:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80003d2c:	ffffe097          	auipc	ra,0xffffe
    80003d30:	de4080e7          	jalr	-540(ra) # 80001b10 <_ZN6ThreadC1Ev>
    80003d34:	00006797          	auipc	a5,0x6
    80003d38:	10c78793          	addi	a5,a5,268 # 80009e40 <_ZTV16ProducerKeyboard+0x10>
    80003d3c:	00fcb023          	sd	a5,0(s9)
    80003d40:	038cb023          	sd	s8,32(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80003d44:	00349793          	slli	a5,s1,0x3
    80003d48:	00f987b3          	add	a5,s3,a5
    80003d4c:	0197b023          	sd	s9,0(a5)
    80003d50:	f4dff06f          	j	80003c9c <_Z29producerConsumer_CPP_Sync_APIv+0x220>
    Thread::dispatch();
    80003d54:	ffffe097          	auipc	ra,0xffffe
    80003d58:	d94080e7          	jalr	-620(ra) # 80001ae8 <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d5c:	00000493          	li	s1,0
    80003d60:	00994e63          	blt	s2,s1,80003d7c <_Z29producerConsumer_CPP_Sync_APIv+0x300>
        waitForAll->wait();
    80003d64:	00006517          	auipc	a0,0x6
    80003d68:	20453503          	ld	a0,516(a0) # 80009f68 <_ZL10waitForAll>
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	e24080e7          	jalr	-476(ra) # 80001b90 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80003d74:	0014849b          	addiw	s1,s1,1
    80003d78:	fe9ff06f          	j	80003d60 <_Z29producerConsumer_CPP_Sync_APIv+0x2e4>
    for (int i = 0; i < threadNum; i++) {
    80003d7c:	00000493          	li	s1,0
    80003d80:	0080006f          	j	80003d88 <_Z29producerConsumer_CPP_Sync_APIv+0x30c>
    80003d84:	0014849b          	addiw	s1,s1,1
    80003d88:	0324d263          	bge	s1,s2,80003dac <_Z29producerConsumer_CPP_Sync_APIv+0x330>
        delete threads[i];
    80003d8c:	00349793          	slli	a5,s1,0x3
    80003d90:	00f987b3          	add	a5,s3,a5
    80003d94:	0007b503          	ld	a0,0(a5)
    80003d98:	fe0506e3          	beqz	a0,80003d84 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    80003d9c:	00053783          	ld	a5,0(a0)
    80003da0:	0087b783          	ld	a5,8(a5)
    80003da4:	000780e7          	jalr	a5
    80003da8:	fddff06f          	j	80003d84 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
    delete consumerThread;
    80003dac:	000b0a63          	beqz	s6,80003dc0 <_Z29producerConsumer_CPP_Sync_APIv+0x344>
    80003db0:	000b3783          	ld	a5,0(s6)
    80003db4:	0087b783          	ld	a5,8(a5)
    80003db8:	000b0513          	mv	a0,s6
    80003dbc:	000780e7          	jalr	a5
    delete waitForAll;
    80003dc0:	00006517          	auipc	a0,0x6
    80003dc4:	1a853503          	ld	a0,424(a0) # 80009f68 <_ZL10waitForAll>
    80003dc8:	00050863          	beqz	a0,80003dd8 <_Z29producerConsumer_CPP_Sync_APIv+0x35c>
    80003dcc:	00053783          	ld	a5,0(a0)
    80003dd0:	0087b783          	ld	a5,8(a5)
    80003dd4:	000780e7          	jalr	a5
    delete buffer;
    80003dd8:	000a8e63          	beqz	s5,80003df4 <_Z29producerConsumer_CPP_Sync_APIv+0x378>
    80003ddc:	000a8513          	mv	a0,s5
    80003de0:	00001097          	auipc	ra,0x1
    80003de4:	8a8080e7          	jalr	-1880(ra) # 80004688 <_ZN9BufferCPPD1Ev>
    80003de8:	000a8513          	mv	a0,s5
    80003dec:	ffffe097          	auipc	ra,0xffffe
    80003df0:	b04080e7          	jalr	-1276(ra) # 800018f0 <_ZdlPv>
    80003df4:	000b8113          	mv	sp,s7

}
    80003df8:	f8040113          	addi	sp,s0,-128
    80003dfc:	07813083          	ld	ra,120(sp)
    80003e00:	07013403          	ld	s0,112(sp)
    80003e04:	06813483          	ld	s1,104(sp)
    80003e08:	06013903          	ld	s2,96(sp)
    80003e0c:	05813983          	ld	s3,88(sp)
    80003e10:	05013a03          	ld	s4,80(sp)
    80003e14:	04813a83          	ld	s5,72(sp)
    80003e18:	04013b03          	ld	s6,64(sp)
    80003e1c:	03813b83          	ld	s7,56(sp)
    80003e20:	03013c03          	ld	s8,48(sp)
    80003e24:	02813c83          	ld	s9,40(sp)
    80003e28:	08010113          	addi	sp,sp,128
    80003e2c:	00008067          	ret
    80003e30:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80003e34:	000a8513          	mv	a0,s5
    80003e38:	ffffe097          	auipc	ra,0xffffe
    80003e3c:	ab8080e7          	jalr	-1352(ra) # 800018f0 <_ZdlPv>
    80003e40:	00048513          	mv	a0,s1
    80003e44:	00007097          	auipc	ra,0x7
    80003e48:	204080e7          	jalr	516(ra) # 8000b048 <_Unwind_Resume>
    80003e4c:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80003e50:	00048513          	mv	a0,s1
    80003e54:	ffffe097          	auipc	ra,0xffffe
    80003e58:	a9c080e7          	jalr	-1380(ra) # 800018f0 <_ZdlPv>
    80003e5c:	00090513          	mv	a0,s2
    80003e60:	00007097          	auipc	ra,0x7
    80003e64:	1e8080e7          	jalr	488(ra) # 8000b048 <_Unwind_Resume>
    80003e68:	00050493          	mv	s1,a0
    consumerThread = new ConsumerSync(data+threadNum);
    80003e6c:	000b0513          	mv	a0,s6
    80003e70:	ffffe097          	auipc	ra,0xffffe
    80003e74:	a80080e7          	jalr	-1408(ra) # 800018f0 <_ZdlPv>
    80003e78:	00048513          	mv	a0,s1
    80003e7c:	00007097          	auipc	ra,0x7
    80003e80:	1cc080e7          	jalr	460(ra) # 8000b048 <_Unwind_Resume>
    80003e84:	00050493          	mv	s1,a0
            threads[i] = new ProducerSync(data+i);
    80003e88:	000c8513          	mv	a0,s9
    80003e8c:	ffffe097          	auipc	ra,0xffffe
    80003e90:	a64080e7          	jalr	-1436(ra) # 800018f0 <_ZdlPv>
    80003e94:	00048513          	mv	a0,s1
    80003e98:	00007097          	auipc	ra,0x7
    80003e9c:	1b0080e7          	jalr	432(ra) # 8000b048 <_Unwind_Resume>
    80003ea0:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80003ea4:	000c8513          	mv	a0,s9
    80003ea8:	ffffe097          	auipc	ra,0xffffe
    80003eac:	a48080e7          	jalr	-1464(ra) # 800018f0 <_ZdlPv>
    80003eb0:	00048513          	mv	a0,s1
    80003eb4:	00007097          	auipc	ra,0x7
    80003eb8:	194080e7          	jalr	404(ra) # 8000b048 <_Unwind_Resume>

0000000080003ebc <_ZN12ConsumerSyncD1Ev>:
class ConsumerSync:public Thread {
    80003ebc:	ff010113          	addi	sp,sp,-16
    80003ec0:	00113423          	sd	ra,8(sp)
    80003ec4:	00813023          	sd	s0,0(sp)
    80003ec8:	01010413          	addi	s0,sp,16
    80003ecc:	00006797          	auipc	a5,0x6
    80003ed0:	fc478793          	addi	a5,a5,-60 # 80009e90 <_ZTV12ConsumerSync+0x10>
    80003ed4:	00f53023          	sd	a5,0(a0)
    80003ed8:	ffffe097          	auipc	ra,0xffffe
    80003edc:	b14080e7          	jalr	-1260(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003ee0:	00813083          	ld	ra,8(sp)
    80003ee4:	00013403          	ld	s0,0(sp)
    80003ee8:	01010113          	addi	sp,sp,16
    80003eec:	00008067          	ret

0000000080003ef0 <_ZN12ConsumerSyncD0Ev>:
    80003ef0:	fe010113          	addi	sp,sp,-32
    80003ef4:	00113c23          	sd	ra,24(sp)
    80003ef8:	00813823          	sd	s0,16(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	02010413          	addi	s0,sp,32
    80003f04:	00050493          	mv	s1,a0
    80003f08:	00006797          	auipc	a5,0x6
    80003f0c:	f8878793          	addi	a5,a5,-120 # 80009e90 <_ZTV12ConsumerSync+0x10>
    80003f10:	00f53023          	sd	a5,0(a0)
    80003f14:	ffffe097          	auipc	ra,0xffffe
    80003f18:	ad8080e7          	jalr	-1320(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003f1c:	00048513          	mv	a0,s1
    80003f20:	ffffe097          	auipc	ra,0xffffe
    80003f24:	9d0080e7          	jalr	-1584(ra) # 800018f0 <_ZdlPv>
    80003f28:	01813083          	ld	ra,24(sp)
    80003f2c:	01013403          	ld	s0,16(sp)
    80003f30:	00813483          	ld	s1,8(sp)
    80003f34:	02010113          	addi	sp,sp,32
    80003f38:	00008067          	ret

0000000080003f3c <_ZN12ProducerSyncD1Ev>:
class ProducerSync:public Thread {
    80003f3c:	ff010113          	addi	sp,sp,-16
    80003f40:	00113423          	sd	ra,8(sp)
    80003f44:	00813023          	sd	s0,0(sp)
    80003f48:	01010413          	addi	s0,sp,16
    80003f4c:	00006797          	auipc	a5,0x6
    80003f50:	f1c78793          	addi	a5,a5,-228 # 80009e68 <_ZTV12ProducerSync+0x10>
    80003f54:	00f53023          	sd	a5,0(a0)
    80003f58:	ffffe097          	auipc	ra,0xffffe
    80003f5c:	a94080e7          	jalr	-1388(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003f60:	00813083          	ld	ra,8(sp)
    80003f64:	00013403          	ld	s0,0(sp)
    80003f68:	01010113          	addi	sp,sp,16
    80003f6c:	00008067          	ret

0000000080003f70 <_ZN12ProducerSyncD0Ev>:
    80003f70:	fe010113          	addi	sp,sp,-32
    80003f74:	00113c23          	sd	ra,24(sp)
    80003f78:	00813823          	sd	s0,16(sp)
    80003f7c:	00913423          	sd	s1,8(sp)
    80003f80:	02010413          	addi	s0,sp,32
    80003f84:	00050493          	mv	s1,a0
    80003f88:	00006797          	auipc	a5,0x6
    80003f8c:	ee078793          	addi	a5,a5,-288 # 80009e68 <_ZTV12ProducerSync+0x10>
    80003f90:	00f53023          	sd	a5,0(a0)
    80003f94:	ffffe097          	auipc	ra,0xffffe
    80003f98:	a58080e7          	jalr	-1448(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003f9c:	00048513          	mv	a0,s1
    80003fa0:	ffffe097          	auipc	ra,0xffffe
    80003fa4:	950080e7          	jalr	-1712(ra) # 800018f0 <_ZdlPv>
    80003fa8:	01813083          	ld	ra,24(sp)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	00813483          	ld	s1,8(sp)
    80003fb4:	02010113          	addi	sp,sp,32
    80003fb8:	00008067          	ret

0000000080003fbc <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80003fbc:	ff010113          	addi	sp,sp,-16
    80003fc0:	00113423          	sd	ra,8(sp)
    80003fc4:	00813023          	sd	s0,0(sp)
    80003fc8:	01010413          	addi	s0,sp,16
    80003fcc:	00006797          	auipc	a5,0x6
    80003fd0:	e7478793          	addi	a5,a5,-396 # 80009e40 <_ZTV16ProducerKeyboard+0x10>
    80003fd4:	00f53023          	sd	a5,0(a0)
    80003fd8:	ffffe097          	auipc	ra,0xffffe
    80003fdc:	a14080e7          	jalr	-1516(ra) # 800019ec <_ZN6ThreadD1Ev>
    80003fe0:	00813083          	ld	ra,8(sp)
    80003fe4:	00013403          	ld	s0,0(sp)
    80003fe8:	01010113          	addi	sp,sp,16
    80003fec:	00008067          	ret

0000000080003ff0 <_ZN16ProducerKeyboardD0Ev>:
    80003ff0:	fe010113          	addi	sp,sp,-32
    80003ff4:	00113c23          	sd	ra,24(sp)
    80003ff8:	00813823          	sd	s0,16(sp)
    80003ffc:	00913423          	sd	s1,8(sp)
    80004000:	02010413          	addi	s0,sp,32
    80004004:	00050493          	mv	s1,a0
    80004008:	00006797          	auipc	a5,0x6
    8000400c:	e3878793          	addi	a5,a5,-456 # 80009e40 <_ZTV16ProducerKeyboard+0x10>
    80004010:	00f53023          	sd	a5,0(a0)
    80004014:	ffffe097          	auipc	ra,0xffffe
    80004018:	9d8080e7          	jalr	-1576(ra) # 800019ec <_ZN6ThreadD1Ev>
    8000401c:	00048513          	mv	a0,s1
    80004020:	ffffe097          	auipc	ra,0xffffe
    80004024:	8d0080e7          	jalr	-1840(ra) # 800018f0 <_ZdlPv>
    80004028:	01813083          	ld	ra,24(sp)
    8000402c:	01013403          	ld	s0,16(sp)
    80004030:	00813483          	ld	s1,8(sp)
    80004034:	02010113          	addi	sp,sp,32
    80004038:	00008067          	ret

000000008000403c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    8000403c:	ff010113          	addi	sp,sp,-16
    80004040:	00113423          	sd	ra,8(sp)
    80004044:	00813023          	sd	s0,0(sp)
    80004048:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    8000404c:	02053583          	ld	a1,32(a0)
    80004050:	fffff097          	auipc	ra,0xfffff
    80004054:	7e4080e7          	jalr	2020(ra) # 80003834 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80004058:	00813083          	ld	ra,8(sp)
    8000405c:	00013403          	ld	s0,0(sp)
    80004060:	01010113          	addi	sp,sp,16
    80004064:	00008067          	ret

0000000080004068 <_ZN12ProducerSync3runEv>:
    void run() override {
    80004068:	ff010113          	addi	sp,sp,-16
    8000406c:	00113423          	sd	ra,8(sp)
    80004070:	00813023          	sd	s0,0(sp)
    80004074:	01010413          	addi	s0,sp,16
        producer(td);
    80004078:	02053583          	ld	a1,32(a0)
    8000407c:	00000097          	auipc	ra,0x0
    80004080:	878080e7          	jalr	-1928(ra) # 800038f4 <_ZN12ProducerSync8producerEPv>
    }
    80004084:	00813083          	ld	ra,8(sp)
    80004088:	00013403          	ld	s0,0(sp)
    8000408c:	01010113          	addi	sp,sp,16
    80004090:	00008067          	ret

0000000080004094 <_ZN12ConsumerSync3runEv>:
    void run() override {
    80004094:	ff010113          	addi	sp,sp,-16
    80004098:	00113423          	sd	ra,8(sp)
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	01010413          	addi	s0,sp,16
        consumer(td);
    800040a4:	02053583          	ld	a1,32(a0)
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	8e0080e7          	jalr	-1824(ra) # 80003988 <_ZN12ConsumerSync8consumerEPv>
    }
    800040b0:	00813083          	ld	ra,8(sp)
    800040b4:	00013403          	ld	s0,0(sp)
    800040b8:	01010113          	addi	sp,sp,16
    800040bc:	00008067          	ret

00000000800040c0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1)) thread_dispatch()
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800040c0:	fe010113          	addi	sp,sp,-32
    800040c4:	00113c23          	sd	ra,24(sp)
    800040c8:	00813823          	sd	s0,16(sp)
    800040cc:	00913423          	sd	s1,8(sp)
    800040d0:	02010413          	addi	s0,sp,32
    800040d4:	00050493          	mv	s1,a0
    LOCK();
    800040d8:	00100613          	li	a2,1
    800040dc:	00000593          	li	a1,0
    800040e0:	00006517          	auipc	a0,0x6
    800040e4:	e9050513          	addi	a0,a0,-368 # 80009f70 <lockPrint>
    800040e8:	ffffd097          	auipc	ra,0xffffd
    800040ec:	03c080e7          	jalr	60(ra) # 80001124 <copy_and_swap>
    800040f0:	00050863          	beqz	a0,80004100 <_Z11printStringPKc+0x40>
    800040f4:	ffffd097          	auipc	ra,0xffffd
    800040f8:	1f0080e7          	jalr	496(ra) # 800012e4 <_Z15thread_dispatchv>
    800040fc:	fddff06f          	j	800040d8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004100:	0004c503          	lbu	a0,0(s1)
    80004104:	00050a63          	beqz	a0,80004118 <_Z11printStringPKc+0x58>
    {
        putc(*string);
    80004108:	ffffd097          	auipc	ra,0xffffd
    8000410c:	328080e7          	jalr	808(ra) # 80001430 <_Z4putcc>
        string++;
    80004110:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004114:	fedff06f          	j	80004100 <_Z11printStringPKc+0x40>
    }
    UNLOCK();
    80004118:	00000613          	li	a2,0
    8000411c:	00100593          	li	a1,1
    80004120:	00006517          	auipc	a0,0x6
    80004124:	e5050513          	addi	a0,a0,-432 # 80009f70 <lockPrint>
    80004128:	ffffd097          	auipc	ra,0xffffd
    8000412c:	ffc080e7          	jalr	-4(ra) # 80001124 <copy_and_swap>
    80004130:	fe0514e3          	bnez	a0,80004118 <_Z11printStringPKc+0x58>
}
    80004134:	01813083          	ld	ra,24(sp)
    80004138:	01013403          	ld	s0,16(sp)
    8000413c:	00813483          	ld	s1,8(sp)
    80004140:	02010113          	addi	sp,sp,32
    80004144:	00008067          	ret

0000000080004148 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004148:	fd010113          	addi	sp,sp,-48
    8000414c:	02113423          	sd	ra,40(sp)
    80004150:	02813023          	sd	s0,32(sp)
    80004154:	00913c23          	sd	s1,24(sp)
    80004158:	01213823          	sd	s2,16(sp)
    8000415c:	01313423          	sd	s3,8(sp)
    80004160:	01413023          	sd	s4,0(sp)
    80004164:	03010413          	addi	s0,sp,48
    80004168:	00050993          	mv	s3,a0
    8000416c:	00058a13          	mv	s4,a1
    LOCK();
    80004170:	00100613          	li	a2,1
    80004174:	00000593          	li	a1,0
    80004178:	00006517          	auipc	a0,0x6
    8000417c:	df850513          	addi	a0,a0,-520 # 80009f70 <lockPrint>
    80004180:	ffffd097          	auipc	ra,0xffffd
    80004184:	fa4080e7          	jalr	-92(ra) # 80001124 <copy_and_swap>
    80004188:	00050863          	beqz	a0,80004198 <_Z9getStringPci+0x50>
    8000418c:	ffffd097          	auipc	ra,0xffffd
    80004190:	158080e7          	jalr	344(ra) # 800012e4 <_Z15thread_dispatchv>
    80004194:	fddff06f          	j	80004170 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004198:	00000913          	li	s2,0
    8000419c:	00090493          	mv	s1,s2
    800041a0:	0019091b          	addiw	s2,s2,1
    800041a4:	03495a63          	bge	s2,s4,800041d8 <_Z9getStringPci+0x90>
        cc = getc();
    800041a8:	ffffd097          	auipc	ra,0xffffd
    800041ac:	25c080e7          	jalr	604(ra) # 80001404 <_Z4getcv>
        if(cc < 1)
    800041b0:	02050463          	beqz	a0,800041d8 <_Z9getStringPci+0x90>
            break;
        c = cc;
        buf[i++] = c;
    800041b4:	009984b3          	add	s1,s3,s1
    800041b8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800041bc:	00a00793          	li	a5,10
    800041c0:	00f50a63          	beq	a0,a5,800041d4 <_Z9getStringPci+0x8c>
    800041c4:	00d00793          	li	a5,13
    800041c8:	fcf51ae3          	bne	a0,a5,8000419c <_Z9getStringPci+0x54>
        buf[i++] = c;
    800041cc:	00090493          	mv	s1,s2
    800041d0:	0080006f          	j	800041d8 <_Z9getStringPci+0x90>
    800041d4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800041d8:	009984b3          	add	s1,s3,s1
    800041dc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800041e0:	00000613          	li	a2,0
    800041e4:	00100593          	li	a1,1
    800041e8:	00006517          	auipc	a0,0x6
    800041ec:	d8850513          	addi	a0,a0,-632 # 80009f70 <lockPrint>
    800041f0:	ffffd097          	auipc	ra,0xffffd
    800041f4:	f34080e7          	jalr	-204(ra) # 80001124 <copy_and_swap>
    800041f8:	fe0514e3          	bnez	a0,800041e0 <_Z9getStringPci+0x98>
    return buf;
}
    800041fc:	00098513          	mv	a0,s3
    80004200:	02813083          	ld	ra,40(sp)
    80004204:	02013403          	ld	s0,32(sp)
    80004208:	01813483          	ld	s1,24(sp)
    8000420c:	01013903          	ld	s2,16(sp)
    80004210:	00813983          	ld	s3,8(sp)
    80004214:	00013a03          	ld	s4,0(sp)
    80004218:	03010113          	addi	sp,sp,48
    8000421c:	00008067          	ret

0000000080004220 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004220:	ff010113          	addi	sp,sp,-16
    80004224:	00813423          	sd	s0,8(sp)
    80004228:	01010413          	addi	s0,sp,16
    8000422c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004230:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004234:	0006c603          	lbu	a2,0(a3)
    80004238:	fd06071b          	addiw	a4,a2,-48
    8000423c:	0ff77713          	andi	a4,a4,255
    80004240:	00900793          	li	a5,9
    80004244:	02e7e063          	bltu	a5,a4,80004264 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004248:	0025179b          	slliw	a5,a0,0x2
    8000424c:	00a787bb          	addw	a5,a5,a0
    80004250:	0017979b          	slliw	a5,a5,0x1
    80004254:	00168693          	addi	a3,a3,1
    80004258:	00c787bb          	addw	a5,a5,a2
    8000425c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004260:	fd5ff06f          	j	80004234 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004264:	00813403          	ld	s0,8(sp)
    80004268:	01010113          	addi	sp,sp,16
    8000426c:	00008067          	ret

0000000080004270 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004270:	fc010113          	addi	sp,sp,-64
    80004274:	02113c23          	sd	ra,56(sp)
    80004278:	02813823          	sd	s0,48(sp)
    8000427c:	02913423          	sd	s1,40(sp)
    80004280:	03213023          	sd	s2,32(sp)
    80004284:	01313c23          	sd	s3,24(sp)
    80004288:	04010413          	addi	s0,sp,64
    8000428c:	00050493          	mv	s1,a0
    80004290:	00058913          	mv	s2,a1
    80004294:	00060993          	mv	s3,a2
    LOCK();
    80004298:	00100613          	li	a2,1
    8000429c:	00000593          	li	a1,0
    800042a0:	00006517          	auipc	a0,0x6
    800042a4:	cd050513          	addi	a0,a0,-816 # 80009f70 <lockPrint>
    800042a8:	ffffd097          	auipc	ra,0xffffd
    800042ac:	e7c080e7          	jalr	-388(ra) # 80001124 <copy_and_swap>
    800042b0:	00050863          	beqz	a0,800042c0 <_Z8printIntiii+0x50>
    800042b4:	ffffd097          	auipc	ra,0xffffd
    800042b8:	030080e7          	jalr	48(ra) # 800012e4 <_Z15thread_dispatchv>
    800042bc:	fddff06f          	j	80004298 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800042c0:	00098463          	beqz	s3,800042c8 <_Z8printIntiii+0x58>
    800042c4:	0804c463          	bltz	s1,8000434c <_Z8printIntiii+0xdc>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800042c8:	0004851b          	sext.w	a0,s1
    neg = 0;
    800042cc:	00000593          	li	a1,0
    }

    i = 0;
    800042d0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800042d4:	0009079b          	sext.w	a5,s2
    800042d8:	0325773b          	remuw	a4,a0,s2
    800042dc:	00048613          	mv	a2,s1
    800042e0:	0014849b          	addiw	s1,s1,1
    800042e4:	02071693          	slli	a3,a4,0x20
    800042e8:	0206d693          	srli	a3,a3,0x20
    800042ec:	00006717          	auipc	a4,0x6
    800042f0:	bbc70713          	addi	a4,a4,-1092 # 80009ea8 <digits>
    800042f4:	00d70733          	add	a4,a4,a3
    800042f8:	00074683          	lbu	a3,0(a4)
    800042fc:	fd040713          	addi	a4,s0,-48
    80004300:	00c70733          	add	a4,a4,a2
    80004304:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80004308:	0005071b          	sext.w	a4,a0
    8000430c:	0325553b          	divuw	a0,a0,s2
    80004310:	fcf772e3          	bgeu	a4,a5,800042d4 <_Z8printIntiii+0x64>
    if(neg)
    80004314:	00058c63          	beqz	a1,8000432c <_Z8printIntiii+0xbc>
        buf[i++] = '-';
    80004318:	fd040793          	addi	a5,s0,-48
    8000431c:	009784b3          	add	s1,a5,s1
    80004320:	02d00793          	li	a5,45
    80004324:	fef48823          	sb	a5,-16(s1)
    80004328:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    8000432c:	fff4849b          	addiw	s1,s1,-1
    80004330:	0204c463          	bltz	s1,80004358 <_Z8printIntiii+0xe8>
        putc(buf[i]);
    80004334:	fd040793          	addi	a5,s0,-48
    80004338:	009787b3          	add	a5,a5,s1
    8000433c:	ff07c503          	lbu	a0,-16(a5)
    80004340:	ffffd097          	auipc	ra,0xffffd
    80004344:	0f0080e7          	jalr	240(ra) # 80001430 <_Z4putcc>
    80004348:	fe5ff06f          	j	8000432c <_Z8printIntiii+0xbc>
        x = -xx;
    8000434c:	4090053b          	negw	a0,s1
        neg = 1;
    80004350:	00100593          	li	a1,1
        x = -xx;
    80004354:	f7dff06f          	j	800042d0 <_Z8printIntiii+0x60>

    UNLOCK();
    80004358:	00000613          	li	a2,0
    8000435c:	00100593          	li	a1,1
    80004360:	00006517          	auipc	a0,0x6
    80004364:	c1050513          	addi	a0,a0,-1008 # 80009f70 <lockPrint>
    80004368:	ffffd097          	auipc	ra,0xffffd
    8000436c:	dbc080e7          	jalr	-580(ra) # 80001124 <copy_and_swap>
    80004370:	fe0514e3          	bnez	a0,80004358 <_Z8printIntiii+0xe8>
    80004374:	03813083          	ld	ra,56(sp)
    80004378:	03013403          	ld	s0,48(sp)
    8000437c:	02813483          	ld	s1,40(sp)
    80004380:	02013903          	ld	s2,32(sp)
    80004384:	01813983          	ld	s3,24(sp)
    80004388:	04010113          	addi	sp,sp,64
    8000438c:	00008067          	ret

0000000080004390 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004390:	fd010113          	addi	sp,sp,-48
    80004394:	02113423          	sd	ra,40(sp)
    80004398:	02813023          	sd	s0,32(sp)
    8000439c:	00913c23          	sd	s1,24(sp)
    800043a0:	01213823          	sd	s2,16(sp)
    800043a4:	01313423          	sd	s3,8(sp)
    800043a8:	03010413          	addi	s0,sp,48
    800043ac:	00050493          	mv	s1,a0
    800043b0:	00058913          	mv	s2,a1
    800043b4:	0015879b          	addiw	a5,a1,1
    800043b8:	0007851b          	sext.w	a0,a5
    800043bc:	00f4a023          	sw	a5,0(s1)
    800043c0:	0004a823          	sw	zero,16(s1)
    800043c4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800043c8:	00251513          	slli	a0,a0,0x2
    800043cc:	ffffd097          	auipc	ra,0xffffd
    800043d0:	d78080e7          	jalr	-648(ra) # 80001144 <_Z9mem_allocm>
    800043d4:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800043d8:	01000513          	li	a0,16
    800043dc:	ffffd097          	auipc	ra,0xffffd
    800043e0:	4c4080e7          	jalr	1220(ra) # 800018a0 <_Znwm>
    800043e4:	00050993          	mv	s3,a0
    800043e8:	00000593          	li	a1,0
    800043ec:	ffffd097          	auipc	ra,0xffffd
    800043f0:	76c080e7          	jalr	1900(ra) # 80001b58 <_ZN9SemaphoreC1Ej>
    800043f4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800043f8:	01000513          	li	a0,16
    800043fc:	ffffd097          	auipc	ra,0xffffd
    80004400:	4a4080e7          	jalr	1188(ra) # 800018a0 <_Znwm>
    80004404:	00050993          	mv	s3,a0
    80004408:	00090593          	mv	a1,s2
    8000440c:	ffffd097          	auipc	ra,0xffffd
    80004410:	74c080e7          	jalr	1868(ra) # 80001b58 <_ZN9SemaphoreC1Ej>
    80004414:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80004418:	01000513          	li	a0,16
    8000441c:	ffffd097          	auipc	ra,0xffffd
    80004420:	484080e7          	jalr	1156(ra) # 800018a0 <_Znwm>
    80004424:	00050913          	mv	s2,a0
    80004428:	00100593          	li	a1,1
    8000442c:	ffffd097          	auipc	ra,0xffffd
    80004430:	72c080e7          	jalr	1836(ra) # 80001b58 <_ZN9SemaphoreC1Ej>
    80004434:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80004438:	01000513          	li	a0,16
    8000443c:	ffffd097          	auipc	ra,0xffffd
    80004440:	464080e7          	jalr	1124(ra) # 800018a0 <_Znwm>
    80004444:	00050913          	mv	s2,a0
    80004448:	00100593          	li	a1,1
    8000444c:	ffffd097          	auipc	ra,0xffffd
    80004450:	70c080e7          	jalr	1804(ra) # 80001b58 <_ZN9SemaphoreC1Ej>
    80004454:	0324b823          	sd	s2,48(s1)
}
    80004458:	02813083          	ld	ra,40(sp)
    8000445c:	02013403          	ld	s0,32(sp)
    80004460:	01813483          	ld	s1,24(sp)
    80004464:	01013903          	ld	s2,16(sp)
    80004468:	00813983          	ld	s3,8(sp)
    8000446c:	03010113          	addi	sp,sp,48
    80004470:	00008067          	ret
    80004474:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80004478:	00098513          	mv	a0,s3
    8000447c:	ffffd097          	auipc	ra,0xffffd
    80004480:	474080e7          	jalr	1140(ra) # 800018f0 <_ZdlPv>
    80004484:	00048513          	mv	a0,s1
    80004488:	00007097          	auipc	ra,0x7
    8000448c:	bc0080e7          	jalr	-1088(ra) # 8000b048 <_Unwind_Resume>
    80004490:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80004494:	00098513          	mv	a0,s3
    80004498:	ffffd097          	auipc	ra,0xffffd
    8000449c:	458080e7          	jalr	1112(ra) # 800018f0 <_ZdlPv>
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00007097          	auipc	ra,0x7
    800044a8:	ba4080e7          	jalr	-1116(ra) # 8000b048 <_Unwind_Resume>
    800044ac:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    800044b0:	00090513          	mv	a0,s2
    800044b4:	ffffd097          	auipc	ra,0xffffd
    800044b8:	43c080e7          	jalr	1084(ra) # 800018f0 <_ZdlPv>
    800044bc:	00048513          	mv	a0,s1
    800044c0:	00007097          	auipc	ra,0x7
    800044c4:	b88080e7          	jalr	-1144(ra) # 8000b048 <_Unwind_Resume>
    800044c8:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800044cc:	00090513          	mv	a0,s2
    800044d0:	ffffd097          	auipc	ra,0xffffd
    800044d4:	420080e7          	jalr	1056(ra) # 800018f0 <_ZdlPv>
    800044d8:	00048513          	mv	a0,s1
    800044dc:	00007097          	auipc	ra,0x7
    800044e0:	b6c080e7          	jalr	-1172(ra) # 8000b048 <_Unwind_Resume>

00000000800044e4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800044e4:	fe010113          	addi	sp,sp,-32
    800044e8:	00113c23          	sd	ra,24(sp)
    800044ec:	00813823          	sd	s0,16(sp)
    800044f0:	00913423          	sd	s1,8(sp)
    800044f4:	01213023          	sd	s2,0(sp)
    800044f8:	02010413          	addi	s0,sp,32
    800044fc:	00050493          	mv	s1,a0
    80004500:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80004504:	01853503          	ld	a0,24(a0)
    80004508:	ffffd097          	auipc	ra,0xffffd
    8000450c:	688080e7          	jalr	1672(ra) # 80001b90 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80004510:	0304b503          	ld	a0,48(s1)
    80004514:	ffffd097          	auipc	ra,0xffffd
    80004518:	67c080e7          	jalr	1660(ra) # 80001b90 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    8000451c:	0084b783          	ld	a5,8(s1)
    80004520:	0144a703          	lw	a4,20(s1)
    80004524:	00271713          	slli	a4,a4,0x2
    80004528:	00e787b3          	add	a5,a5,a4
    8000452c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004530:	0144a783          	lw	a5,20(s1)
    80004534:	0017879b          	addiw	a5,a5,1
    80004538:	0004a703          	lw	a4,0(s1)
    8000453c:	02e7e7bb          	remw	a5,a5,a4
    80004540:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80004544:	0304b503          	ld	a0,48(s1)
    80004548:	ffffd097          	auipc	ra,0xffffd
    8000454c:	674080e7          	jalr	1652(ra) # 80001bbc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80004550:	0204b503          	ld	a0,32(s1)
    80004554:	ffffd097          	auipc	ra,0xffffd
    80004558:	668080e7          	jalr	1640(ra) # 80001bbc <_ZN9Semaphore6signalEv>

}
    8000455c:	01813083          	ld	ra,24(sp)
    80004560:	01013403          	ld	s0,16(sp)
    80004564:	00813483          	ld	s1,8(sp)
    80004568:	00013903          	ld	s2,0(sp)
    8000456c:	02010113          	addi	sp,sp,32
    80004570:	00008067          	ret

0000000080004574 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80004574:	fe010113          	addi	sp,sp,-32
    80004578:	00113c23          	sd	ra,24(sp)
    8000457c:	00813823          	sd	s0,16(sp)
    80004580:	00913423          	sd	s1,8(sp)
    80004584:	01213023          	sd	s2,0(sp)
    80004588:	02010413          	addi	s0,sp,32
    8000458c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80004590:	02053503          	ld	a0,32(a0)
    80004594:	ffffd097          	auipc	ra,0xffffd
    80004598:	5fc080e7          	jalr	1532(ra) # 80001b90 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000459c:	0284b503          	ld	a0,40(s1)
    800045a0:	ffffd097          	auipc	ra,0xffffd
    800045a4:	5f0080e7          	jalr	1520(ra) # 80001b90 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800045a8:	0084b703          	ld	a4,8(s1)
    800045ac:	0104a783          	lw	a5,16(s1)
    800045b0:	00279693          	slli	a3,a5,0x2
    800045b4:	00d70733          	add	a4,a4,a3
    800045b8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800045bc:	0017879b          	addiw	a5,a5,1
    800045c0:	0004a703          	lw	a4,0(s1)
    800045c4:	02e7e7bb          	remw	a5,a5,a4
    800045c8:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800045cc:	0284b503          	ld	a0,40(s1)
    800045d0:	ffffd097          	auipc	ra,0xffffd
    800045d4:	5ec080e7          	jalr	1516(ra) # 80001bbc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800045d8:	0184b503          	ld	a0,24(s1)
    800045dc:	ffffd097          	auipc	ra,0xffffd
    800045e0:	5e0080e7          	jalr	1504(ra) # 80001bbc <_ZN9Semaphore6signalEv>

    return ret;
}
    800045e4:	00090513          	mv	a0,s2
    800045e8:	01813083          	ld	ra,24(sp)
    800045ec:	01013403          	ld	s0,16(sp)
    800045f0:	00813483          	ld	s1,8(sp)
    800045f4:	00013903          	ld	s2,0(sp)
    800045f8:	02010113          	addi	sp,sp,32
    800045fc:	00008067          	ret

0000000080004600 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	01213023          	sd	s2,0(sp)
    80004614:	02010413          	addi	s0,sp,32
    80004618:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    8000461c:	02853503          	ld	a0,40(a0)
    80004620:	ffffd097          	auipc	ra,0xffffd
    80004624:	570080e7          	jalr	1392(ra) # 80001b90 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80004628:	0304b503          	ld	a0,48(s1)
    8000462c:	ffffd097          	auipc	ra,0xffffd
    80004630:	564080e7          	jalr	1380(ra) # 80001b90 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80004634:	0144a783          	lw	a5,20(s1)
    80004638:	0104a903          	lw	s2,16(s1)
    8000463c:	0327ce63          	blt	a5,s2,80004678 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80004640:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80004644:	0304b503          	ld	a0,48(s1)
    80004648:	ffffd097          	auipc	ra,0xffffd
    8000464c:	574080e7          	jalr	1396(ra) # 80001bbc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80004650:	0284b503          	ld	a0,40(s1)
    80004654:	ffffd097          	auipc	ra,0xffffd
    80004658:	568080e7          	jalr	1384(ra) # 80001bbc <_ZN9Semaphore6signalEv>

    return ret;
}
    8000465c:	00090513          	mv	a0,s2
    80004660:	01813083          	ld	ra,24(sp)
    80004664:	01013403          	ld	s0,16(sp)
    80004668:	00813483          	ld	s1,8(sp)
    8000466c:	00013903          	ld	s2,0(sp)
    80004670:	02010113          	addi	sp,sp,32
    80004674:	00008067          	ret
        ret = cap - head + tail;
    80004678:	0004a703          	lw	a4,0(s1)
    8000467c:	4127093b          	subw	s2,a4,s2
    80004680:	00f9093b          	addw	s2,s2,a5
    80004684:	fc1ff06f          	j	80004644 <_ZN9BufferCPP6getCntEv+0x44>

0000000080004688 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80004688:	fe010113          	addi	sp,sp,-32
    8000468c:	00113c23          	sd	ra,24(sp)
    80004690:	00813823          	sd	s0,16(sp)
    80004694:	00913423          	sd	s1,8(sp)
    80004698:	02010413          	addi	s0,sp,32
    8000469c:	00050493          	mv	s1,a0
    Console::putc('\n');
    800046a0:	00a00513          	li	a0,10
    800046a4:	ffffd097          	auipc	ra,0xffffd
    800046a8:	598080e7          	jalr	1432(ra) # 80001c3c <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    800046ac:	00004517          	auipc	a0,0x4
    800046b0:	b5450513          	addi	a0,a0,-1196 # 80008200 <kvmincrease+0xc20>
    800046b4:	00000097          	auipc	ra,0x0
    800046b8:	a0c080e7          	jalr	-1524(ra) # 800040c0 <_Z11printStringPKc>
    while (getCnt()) {
    800046bc:	00048513          	mv	a0,s1
    800046c0:	00000097          	auipc	ra,0x0
    800046c4:	f40080e7          	jalr	-192(ra) # 80004600 <_ZN9BufferCPP6getCntEv>
    800046c8:	02050c63          	beqz	a0,80004700 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800046cc:	0084b783          	ld	a5,8(s1)
    800046d0:	0104a703          	lw	a4,16(s1)
    800046d4:	00271713          	slli	a4,a4,0x2
    800046d8:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800046dc:	0007c503          	lbu	a0,0(a5)
    800046e0:	ffffd097          	auipc	ra,0xffffd
    800046e4:	55c080e7          	jalr	1372(ra) # 80001c3c <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800046e8:	0104a783          	lw	a5,16(s1)
    800046ec:	0017879b          	addiw	a5,a5,1
    800046f0:	0004a703          	lw	a4,0(s1)
    800046f4:	02e7e7bb          	remw	a5,a5,a4
    800046f8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800046fc:	fc1ff06f          	j	800046bc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80004700:	02100513          	li	a0,33
    80004704:	ffffd097          	auipc	ra,0xffffd
    80004708:	538080e7          	jalr	1336(ra) # 80001c3c <_ZN7Console4putcEc>
    Console::putc('\n');
    8000470c:	00a00513          	li	a0,10
    80004710:	ffffd097          	auipc	ra,0xffffd
    80004714:	52c080e7          	jalr	1324(ra) # 80001c3c <_ZN7Console4putcEc>
    mem_free(buffer);
    80004718:	0084b503          	ld	a0,8(s1)
    8000471c:	ffffd097          	auipc	ra,0xffffd
    80004720:	a54080e7          	jalr	-1452(ra) # 80001170 <_Z8mem_freePv>
    delete itemAvailable;
    80004724:	0204b503          	ld	a0,32(s1)
    80004728:	00050863          	beqz	a0,80004738 <_ZN9BufferCPPD1Ev+0xb0>
    8000472c:	00053783          	ld	a5,0(a0)
    80004730:	0087b783          	ld	a5,8(a5)
    80004734:	000780e7          	jalr	a5
    delete spaceAvailable;
    80004738:	0184b503          	ld	a0,24(s1)
    8000473c:	00050863          	beqz	a0,8000474c <_ZN9BufferCPPD1Ev+0xc4>
    80004740:	00053783          	ld	a5,0(a0)
    80004744:	0087b783          	ld	a5,8(a5)
    80004748:	000780e7          	jalr	a5
    delete mutexTail;
    8000474c:	0304b503          	ld	a0,48(s1)
    80004750:	00050863          	beqz	a0,80004760 <_ZN9BufferCPPD1Ev+0xd8>
    80004754:	00053783          	ld	a5,0(a0)
    80004758:	0087b783          	ld	a5,8(a5)
    8000475c:	000780e7          	jalr	a5
    delete mutexHead;
    80004760:	0284b503          	ld	a0,40(s1)
    80004764:	00050863          	beqz	a0,80004774 <_ZN9BufferCPPD1Ev+0xec>
    80004768:	00053783          	ld	a5,0(a0)
    8000476c:	0087b783          	ld	a5,8(a5)
    80004770:	000780e7          	jalr	a5
}
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	02010113          	addi	sp,sp,32
    80004784:	00008067          	ret

0000000080004788 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_API_test.hpp"
#include "System_Mode_test.hpp"

#endif

void userMain() {
    80004788:	fe010113          	addi	sp,sp,-32
    8000478c:	00113c23          	sd	ra,24(sp)
    80004790:	00813823          	sd	s0,16(sp)
    80004794:	00913423          	sd	s1,8(sp)
    80004798:	01213023          	sd	s2,0(sp)
    8000479c:	02010413          	addi	s0,sp,32
    printString("Unesite broj testa? [1-7]\n");
    800047a0:	00004517          	auipc	a0,0x4
    800047a4:	a7850513          	addi	a0,a0,-1416 # 80008218 <kvmincrease+0xc38>
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	918080e7          	jalr	-1768(ra) # 800040c0 <_Z11printStringPKc>
    int test = getc() - '0';
    800047b0:	ffffd097          	auipc	ra,0xffffd
    800047b4:	c54080e7          	jalr	-940(ra) # 80001404 <_Z4getcv>
    800047b8:	00050913          	mv	s2,a0
    800047bc:	fd05049b          	addiw	s1,a0,-48
    getc(); // Enter posle broja
    800047c0:	ffffd097          	auipc	ra,0xffffd
    800047c4:	c44080e7          	jalr	-956(ra) # 80001404 <_Z4getcv>
            printString("Nije navedeno da je zadatak 3 implementiran\n");
            return;
        }
    }

    if (test >= 5 && test <= 6) {
    800047c8:	fcb9091b          	addiw	s2,s2,-53
    800047cc:	00100793          	li	a5,1
    800047d0:	0327f463          	bgeu	a5,s2,800047f8 <_Z8userMainv+0x70>
            printString("Nije navedeno da je zadatak 4 implementiran\n");
            return;
        }
    }

    switch (test) {
    800047d4:	00700793          	li	a5,7
    800047d8:	0e97e263          	bltu	a5,s1,800048bc <_Z8userMainv+0x134>
    800047dc:	00249493          	slli	s1,s1,0x2
    800047e0:	00004717          	auipc	a4,0x4
    800047e4:	c5070713          	addi	a4,a4,-944 # 80008430 <kvmincrease+0xe50>
    800047e8:	00e484b3          	add	s1,s1,a4
    800047ec:	0004a783          	lw	a5,0(s1)
    800047f0:	00e787b3          	add	a5,a5,a4
    800047f4:	00078067          	jr	a5
            printString("Nije navedeno da je zadatak 4 implementiran\n");
    800047f8:	00004517          	auipc	a0,0x4
    800047fc:	a4050513          	addi	a0,a0,-1472 # 80008238 <kvmincrease+0xc58>
    80004800:	00000097          	auipc	ra,0x0
    80004804:	8c0080e7          	jalr	-1856(ra) # 800040c0 <_Z11printStringPKc>
#endif
            break;
        default:
            printString("Niste uneli odgovarajuci broj za test\n");
    }
    80004808:	01813083          	ld	ra,24(sp)
    8000480c:	01013403          	ld	s0,16(sp)
    80004810:	00813483          	ld	s1,8(sp)
    80004814:	00013903          	ld	s2,0(sp)
    80004818:	02010113          	addi	sp,sp,32
    8000481c:	00008067          	ret
            Threads_C_API_test();
    80004820:	fffff097          	auipc	ra,0xfffff
    80004824:	f18080e7          	jalr	-232(ra) # 80003738 <_Z18Threads_C_API_testv>
            printString("TEST 1 (zadatak 2, niti C API i sinhrona promena konteksta)\n");
    80004828:	00004517          	auipc	a0,0x4
    8000482c:	a4050513          	addi	a0,a0,-1472 # 80008268 <kvmincrease+0xc88>
    80004830:	00000097          	auipc	ra,0x0
    80004834:	890080e7          	jalr	-1904(ra) # 800040c0 <_Z11printStringPKc>
            break;
    80004838:	fd1ff06f          	j	80004808 <_Z8userMainv+0x80>
            Threads_CPP_API_test();
    8000483c:	ffffe097          	auipc	ra,0xffffe
    80004840:	560080e7          	jalr	1376(ra) # 80002d9c <_Z20Threads_CPP_API_testv>
            printString("TEST 2 (zadatak 2., niti CPP API i sinhrona promena konteksta)\n");
    80004844:	00004517          	auipc	a0,0x4
    80004848:	a6450513          	addi	a0,a0,-1436 # 800082a8 <kvmincrease+0xcc8>
    8000484c:	00000097          	auipc	ra,0x0
    80004850:	874080e7          	jalr	-1932(ra) # 800040c0 <_Z11printStringPKc>
            break;
    80004854:	fb5ff06f          	j	80004808 <_Z8userMainv+0x80>
            producerConsumer_C_API();
    80004858:	ffffe097          	auipc	ra,0xffffe
    8000485c:	d98080e7          	jalr	-616(ra) # 800025f0 <_Z22producerConsumer_C_APIv>
            printString("TEST 3 (zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta)\n");
    80004860:	00004517          	auipc	a0,0x4
    80004864:	a8850513          	addi	a0,a0,-1400 # 800082e8 <kvmincrease+0xd08>
    80004868:	00000097          	auipc	ra,0x0
    8000486c:	858080e7          	jalr	-1960(ra) # 800040c0 <_Z11printStringPKc>
            break;
    80004870:	f99ff06f          	j	80004808 <_Z8userMainv+0x80>
            producerConsumer_CPP_Sync_API();
    80004874:	fffff097          	auipc	ra,0xfffff
    80004878:	208080e7          	jalr	520(ra) # 80003a7c <_Z29producerConsumer_CPP_Sync_APIv>
            printString("TEST 4 (zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta)\n");
    8000487c:	00004517          	auipc	a0,0x4
    80004880:	abc50513          	addi	a0,a0,-1348 # 80008338 <kvmincrease+0xd58>
    80004884:	00000097          	auipc	ra,0x0
    80004888:	83c080e7          	jalr	-1988(ra) # 800040c0 <_Z11printStringPKc>
            break;
    8000488c:	f7dff06f          	j	80004808 <_Z8userMainv+0x80>
            System_Mode_test();
    80004890:	00000097          	auipc	ra,0x0
    80004894:	52c080e7          	jalr	1324(ra) # 80004dbc <_Z16System_Mode_testv>
            printString("Test se nije uspesno zavrsio\n");
    80004898:	00004517          	auipc	a0,0x4
    8000489c:	af850513          	addi	a0,a0,-1288 # 80008390 <kvmincrease+0xdb0>
    800048a0:	00000097          	auipc	ra,0x0
    800048a4:	820080e7          	jalr	-2016(ra) # 800040c0 <_Z11printStringPKc>
            printString("TEST 7 (zadatak 2., testiranje da li se korisnicki kod izvrsava u korisnickom rezimu)\n");
    800048a8:	00004517          	auipc	a0,0x4
    800048ac:	b0850513          	addi	a0,a0,-1272 # 800083b0 <kvmincrease+0xdd0>
    800048b0:	00000097          	auipc	ra,0x0
    800048b4:	810080e7          	jalr	-2032(ra) # 800040c0 <_Z11printStringPKc>
            break;
    800048b8:	f51ff06f          	j	80004808 <_Z8userMainv+0x80>
            printString("Niste uneli odgovarajuci broj za test\n");
    800048bc:	00004517          	auipc	a0,0x4
    800048c0:	b4c50513          	addi	a0,a0,-1204 # 80008408 <kvmincrease+0xe28>
    800048c4:	fffff097          	auipc	ra,0xfffff
    800048c8:	7fc080e7          	jalr	2044(ra) # 800040c0 <_Z11printStringPKc>
    800048cc:	f3dff06f          	j	80004808 <_Z8userMainv+0x80>

00000000800048d0 <_ZL9fibonaccim>:
static volatile bool finishedA = false;
static volatile bool finishedB = false;
static volatile bool finishedC = false;
static volatile bool finishedD = false;

static uint64 fibonacci(uint64 n) {
    800048d0:	fe010113          	addi	sp,sp,-32
    800048d4:	00113c23          	sd	ra,24(sp)
    800048d8:	00813823          	sd	s0,16(sp)
    800048dc:	00913423          	sd	s1,8(sp)
    800048e0:	01213023          	sd	s2,0(sp)
    800048e4:	02010413          	addi	s0,sp,32
    800048e8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800048ec:	00100793          	li	a5,1
    800048f0:	02a7f863          	bgeu	a5,a0,80004920 <_ZL9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800048f4:	00a00793          	li	a5,10
    800048f8:	02f577b3          	remu	a5,a0,a5
    800048fc:	02078e63          	beqz	a5,80004938 <_ZL9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80004900:	fff48513          	addi	a0,s1,-1
    80004904:	00000097          	auipc	ra,0x0
    80004908:	fcc080e7          	jalr	-52(ra) # 800048d0 <_ZL9fibonaccim>
    8000490c:	00050913          	mv	s2,a0
    80004910:	ffe48513          	addi	a0,s1,-2
    80004914:	00000097          	auipc	ra,0x0
    80004918:	fbc080e7          	jalr	-68(ra) # 800048d0 <_ZL9fibonaccim>
    8000491c:	00a90533          	add	a0,s2,a0
}
    80004920:	01813083          	ld	ra,24(sp)
    80004924:	01013403          	ld	s0,16(sp)
    80004928:	00813483          	ld	s1,8(sp)
    8000492c:	00013903          	ld	s2,0(sp)
    80004930:	02010113          	addi	sp,sp,32
    80004934:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80004938:	ffffd097          	auipc	ra,0xffffd
    8000493c:	9ac080e7          	jalr	-1620(ra) # 800012e4 <_Z15thread_dispatchv>
    80004940:	fc1ff06f          	j	80004900 <_ZL9fibonaccim+0x30>

0000000080004944 <_ZL11workerBodyDPv>:
    printString("A finished!\n");
    finishedC = true;
    thread_dispatch();
}

static void workerBodyD(void* arg) {
    80004944:	fe010113          	addi	sp,sp,-32
    80004948:	00113c23          	sd	ra,24(sp)
    8000494c:	00813823          	sd	s0,16(sp)
    80004950:	00913423          	sd	s1,8(sp)
    80004954:	01213023          	sd	s2,0(sp)
    80004958:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    8000495c:	00a00493          	li	s1,10
    80004960:	0400006f          	j	800049a0 <_ZL11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004964:	00004517          	auipc	a0,0x4
    80004968:	80450513          	addi	a0,a0,-2044 # 80008168 <kvmincrease+0xb88>
    8000496c:	fffff097          	auipc	ra,0xfffff
    80004970:	754080e7          	jalr	1876(ra) # 800040c0 <_Z11printStringPKc>
    80004974:	00000613          	li	a2,0
    80004978:	00a00593          	li	a1,10
    8000497c:	00048513          	mv	a0,s1
    80004980:	00000097          	auipc	ra,0x0
    80004984:	8f0080e7          	jalr	-1808(ra) # 80004270 <_Z8printIntiii>
    80004988:	00004517          	auipc	a0,0x4
    8000498c:	a0050513          	addi	a0,a0,-1536 # 80008388 <kvmincrease+0xda8>
    80004990:	fffff097          	auipc	ra,0xfffff
    80004994:	730080e7          	jalr	1840(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80004998:	0014849b          	addiw	s1,s1,1
    8000499c:	0ff4f493          	andi	s1,s1,255
    800049a0:	00c00793          	li	a5,12
    800049a4:	fc97f0e3          	bgeu	a5,s1,80004964 <_ZL11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800049a8:	00003517          	auipc	a0,0x3
    800049ac:	7c850513          	addi	a0,a0,1992 # 80008170 <kvmincrease+0xb90>
    800049b0:	fffff097          	auipc	ra,0xfffff
    800049b4:	710080e7          	jalr	1808(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800049b8:	00500313          	li	t1,5
    thread_dispatch();
    800049bc:	ffffd097          	auipc	ra,0xffffd
    800049c0:	928080e7          	jalr	-1752(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800049c4:	01000513          	li	a0,16
    800049c8:	00000097          	auipc	ra,0x0
    800049cc:	f08080e7          	jalr	-248(ra) # 800048d0 <_ZL9fibonaccim>
    800049d0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800049d4:	00003517          	auipc	a0,0x3
    800049d8:	7ac50513          	addi	a0,a0,1964 # 80008180 <kvmincrease+0xba0>
    800049dc:	fffff097          	auipc	ra,0xfffff
    800049e0:	6e4080e7          	jalr	1764(ra) # 800040c0 <_Z11printStringPKc>
    800049e4:	00000613          	li	a2,0
    800049e8:	00a00593          	li	a1,10
    800049ec:	0009051b          	sext.w	a0,s2
    800049f0:	00000097          	auipc	ra,0x0
    800049f4:	880080e7          	jalr	-1920(ra) # 80004270 <_Z8printIntiii>
    800049f8:	00004517          	auipc	a0,0x4
    800049fc:	99050513          	addi	a0,a0,-1648 # 80008388 <kvmincrease+0xda8>
    80004a00:	fffff097          	auipc	ra,0xfffff
    80004a04:	6c0080e7          	jalr	1728(ra) # 800040c0 <_Z11printStringPKc>
    80004a08:	0400006f          	j	80004a48 <_ZL11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80004a0c:	00003517          	auipc	a0,0x3
    80004a10:	75c50513          	addi	a0,a0,1884 # 80008168 <kvmincrease+0xb88>
    80004a14:	fffff097          	auipc	ra,0xfffff
    80004a18:	6ac080e7          	jalr	1708(ra) # 800040c0 <_Z11printStringPKc>
    80004a1c:	00000613          	li	a2,0
    80004a20:	00a00593          	li	a1,10
    80004a24:	00048513          	mv	a0,s1
    80004a28:	00000097          	auipc	ra,0x0
    80004a2c:	848080e7          	jalr	-1976(ra) # 80004270 <_Z8printIntiii>
    80004a30:	00004517          	auipc	a0,0x4
    80004a34:	95850513          	addi	a0,a0,-1704 # 80008388 <kvmincrease+0xda8>
    80004a38:	fffff097          	auipc	ra,0xfffff
    80004a3c:	688080e7          	jalr	1672(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80004a40:	0014849b          	addiw	s1,s1,1
    80004a44:	0ff4f493          	andi	s1,s1,255
    80004a48:	00f00793          	li	a5,15
    80004a4c:	fc97f0e3          	bgeu	a5,s1,80004a0c <_ZL11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80004a50:	00003517          	auipc	a0,0x3
    80004a54:	74050513          	addi	a0,a0,1856 # 80008190 <kvmincrease+0xbb0>
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	668080e7          	jalr	1640(ra) # 800040c0 <_Z11printStringPKc>
    finishedD = true;
    80004a60:	00100793          	li	a5,1
    80004a64:	00005717          	auipc	a4,0x5
    80004a68:	50f70a23          	sb	a5,1300(a4) # 80009f78 <_ZL9finishedD>
    thread_dispatch();
    80004a6c:	ffffd097          	auipc	ra,0xffffd
    80004a70:	878080e7          	jalr	-1928(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80004a74:	01813083          	ld	ra,24(sp)
    80004a78:	01013403          	ld	s0,16(sp)
    80004a7c:	00813483          	ld	s1,8(sp)
    80004a80:	00013903          	ld	s2,0(sp)
    80004a84:	02010113          	addi	sp,sp,32
    80004a88:	00008067          	ret

0000000080004a8c <_ZL11workerBodyCPv>:
static void workerBodyC(void* arg) {
    80004a8c:	fe010113          	addi	sp,sp,-32
    80004a90:	00113c23          	sd	ra,24(sp)
    80004a94:	00813823          	sd	s0,16(sp)
    80004a98:	00913423          	sd	s1,8(sp)
    80004a9c:	01213023          	sd	s2,0(sp)
    80004aa0:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80004aa4:	00000493          	li	s1,0
    80004aa8:	0400006f          	j	80004ae8 <_ZL11workerBodyCPv+0x5c>
        printString("C: i="); printInt(i); printString("\n");
    80004aac:	00003517          	auipc	a0,0x3
    80004ab0:	68c50513          	addi	a0,a0,1676 # 80008138 <kvmincrease+0xb58>
    80004ab4:	fffff097          	auipc	ra,0xfffff
    80004ab8:	60c080e7          	jalr	1548(ra) # 800040c0 <_Z11printStringPKc>
    80004abc:	00000613          	li	a2,0
    80004ac0:	00a00593          	li	a1,10
    80004ac4:	00048513          	mv	a0,s1
    80004ac8:	fffff097          	auipc	ra,0xfffff
    80004acc:	7a8080e7          	jalr	1960(ra) # 80004270 <_Z8printIntiii>
    80004ad0:	00004517          	auipc	a0,0x4
    80004ad4:	8b850513          	addi	a0,a0,-1864 # 80008388 <kvmincrease+0xda8>
    80004ad8:	fffff097          	auipc	ra,0xfffff
    80004adc:	5e8080e7          	jalr	1512(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80004ae0:	0014849b          	addiw	s1,s1,1
    80004ae4:	0ff4f493          	andi	s1,s1,255
    80004ae8:	00200793          	li	a5,2
    80004aec:	fc97f0e3          	bgeu	a5,s1,80004aac <_ZL11workerBodyCPv+0x20>
    printString("C: dispatch\n");
    80004af0:	00003517          	auipc	a0,0x3
    80004af4:	65050513          	addi	a0,a0,1616 # 80008140 <kvmincrease+0xb60>
    80004af8:	fffff097          	auipc	ra,0xfffff
    80004afc:	5c8080e7          	jalr	1480(ra) # 800040c0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80004b00:	00700313          	li	t1,7
    thread_dispatch();
    80004b04:	ffffc097          	auipc	ra,0xffffc
    80004b08:	7e0080e7          	jalr	2016(ra) # 800012e4 <_Z15thread_dispatchv>
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80004b0c:	00030913          	mv	s2,t1
    printString("C: t1="); printInt(t1); printString("\n");
    80004b10:	00003517          	auipc	a0,0x3
    80004b14:	64050513          	addi	a0,a0,1600 # 80008150 <kvmincrease+0xb70>
    80004b18:	fffff097          	auipc	ra,0xfffff
    80004b1c:	5a8080e7          	jalr	1448(ra) # 800040c0 <_Z11printStringPKc>
    80004b20:	00000613          	li	a2,0
    80004b24:	00a00593          	li	a1,10
    80004b28:	0009051b          	sext.w	a0,s2
    80004b2c:	fffff097          	auipc	ra,0xfffff
    80004b30:	744080e7          	jalr	1860(ra) # 80004270 <_Z8printIntiii>
    80004b34:	00004517          	auipc	a0,0x4
    80004b38:	85450513          	addi	a0,a0,-1964 # 80008388 <kvmincrease+0xda8>
    80004b3c:	fffff097          	auipc	ra,0xfffff
    80004b40:	584080e7          	jalr	1412(ra) # 800040c0 <_Z11printStringPKc>
    uint64 result = fibonacci(12);
    80004b44:	00c00513          	li	a0,12
    80004b48:	00000097          	auipc	ra,0x0
    80004b4c:	d88080e7          	jalr	-632(ra) # 800048d0 <_ZL9fibonaccim>
    80004b50:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80004b54:	00003517          	auipc	a0,0x3
    80004b58:	60450513          	addi	a0,a0,1540 # 80008158 <kvmincrease+0xb78>
    80004b5c:	fffff097          	auipc	ra,0xfffff
    80004b60:	564080e7          	jalr	1380(ra) # 800040c0 <_Z11printStringPKc>
    80004b64:	00000613          	li	a2,0
    80004b68:	00a00593          	li	a1,10
    80004b6c:	0009051b          	sext.w	a0,s2
    80004b70:	fffff097          	auipc	ra,0xfffff
    80004b74:	700080e7          	jalr	1792(ra) # 80004270 <_Z8printIntiii>
    80004b78:	00004517          	auipc	a0,0x4
    80004b7c:	81050513          	addi	a0,a0,-2032 # 80008388 <kvmincrease+0xda8>
    80004b80:	fffff097          	auipc	ra,0xfffff
    80004b84:	540080e7          	jalr	1344(ra) # 800040c0 <_Z11printStringPKc>
    80004b88:	0400006f          	j	80004bc8 <_ZL11workerBodyCPv+0x13c>
        printString("C: i="); printInt(i); printString("\n");
    80004b8c:	00003517          	auipc	a0,0x3
    80004b90:	5ac50513          	addi	a0,a0,1452 # 80008138 <kvmincrease+0xb58>
    80004b94:	fffff097          	auipc	ra,0xfffff
    80004b98:	52c080e7          	jalr	1324(ra) # 800040c0 <_Z11printStringPKc>
    80004b9c:	00000613          	li	a2,0
    80004ba0:	00a00593          	li	a1,10
    80004ba4:	00048513          	mv	a0,s1
    80004ba8:	fffff097          	auipc	ra,0xfffff
    80004bac:	6c8080e7          	jalr	1736(ra) # 80004270 <_Z8printIntiii>
    80004bb0:	00003517          	auipc	a0,0x3
    80004bb4:	7d850513          	addi	a0,a0,2008 # 80008388 <kvmincrease+0xda8>
    80004bb8:	fffff097          	auipc	ra,0xfffff
    80004bbc:	508080e7          	jalr	1288(ra) # 800040c0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80004bc0:	0014849b          	addiw	s1,s1,1
    80004bc4:	0ff4f493          	andi	s1,s1,255
    80004bc8:	00500793          	li	a5,5
    80004bcc:	fc97f0e3          	bgeu	a5,s1,80004b8c <_ZL11workerBodyCPv+0x100>
    printString("A finished!\n");
    80004bd0:	00003517          	auipc	a0,0x3
    80004bd4:	54050513          	addi	a0,a0,1344 # 80008110 <kvmincrease+0xb30>
    80004bd8:	fffff097          	auipc	ra,0xfffff
    80004bdc:	4e8080e7          	jalr	1256(ra) # 800040c0 <_Z11printStringPKc>
    finishedC = true;
    80004be0:	00100793          	li	a5,1
    80004be4:	00005717          	auipc	a4,0x5
    80004be8:	38f70aa3          	sb	a5,917(a4) # 80009f79 <_ZL9finishedC>
    thread_dispatch();
    80004bec:	ffffc097          	auipc	ra,0xffffc
    80004bf0:	6f8080e7          	jalr	1784(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80004bf4:	01813083          	ld	ra,24(sp)
    80004bf8:	01013403          	ld	s0,16(sp)
    80004bfc:	00813483          	ld	s1,8(sp)
    80004c00:	00013903          	ld	s2,0(sp)
    80004c04:	02010113          	addi	sp,sp,32
    80004c08:	00008067          	ret

0000000080004c0c <_ZL11workerBodyBPv>:
static void workerBodyB(void* arg) {
    80004c0c:	fe010113          	addi	sp,sp,-32
    80004c10:	00113c23          	sd	ra,24(sp)
    80004c14:	00813823          	sd	s0,16(sp)
    80004c18:	00913423          	sd	s1,8(sp)
    80004c1c:	01213023          	sd	s2,0(sp)
    80004c20:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80004c24:	00000913          	li	s2,0
    80004c28:	0400006f          	j	80004c68 <_ZL11workerBodyBPv+0x5c>
            thread_dispatch();
    80004c2c:	ffffc097          	auipc	ra,0xffffc
    80004c30:	6b8080e7          	jalr	1720(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004c34:	00148493          	addi	s1,s1,1
    80004c38:	000027b7          	lui	a5,0x2
    80004c3c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004c40:	0097ee63          	bltu	a5,s1,80004c5c <_ZL11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004c44:	00000713          	li	a4,0
    80004c48:	000077b7          	lui	a5,0x7
    80004c4c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004c50:	fce7eee3          	bltu	a5,a4,80004c2c <_ZL11workerBodyBPv+0x20>
    80004c54:	00170713          	addi	a4,a4,1
    80004c58:	ff1ff06f          	j	80004c48 <_ZL11workerBodyBPv+0x3c>
        if (i == 10) {
    80004c5c:	00a00793          	li	a5,10
    80004c60:	04f90663          	beq	s2,a5,80004cac <_ZL11workerBodyBPv+0xa0>
    for (uint64 i = 0; i < 16; i++) {
    80004c64:	00190913          	addi	s2,s2,1
    80004c68:	00f00793          	li	a5,15
    80004c6c:	0527e463          	bltu	a5,s2,80004cb4 <_ZL11workerBodyBPv+0xa8>
        printString("B: i="); printInt(i); printString("\n");
    80004c70:	00003517          	auipc	a0,0x3
    80004c74:	4b050513          	addi	a0,a0,1200 # 80008120 <kvmincrease+0xb40>
    80004c78:	fffff097          	auipc	ra,0xfffff
    80004c7c:	448080e7          	jalr	1096(ra) # 800040c0 <_Z11printStringPKc>
    80004c80:	00000613          	li	a2,0
    80004c84:	00a00593          	li	a1,10
    80004c88:	0009051b          	sext.w	a0,s2
    80004c8c:	fffff097          	auipc	ra,0xfffff
    80004c90:	5e4080e7          	jalr	1508(ra) # 80004270 <_Z8printIntiii>
    80004c94:	00003517          	auipc	a0,0x3
    80004c98:	6f450513          	addi	a0,a0,1780 # 80008388 <kvmincrease+0xda8>
    80004c9c:	fffff097          	auipc	ra,0xfffff
    80004ca0:	424080e7          	jalr	1060(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004ca4:	00000493          	li	s1,0
    80004ca8:	f91ff06f          	j	80004c38 <_ZL11workerBodyBPv+0x2c>
            asm volatile("csrr t6, sepc");
    80004cac:	14102ff3          	csrr	t6,sepc
    80004cb0:	fb5ff06f          	j	80004c64 <_ZL11workerBodyBPv+0x58>
    printString("B finished!\n");
    80004cb4:	00003517          	auipc	a0,0x3
    80004cb8:	47450513          	addi	a0,a0,1140 # 80008128 <kvmincrease+0xb48>
    80004cbc:	fffff097          	auipc	ra,0xfffff
    80004cc0:	404080e7          	jalr	1028(ra) # 800040c0 <_Z11printStringPKc>
    finishedB = true;
    80004cc4:	00100793          	li	a5,1
    80004cc8:	00005717          	auipc	a4,0x5
    80004ccc:	2af70923          	sb	a5,690(a4) # 80009f7a <_ZL9finishedB>
    thread_dispatch();
    80004cd0:	ffffc097          	auipc	ra,0xffffc
    80004cd4:	614080e7          	jalr	1556(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80004cd8:	01813083          	ld	ra,24(sp)
    80004cdc:	01013403          	ld	s0,16(sp)
    80004ce0:	00813483          	ld	s1,8(sp)
    80004ce4:	00013903          	ld	s2,0(sp)
    80004ce8:	02010113          	addi	sp,sp,32
    80004cec:	00008067          	ret

0000000080004cf0 <_ZL11workerBodyAPv>:
static void workerBodyA(void* arg) {
    80004cf0:	fe010113          	addi	sp,sp,-32
    80004cf4:	00113c23          	sd	ra,24(sp)
    80004cf8:	00813823          	sd	s0,16(sp)
    80004cfc:	00913423          	sd	s1,8(sp)
    80004d00:	01213023          	sd	s2,0(sp)
    80004d04:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80004d08:	00000913          	li	s2,0
    80004d0c:	0380006f          	j	80004d44 <_ZL11workerBodyAPv+0x54>
            thread_dispatch();
    80004d10:	ffffc097          	auipc	ra,0xffffc
    80004d14:	5d4080e7          	jalr	1492(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80004d18:	00148493          	addi	s1,s1,1
    80004d1c:	000027b7          	lui	a5,0x2
    80004d20:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80004d24:	0097ee63          	bltu	a5,s1,80004d40 <_ZL11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80004d28:	00000713          	li	a4,0
    80004d2c:	000077b7          	lui	a5,0x7
    80004d30:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80004d34:	fce7eee3          	bltu	a5,a4,80004d10 <_ZL11workerBodyAPv+0x20>
    80004d38:	00170713          	addi	a4,a4,1
    80004d3c:	ff1ff06f          	j	80004d2c <_ZL11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80004d40:	00190913          	addi	s2,s2,1
    80004d44:	00900793          	li	a5,9
    80004d48:	0527e063          	bltu	a5,s2,80004d88 <_ZL11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80004d4c:	00003517          	auipc	a0,0x3
    80004d50:	3bc50513          	addi	a0,a0,956 # 80008108 <kvmincrease+0xb28>
    80004d54:	fffff097          	auipc	ra,0xfffff
    80004d58:	36c080e7          	jalr	876(ra) # 800040c0 <_Z11printStringPKc>
    80004d5c:	00000613          	li	a2,0
    80004d60:	00a00593          	li	a1,10
    80004d64:	0009051b          	sext.w	a0,s2
    80004d68:	fffff097          	auipc	ra,0xfffff
    80004d6c:	508080e7          	jalr	1288(ra) # 80004270 <_Z8printIntiii>
    80004d70:	00003517          	auipc	a0,0x3
    80004d74:	61850513          	addi	a0,a0,1560 # 80008388 <kvmincrease+0xda8>
    80004d78:	fffff097          	auipc	ra,0xfffff
    80004d7c:	348080e7          	jalr	840(ra) # 800040c0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80004d80:	00000493          	li	s1,0
    80004d84:	f99ff06f          	j	80004d1c <_ZL11workerBodyAPv+0x2c>
    printString("A finished!\n");
    80004d88:	00003517          	auipc	a0,0x3
    80004d8c:	38850513          	addi	a0,a0,904 # 80008110 <kvmincrease+0xb30>
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	330080e7          	jalr	816(ra) # 800040c0 <_Z11printStringPKc>
    finishedA = true;
    80004d98:	00100793          	li	a5,1
    80004d9c:	00005717          	auipc	a4,0x5
    80004da0:	1cf70fa3          	sb	a5,479(a4) # 80009f7b <_ZL9finishedA>
}
    80004da4:	01813083          	ld	ra,24(sp)
    80004da8:	01013403          	ld	s0,16(sp)
    80004dac:	00813483          	ld	s1,8(sp)
    80004db0:	00013903          	ld	s2,0(sp)
    80004db4:	02010113          	addi	sp,sp,32
    80004db8:	00008067          	ret

0000000080004dbc <_Z16System_Mode_testv>:


void System_Mode_test() {
    80004dbc:	fd010113          	addi	sp,sp,-48
    80004dc0:	02113423          	sd	ra,40(sp)
    80004dc4:	02813023          	sd	s0,32(sp)
    80004dc8:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80004dcc:	00000613          	li	a2,0
    80004dd0:	00000597          	auipc	a1,0x0
    80004dd4:	f2058593          	addi	a1,a1,-224 # 80004cf0 <_ZL11workerBodyAPv>
    80004dd8:	fd040513          	addi	a0,s0,-48
    80004ddc:	ffffc097          	auipc	ra,0xffffc
    80004de0:	3c4080e7          	jalr	964(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80004de4:	00003517          	auipc	a0,0x3
    80004de8:	3bc50513          	addi	a0,a0,956 # 800081a0 <kvmincrease+0xbc0>
    80004dec:	fffff097          	auipc	ra,0xfffff
    80004df0:	2d4080e7          	jalr	724(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80004df4:	00000613          	li	a2,0
    80004df8:	00000597          	auipc	a1,0x0
    80004dfc:	e1458593          	addi	a1,a1,-492 # 80004c0c <_ZL11workerBodyBPv>
    80004e00:	fd840513          	addi	a0,s0,-40
    80004e04:	ffffc097          	auipc	ra,0xffffc
    80004e08:	39c080e7          	jalr	924(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80004e0c:	00003517          	auipc	a0,0x3
    80004e10:	3ac50513          	addi	a0,a0,940 # 800081b8 <kvmincrease+0xbd8>
    80004e14:	fffff097          	auipc	ra,0xfffff
    80004e18:	2ac080e7          	jalr	684(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80004e1c:	00000613          	li	a2,0
    80004e20:	00000597          	auipc	a1,0x0
    80004e24:	c6c58593          	addi	a1,a1,-916 # 80004a8c <_ZL11workerBodyCPv>
    80004e28:	fe040513          	addi	a0,s0,-32
    80004e2c:	ffffc097          	auipc	ra,0xffffc
    80004e30:	374080e7          	jalr	884(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80004e34:	00003517          	auipc	a0,0x3
    80004e38:	39c50513          	addi	a0,a0,924 # 800081d0 <kvmincrease+0xbf0>
    80004e3c:	fffff097          	auipc	ra,0xfffff
    80004e40:	284080e7          	jalr	644(ra) # 800040c0 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80004e44:	00000613          	li	a2,0
    80004e48:	00000597          	auipc	a1,0x0
    80004e4c:	afc58593          	addi	a1,a1,-1284 # 80004944 <_ZL11workerBodyDPv>
    80004e50:	fe840513          	addi	a0,s0,-24
    80004e54:	ffffc097          	auipc	ra,0xffffc
    80004e58:	34c080e7          	jalr	844(ra) # 800011a0 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80004e5c:	00003517          	auipc	a0,0x3
    80004e60:	38c50513          	addi	a0,a0,908 # 800081e8 <kvmincrease+0xc08>
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	25c080e7          	jalr	604(ra) # 800040c0 <_Z11printStringPKc>
    80004e6c:	00c0006f          	j	80004e78 <_Z16System_Mode_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80004e70:	ffffc097          	auipc	ra,0xffffc
    80004e74:	474080e7          	jalr	1140(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80004e78:	00005797          	auipc	a5,0x5
    80004e7c:	1037c783          	lbu	a5,259(a5) # 80009f7b <_ZL9finishedA>
    80004e80:	fe0788e3          	beqz	a5,80004e70 <_Z16System_Mode_testv+0xb4>
    80004e84:	00005797          	auipc	a5,0x5
    80004e88:	0f67c783          	lbu	a5,246(a5) # 80009f7a <_ZL9finishedB>
    80004e8c:	fe0782e3          	beqz	a5,80004e70 <_Z16System_Mode_testv+0xb4>
    80004e90:	00005797          	auipc	a5,0x5
    80004e94:	0e97c783          	lbu	a5,233(a5) # 80009f79 <_ZL9finishedC>
    80004e98:	fc078ce3          	beqz	a5,80004e70 <_Z16System_Mode_testv+0xb4>
    80004e9c:	00005797          	auipc	a5,0x5
    80004ea0:	0dc7c783          	lbu	a5,220(a5) # 80009f78 <_ZL9finishedD>
    80004ea4:	fc0786e3          	beqz	a5,80004e70 <_Z16System_Mode_testv+0xb4>
    }

}
    80004ea8:	02813083          	ld	ra,40(sp)
    80004eac:	02013403          	ld	s0,32(sp)
    80004eb0:	03010113          	addi	sp,sp,48
    80004eb4:	00008067          	ret

0000000080004eb8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80004eb8:	fe010113          	addi	sp,sp,-32
    80004ebc:	00113c23          	sd	ra,24(sp)
    80004ec0:	00813823          	sd	s0,16(sp)
    80004ec4:	00913423          	sd	s1,8(sp)
    80004ec8:	01213023          	sd	s2,0(sp)
    80004ecc:	02010413          	addi	s0,sp,32
    80004ed0:	00050493          	mv	s1,a0
    80004ed4:	00058913          	mv	s2,a1
    80004ed8:	0015879b          	addiw	a5,a1,1
    80004edc:	0007851b          	sext.w	a0,a5
    80004ee0:	00f4a023          	sw	a5,0(s1)
    80004ee4:	0004a823          	sw	zero,16(s1)
    80004ee8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80004eec:	00251513          	slli	a0,a0,0x2
    80004ef0:	ffffc097          	auipc	ra,0xffffc
    80004ef4:	254080e7          	jalr	596(ra) # 80001144 <_Z9mem_allocm>
    80004ef8:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80004efc:	00000593          	li	a1,0
    80004f00:	02048513          	addi	a0,s1,32
    80004f04:	ffffc097          	auipc	ra,0xffffc
    80004f08:	404080e7          	jalr	1028(ra) # 80001308 <_Z8sem_openPP3Semj>
    sem_open(&spaceAvailable, _cap);
    80004f0c:	00090593          	mv	a1,s2
    80004f10:	01848513          	addi	a0,s1,24
    80004f14:	ffffc097          	auipc	ra,0xffffc
    80004f18:	3f4080e7          	jalr	1012(ra) # 80001308 <_Z8sem_openPP3Semj>
    sem_open(&mutexHead, 1);
    80004f1c:	00100593          	li	a1,1
    80004f20:	02848513          	addi	a0,s1,40
    80004f24:	ffffc097          	auipc	ra,0xffffc
    80004f28:	3e4080e7          	jalr	996(ra) # 80001308 <_Z8sem_openPP3Semj>
    sem_open(&mutexTail, 1);
    80004f2c:	00100593          	li	a1,1
    80004f30:	03048513          	addi	a0,s1,48
    80004f34:	ffffc097          	auipc	ra,0xffffc
    80004f38:	3d4080e7          	jalr	980(ra) # 80001308 <_Z8sem_openPP3Semj>
}
    80004f3c:	01813083          	ld	ra,24(sp)
    80004f40:	01013403          	ld	s0,16(sp)
    80004f44:	00813483          	ld	s1,8(sp)
    80004f48:	00013903          	ld	s2,0(sp)
    80004f4c:	02010113          	addi	sp,sp,32
    80004f50:	00008067          	ret

0000000080004f54 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80004f54:	fe010113          	addi	sp,sp,-32
    80004f58:	00113c23          	sd	ra,24(sp)
    80004f5c:	00813823          	sd	s0,16(sp)
    80004f60:	00913423          	sd	s1,8(sp)
    80004f64:	01213023          	sd	s2,0(sp)
    80004f68:	02010413          	addi	s0,sp,32
    80004f6c:	00050493          	mv	s1,a0
    80004f70:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80004f74:	01853503          	ld	a0,24(a0)
    80004f78:	ffffc097          	auipc	ra,0xffffc
    80004f7c:	3fc080e7          	jalr	1020(ra) # 80001374 <_Z8sem_waitP3Sem>

    sem_wait(mutexTail);
    80004f80:	0304b503          	ld	a0,48(s1)
    80004f84:	ffffc097          	auipc	ra,0xffffc
    80004f88:	3f0080e7          	jalr	1008(ra) # 80001374 <_Z8sem_waitP3Sem>
    buffer[tail] = val;
    80004f8c:	0084b783          	ld	a5,8(s1)
    80004f90:	0144a703          	lw	a4,20(s1)
    80004f94:	00271713          	slli	a4,a4,0x2
    80004f98:	00e787b3          	add	a5,a5,a4
    80004f9c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80004fa0:	0144a783          	lw	a5,20(s1)
    80004fa4:	0017879b          	addiw	a5,a5,1
    80004fa8:	0004a703          	lw	a4,0(s1)
    80004fac:	02e7e7bb          	remw	a5,a5,a4
    80004fb0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80004fb4:	0304b503          	ld	a0,48(s1)
    80004fb8:	ffffc097          	auipc	ra,0xffffc
    80004fbc:	3ec080e7          	jalr	1004(ra) # 800013a4 <_Z10sem_signalP3Sem>

    sem_signal(itemAvailable);
    80004fc0:	0204b503          	ld	a0,32(s1)
    80004fc4:	ffffc097          	auipc	ra,0xffffc
    80004fc8:	3e0080e7          	jalr	992(ra) # 800013a4 <_Z10sem_signalP3Sem>

}
    80004fcc:	01813083          	ld	ra,24(sp)
    80004fd0:	01013403          	ld	s0,16(sp)
    80004fd4:	00813483          	ld	s1,8(sp)
    80004fd8:	00013903          	ld	s2,0(sp)
    80004fdc:	02010113          	addi	sp,sp,32
    80004fe0:	00008067          	ret

0000000080004fe4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80004fe4:	fe010113          	addi	sp,sp,-32
    80004fe8:	00113c23          	sd	ra,24(sp)
    80004fec:	00813823          	sd	s0,16(sp)
    80004ff0:	00913423          	sd	s1,8(sp)
    80004ff4:	01213023          	sd	s2,0(sp)
    80004ff8:	02010413          	addi	s0,sp,32
    80004ffc:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005000:	02053503          	ld	a0,32(a0)
    80005004:	ffffc097          	auipc	ra,0xffffc
    80005008:	370080e7          	jalr	880(ra) # 80001374 <_Z8sem_waitP3Sem>

    sem_wait(mutexHead);
    8000500c:	0284b503          	ld	a0,40(s1)
    80005010:	ffffc097          	auipc	ra,0xffffc
    80005014:	364080e7          	jalr	868(ra) # 80001374 <_Z8sem_waitP3Sem>

    int ret = buffer[head];
    80005018:	0084b703          	ld	a4,8(s1)
    8000501c:	0104a783          	lw	a5,16(s1)
    80005020:	00279693          	slli	a3,a5,0x2
    80005024:	00d70733          	add	a4,a4,a3
    80005028:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000502c:	0017879b          	addiw	a5,a5,1
    80005030:	0004a703          	lw	a4,0(s1)
    80005034:	02e7e7bb          	remw	a5,a5,a4
    80005038:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000503c:	0284b503          	ld	a0,40(s1)
    80005040:	ffffc097          	auipc	ra,0xffffc
    80005044:	364080e7          	jalr	868(ra) # 800013a4 <_Z10sem_signalP3Sem>

    sem_signal(spaceAvailable);
    80005048:	0184b503          	ld	a0,24(s1)
    8000504c:	ffffc097          	auipc	ra,0xffffc
    80005050:	358080e7          	jalr	856(ra) # 800013a4 <_Z10sem_signalP3Sem>

    return ret;
}
    80005054:	00090513          	mv	a0,s2
    80005058:	01813083          	ld	ra,24(sp)
    8000505c:	01013403          	ld	s0,16(sp)
    80005060:	00813483          	ld	s1,8(sp)
    80005064:	00013903          	ld	s2,0(sp)
    80005068:	02010113          	addi	sp,sp,32
    8000506c:	00008067          	ret

0000000080005070 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005070:	fe010113          	addi	sp,sp,-32
    80005074:	00113c23          	sd	ra,24(sp)
    80005078:	00813823          	sd	s0,16(sp)
    8000507c:	00913423          	sd	s1,8(sp)
    80005080:	01213023          	sd	s2,0(sp)
    80005084:	02010413          	addi	s0,sp,32
    80005088:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000508c:	02853503          	ld	a0,40(a0)
    80005090:	ffffc097          	auipc	ra,0xffffc
    80005094:	2e4080e7          	jalr	740(ra) # 80001374 <_Z8sem_waitP3Sem>
    sem_wait(mutexTail);
    80005098:	0304b503          	ld	a0,48(s1)
    8000509c:	ffffc097          	auipc	ra,0xffffc
    800050a0:	2d8080e7          	jalr	728(ra) # 80001374 <_Z8sem_waitP3Sem>

    if (tail >= head) {
    800050a4:	0144a783          	lw	a5,20(s1)
    800050a8:	0104a903          	lw	s2,16(s1)
    800050ac:	0327ce63          	blt	a5,s2,800050e8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800050b0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800050b4:	0304b503          	ld	a0,48(s1)
    800050b8:	ffffc097          	auipc	ra,0xffffc
    800050bc:	2ec080e7          	jalr	748(ra) # 800013a4 <_Z10sem_signalP3Sem>
    sem_signal(mutexHead);
    800050c0:	0284b503          	ld	a0,40(s1)
    800050c4:	ffffc097          	auipc	ra,0xffffc
    800050c8:	2e0080e7          	jalr	736(ra) # 800013a4 <_Z10sem_signalP3Sem>

    return ret;
}
    800050cc:	00090513          	mv	a0,s2
    800050d0:	01813083          	ld	ra,24(sp)
    800050d4:	01013403          	ld	s0,16(sp)
    800050d8:	00813483          	ld	s1,8(sp)
    800050dc:	00013903          	ld	s2,0(sp)
    800050e0:	02010113          	addi	sp,sp,32
    800050e4:	00008067          	ret
        ret = cap - head + tail;
    800050e8:	0004a703          	lw	a4,0(s1)
    800050ec:	4127093b          	subw	s2,a4,s2
    800050f0:	00f9093b          	addw	s2,s2,a5
    800050f4:	fc1ff06f          	j	800050b4 <_ZN6Buffer6getCntEv+0x44>

00000000800050f8 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800050f8:	fe010113          	addi	sp,sp,-32
    800050fc:	00113c23          	sd	ra,24(sp)
    80005100:	00813823          	sd	s0,16(sp)
    80005104:	00913423          	sd	s1,8(sp)
    80005108:	02010413          	addi	s0,sp,32
    8000510c:	00050493          	mv	s1,a0
    putc('\n');
    80005110:	00a00513          	li	a0,10
    80005114:	ffffc097          	auipc	ra,0xffffc
    80005118:	31c080e7          	jalr	796(ra) # 80001430 <_Z4putcc>
    printString("Buffer deleted!\n");
    8000511c:	00003517          	auipc	a0,0x3
    80005120:	0e450513          	addi	a0,a0,228 # 80008200 <kvmincrease+0xc20>
    80005124:	fffff097          	auipc	ra,0xfffff
    80005128:	f9c080e7          	jalr	-100(ra) # 800040c0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000512c:	00048513          	mv	a0,s1
    80005130:	00000097          	auipc	ra,0x0
    80005134:	f40080e7          	jalr	-192(ra) # 80005070 <_ZN6Buffer6getCntEv>
    80005138:	02a05c63          	blez	a0,80005170 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000513c:	0084b783          	ld	a5,8(s1)
    80005140:	0104a703          	lw	a4,16(s1)
    80005144:	00271713          	slli	a4,a4,0x2
    80005148:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000514c:	0007c503          	lbu	a0,0(a5)
    80005150:	ffffc097          	auipc	ra,0xffffc
    80005154:	2e0080e7          	jalr	736(ra) # 80001430 <_Z4putcc>
        head = (head + 1) % cap;
    80005158:	0104a783          	lw	a5,16(s1)
    8000515c:	0017879b          	addiw	a5,a5,1
    80005160:	0004a703          	lw	a4,0(s1)
    80005164:	02e7e7bb          	remw	a5,a5,a4
    80005168:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000516c:	fc1ff06f          	j	8000512c <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005170:	02100513          	li	a0,33
    80005174:	ffffc097          	auipc	ra,0xffffc
    80005178:	2bc080e7          	jalr	700(ra) # 80001430 <_Z4putcc>
    putc('\n');
    8000517c:	00a00513          	li	a0,10
    80005180:	ffffc097          	auipc	ra,0xffffc
    80005184:	2b0080e7          	jalr	688(ra) # 80001430 <_Z4putcc>
    mem_free(buffer);
    80005188:	0084b503          	ld	a0,8(s1)
    8000518c:	ffffc097          	auipc	ra,0xffffc
    80005190:	fe4080e7          	jalr	-28(ra) # 80001170 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005194:	0204b503          	ld	a0,32(s1)
    80005198:	ffffc097          	auipc	ra,0xffffc
    8000519c:	1ac080e7          	jalr	428(ra) # 80001344 <_Z9sem_closeP3Sem>
    sem_close(spaceAvailable);
    800051a0:	0184b503          	ld	a0,24(s1)
    800051a4:	ffffc097          	auipc	ra,0xffffc
    800051a8:	1a0080e7          	jalr	416(ra) # 80001344 <_Z9sem_closeP3Sem>
    sem_close(mutexTail);
    800051ac:	0304b503          	ld	a0,48(s1)
    800051b0:	ffffc097          	auipc	ra,0xffffc
    800051b4:	194080e7          	jalr	404(ra) # 80001344 <_Z9sem_closeP3Sem>
    sem_close(mutexHead);
    800051b8:	0284b503          	ld	a0,40(s1)
    800051bc:	ffffc097          	auipc	ra,0xffffc
    800051c0:	188080e7          	jalr	392(ra) # 80001344 <_Z9sem_closeP3Sem>
}
    800051c4:	01813083          	ld	ra,24(sp)
    800051c8:	01013403          	ld	s0,16(sp)
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <start>:
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00813423          	sd	s0,8(sp)
    800051e0:	01010413          	addi	s0,sp,16
    800051e4:	300027f3          	csrr	a5,mstatus
    800051e8:	ffffe737          	lui	a4,0xffffe
    800051ec:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff360f>
    800051f0:	00e7f7b3          	and	a5,a5,a4
    800051f4:	00001737          	lui	a4,0x1
    800051f8:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800051fc:	00e7e7b3          	or	a5,a5,a4
    80005200:	30079073          	csrw	mstatus,a5
    80005204:	00000797          	auipc	a5,0x0
    80005208:	16078793          	addi	a5,a5,352 # 80005364 <system_main>
    8000520c:	34179073          	csrw	mepc,a5
    80005210:	00000793          	li	a5,0
    80005214:	18079073          	csrw	satp,a5
    80005218:	000107b7          	lui	a5,0x10
    8000521c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005220:	30279073          	csrw	medeleg,a5
    80005224:	30379073          	csrw	mideleg,a5
    80005228:	104027f3          	csrr	a5,sie
    8000522c:	2227e793          	ori	a5,a5,546
    80005230:	10479073          	csrw	sie,a5
    80005234:	fff00793          	li	a5,-1
    80005238:	00a7d793          	srli	a5,a5,0xa
    8000523c:	3b079073          	csrw	pmpaddr0,a5
    80005240:	00f00793          	li	a5,15
    80005244:	3a079073          	csrw	pmpcfg0,a5
    80005248:	f14027f3          	csrr	a5,mhartid
    8000524c:	0200c737          	lui	a4,0x200c
    80005250:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005254:	0007869b          	sext.w	a3,a5
    80005258:	00269713          	slli	a4,a3,0x2
    8000525c:	000f4637          	lui	a2,0xf4
    80005260:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005264:	00d70733          	add	a4,a4,a3
    80005268:	0037979b          	slliw	a5,a5,0x3
    8000526c:	020046b7          	lui	a3,0x2004
    80005270:	00d787b3          	add	a5,a5,a3
    80005274:	00c585b3          	add	a1,a1,a2
    80005278:	00371693          	slli	a3,a4,0x3
    8000527c:	00005717          	auipc	a4,0x5
    80005280:	d0470713          	addi	a4,a4,-764 # 80009f80 <timer_scratch>
    80005284:	00b7b023          	sd	a1,0(a5)
    80005288:	00d70733          	add	a4,a4,a3
    8000528c:	00f73c23          	sd	a5,24(a4)
    80005290:	02c73023          	sd	a2,32(a4)
    80005294:	34071073          	csrw	mscratch,a4
    80005298:	00000797          	auipc	a5,0x0
    8000529c:	6e878793          	addi	a5,a5,1768 # 80005980 <timervec>
    800052a0:	30579073          	csrw	mtvec,a5
    800052a4:	300027f3          	csrr	a5,mstatus
    800052a8:	0087e793          	ori	a5,a5,8
    800052ac:	30079073          	csrw	mstatus,a5
    800052b0:	304027f3          	csrr	a5,mie
    800052b4:	0807e793          	ori	a5,a5,128
    800052b8:	30479073          	csrw	mie,a5
    800052bc:	f14027f3          	csrr	a5,mhartid
    800052c0:	0007879b          	sext.w	a5,a5
    800052c4:	00078213          	mv	tp,a5
    800052c8:	30200073          	mret
    800052cc:	00813403          	ld	s0,8(sp)
    800052d0:	01010113          	addi	sp,sp,16
    800052d4:	00008067          	ret

00000000800052d8 <timerinit>:
    800052d8:	ff010113          	addi	sp,sp,-16
    800052dc:	00813423          	sd	s0,8(sp)
    800052e0:	01010413          	addi	s0,sp,16
    800052e4:	f14027f3          	csrr	a5,mhartid
    800052e8:	0200c737          	lui	a4,0x200c
    800052ec:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800052f0:	0007869b          	sext.w	a3,a5
    800052f4:	00269713          	slli	a4,a3,0x2
    800052f8:	000f4637          	lui	a2,0xf4
    800052fc:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005300:	00d70733          	add	a4,a4,a3
    80005304:	0037979b          	slliw	a5,a5,0x3
    80005308:	020046b7          	lui	a3,0x2004
    8000530c:	00d787b3          	add	a5,a5,a3
    80005310:	00c585b3          	add	a1,a1,a2
    80005314:	00371693          	slli	a3,a4,0x3
    80005318:	00005717          	auipc	a4,0x5
    8000531c:	c6870713          	addi	a4,a4,-920 # 80009f80 <timer_scratch>
    80005320:	00b7b023          	sd	a1,0(a5)
    80005324:	00d70733          	add	a4,a4,a3
    80005328:	00f73c23          	sd	a5,24(a4)
    8000532c:	02c73023          	sd	a2,32(a4)
    80005330:	34071073          	csrw	mscratch,a4
    80005334:	00000797          	auipc	a5,0x0
    80005338:	64c78793          	addi	a5,a5,1612 # 80005980 <timervec>
    8000533c:	30579073          	csrw	mtvec,a5
    80005340:	300027f3          	csrr	a5,mstatus
    80005344:	0087e793          	ori	a5,a5,8
    80005348:	30079073          	csrw	mstatus,a5
    8000534c:	304027f3          	csrr	a5,mie
    80005350:	0807e793          	ori	a5,a5,128
    80005354:	30479073          	csrw	mie,a5
    80005358:	00813403          	ld	s0,8(sp)
    8000535c:	01010113          	addi	sp,sp,16
    80005360:	00008067          	ret

0000000080005364 <system_main>:
    80005364:	fe010113          	addi	sp,sp,-32
    80005368:	00813823          	sd	s0,16(sp)
    8000536c:	00913423          	sd	s1,8(sp)
    80005370:	00113c23          	sd	ra,24(sp)
    80005374:	02010413          	addi	s0,sp,32
    80005378:	00000097          	auipc	ra,0x0
    8000537c:	0c4080e7          	jalr	196(ra) # 8000543c <cpuid>
    80005380:	00005497          	auipc	s1,0x5
    80005384:	b8048493          	addi	s1,s1,-1152 # 80009f00 <started>
    80005388:	02050263          	beqz	a0,800053ac <system_main+0x48>
    8000538c:	0004a783          	lw	a5,0(s1)
    80005390:	0007879b          	sext.w	a5,a5
    80005394:	fe078ce3          	beqz	a5,8000538c <system_main+0x28>
    80005398:	0ff0000f          	fence
    8000539c:	00003517          	auipc	a0,0x3
    800053a0:	0e450513          	addi	a0,a0,228 # 80008480 <kvmincrease+0xea0>
    800053a4:	00001097          	auipc	ra,0x1
    800053a8:	a78080e7          	jalr	-1416(ra) # 80005e1c <panic>
    800053ac:	00001097          	auipc	ra,0x1
    800053b0:	9cc080e7          	jalr	-1588(ra) # 80005d78 <consoleinit>
    800053b4:	00001097          	auipc	ra,0x1
    800053b8:	158080e7          	jalr	344(ra) # 8000650c <printfinit>
    800053bc:	00003517          	auipc	a0,0x3
    800053c0:	fcc50513          	addi	a0,a0,-52 # 80008388 <kvmincrease+0xda8>
    800053c4:	00001097          	auipc	ra,0x1
    800053c8:	ab4080e7          	jalr	-1356(ra) # 80005e78 <__printf>
    800053cc:	00003517          	auipc	a0,0x3
    800053d0:	08450513          	addi	a0,a0,132 # 80008450 <kvmincrease+0xe70>
    800053d4:	00001097          	auipc	ra,0x1
    800053d8:	aa4080e7          	jalr	-1372(ra) # 80005e78 <__printf>
    800053dc:	00003517          	auipc	a0,0x3
    800053e0:	fac50513          	addi	a0,a0,-84 # 80008388 <kvmincrease+0xda8>
    800053e4:	00001097          	auipc	ra,0x1
    800053e8:	a94080e7          	jalr	-1388(ra) # 80005e78 <__printf>
    800053ec:	00001097          	auipc	ra,0x1
    800053f0:	4ac080e7          	jalr	1196(ra) # 80006898 <kinit>
    800053f4:	00000097          	auipc	ra,0x0
    800053f8:	148080e7          	jalr	328(ra) # 8000553c <trapinit>
    800053fc:	00000097          	auipc	ra,0x0
    80005400:	16c080e7          	jalr	364(ra) # 80005568 <trapinithart>
    80005404:	00000097          	auipc	ra,0x0
    80005408:	5bc080e7          	jalr	1468(ra) # 800059c0 <plicinit>
    8000540c:	00000097          	auipc	ra,0x0
    80005410:	5dc080e7          	jalr	1500(ra) # 800059e8 <plicinithart>
    80005414:	00000097          	auipc	ra,0x0
    80005418:	078080e7          	jalr	120(ra) # 8000548c <userinit>
    8000541c:	0ff0000f          	fence
    80005420:	00100793          	li	a5,1
    80005424:	00003517          	auipc	a0,0x3
    80005428:	04450513          	addi	a0,a0,68 # 80008468 <kvmincrease+0xe88>
    8000542c:	00f4a023          	sw	a5,0(s1)
    80005430:	00001097          	auipc	ra,0x1
    80005434:	a48080e7          	jalr	-1464(ra) # 80005e78 <__printf>
    80005438:	0000006f          	j	80005438 <system_main+0xd4>

000000008000543c <cpuid>:
    8000543c:	ff010113          	addi	sp,sp,-16
    80005440:	00813423          	sd	s0,8(sp)
    80005444:	01010413          	addi	s0,sp,16
    80005448:	00020513          	mv	a0,tp
    8000544c:	00813403          	ld	s0,8(sp)
    80005450:	0005051b          	sext.w	a0,a0
    80005454:	01010113          	addi	sp,sp,16
    80005458:	00008067          	ret

000000008000545c <mycpu>:
    8000545c:	ff010113          	addi	sp,sp,-16
    80005460:	00813423          	sd	s0,8(sp)
    80005464:	01010413          	addi	s0,sp,16
    80005468:	00020793          	mv	a5,tp
    8000546c:	00813403          	ld	s0,8(sp)
    80005470:	0007879b          	sext.w	a5,a5
    80005474:	00779793          	slli	a5,a5,0x7
    80005478:	00006517          	auipc	a0,0x6
    8000547c:	b3850513          	addi	a0,a0,-1224 # 8000afb0 <cpus>
    80005480:	00f50533          	add	a0,a0,a5
    80005484:	01010113          	addi	sp,sp,16
    80005488:	00008067          	ret

000000008000548c <userinit>:
    8000548c:	ff010113          	addi	sp,sp,-16
    80005490:	00813423          	sd	s0,8(sp)
    80005494:	01010413          	addi	s0,sp,16
    80005498:	00813403          	ld	s0,8(sp)
    8000549c:	01010113          	addi	sp,sp,16
    800054a0:	ffffc317          	auipc	t1,0xffffc
    800054a4:	fe030067          	jr	-32(t1) # 80001480 <main>

00000000800054a8 <either_copyout>:
    800054a8:	ff010113          	addi	sp,sp,-16
    800054ac:	00813023          	sd	s0,0(sp)
    800054b0:	00113423          	sd	ra,8(sp)
    800054b4:	01010413          	addi	s0,sp,16
    800054b8:	02051663          	bnez	a0,800054e4 <either_copyout+0x3c>
    800054bc:	00058513          	mv	a0,a1
    800054c0:	00060593          	mv	a1,a2
    800054c4:	0006861b          	sext.w	a2,a3
    800054c8:	00002097          	auipc	ra,0x2
    800054cc:	c5c080e7          	jalr	-932(ra) # 80007124 <__memmove>
    800054d0:	00813083          	ld	ra,8(sp)
    800054d4:	00013403          	ld	s0,0(sp)
    800054d8:	00000513          	li	a0,0
    800054dc:	01010113          	addi	sp,sp,16
    800054e0:	00008067          	ret
    800054e4:	00003517          	auipc	a0,0x3
    800054e8:	fc450513          	addi	a0,a0,-60 # 800084a8 <kvmincrease+0xec8>
    800054ec:	00001097          	auipc	ra,0x1
    800054f0:	930080e7          	jalr	-1744(ra) # 80005e1c <panic>

00000000800054f4 <either_copyin>:
    800054f4:	ff010113          	addi	sp,sp,-16
    800054f8:	00813023          	sd	s0,0(sp)
    800054fc:	00113423          	sd	ra,8(sp)
    80005500:	01010413          	addi	s0,sp,16
    80005504:	02059463          	bnez	a1,8000552c <either_copyin+0x38>
    80005508:	00060593          	mv	a1,a2
    8000550c:	0006861b          	sext.w	a2,a3
    80005510:	00002097          	auipc	ra,0x2
    80005514:	c14080e7          	jalr	-1004(ra) # 80007124 <__memmove>
    80005518:	00813083          	ld	ra,8(sp)
    8000551c:	00013403          	ld	s0,0(sp)
    80005520:	00000513          	li	a0,0
    80005524:	01010113          	addi	sp,sp,16
    80005528:	00008067          	ret
    8000552c:	00003517          	auipc	a0,0x3
    80005530:	fa450513          	addi	a0,a0,-92 # 800084d0 <kvmincrease+0xef0>
    80005534:	00001097          	auipc	ra,0x1
    80005538:	8e8080e7          	jalr	-1816(ra) # 80005e1c <panic>

000000008000553c <trapinit>:
    8000553c:	ff010113          	addi	sp,sp,-16
    80005540:	00813423          	sd	s0,8(sp)
    80005544:	01010413          	addi	s0,sp,16
    80005548:	00813403          	ld	s0,8(sp)
    8000554c:	00003597          	auipc	a1,0x3
    80005550:	fac58593          	addi	a1,a1,-84 # 800084f8 <kvmincrease+0xf18>
    80005554:	00006517          	auipc	a0,0x6
    80005558:	adc50513          	addi	a0,a0,-1316 # 8000b030 <tickslock>
    8000555c:	01010113          	addi	sp,sp,16
    80005560:	00001317          	auipc	t1,0x1
    80005564:	5c830067          	jr	1480(t1) # 80006b28 <initlock>

0000000080005568 <trapinithart>:
    80005568:	ff010113          	addi	sp,sp,-16
    8000556c:	00813423          	sd	s0,8(sp)
    80005570:	01010413          	addi	s0,sp,16
    80005574:	00000797          	auipc	a5,0x0
    80005578:	2fc78793          	addi	a5,a5,764 # 80005870 <kernelvec>
    8000557c:	10579073          	csrw	stvec,a5
    80005580:	00813403          	ld	s0,8(sp)
    80005584:	01010113          	addi	sp,sp,16
    80005588:	00008067          	ret

000000008000558c <usertrap>:
    8000558c:	ff010113          	addi	sp,sp,-16
    80005590:	00813423          	sd	s0,8(sp)
    80005594:	01010413          	addi	s0,sp,16
    80005598:	00813403          	ld	s0,8(sp)
    8000559c:	01010113          	addi	sp,sp,16
    800055a0:	00008067          	ret

00000000800055a4 <usertrapret>:
    800055a4:	ff010113          	addi	sp,sp,-16
    800055a8:	00813423          	sd	s0,8(sp)
    800055ac:	01010413          	addi	s0,sp,16
    800055b0:	00813403          	ld	s0,8(sp)
    800055b4:	01010113          	addi	sp,sp,16
    800055b8:	00008067          	ret

00000000800055bc <kerneltrap>:
    800055bc:	fe010113          	addi	sp,sp,-32
    800055c0:	00813823          	sd	s0,16(sp)
    800055c4:	00113c23          	sd	ra,24(sp)
    800055c8:	00913423          	sd	s1,8(sp)
    800055cc:	02010413          	addi	s0,sp,32
    800055d0:	142025f3          	csrr	a1,scause
    800055d4:	100027f3          	csrr	a5,sstatus
    800055d8:	0027f793          	andi	a5,a5,2
    800055dc:	10079c63          	bnez	a5,800056f4 <kerneltrap+0x138>
    800055e0:	142027f3          	csrr	a5,scause
    800055e4:	0207ce63          	bltz	a5,80005620 <kerneltrap+0x64>
    800055e8:	00003517          	auipc	a0,0x3
    800055ec:	f5850513          	addi	a0,a0,-168 # 80008540 <kvmincrease+0xf60>
    800055f0:	00001097          	auipc	ra,0x1
    800055f4:	888080e7          	jalr	-1912(ra) # 80005e78 <__printf>
    800055f8:	141025f3          	csrr	a1,sepc
    800055fc:	14302673          	csrr	a2,stval
    80005600:	00003517          	auipc	a0,0x3
    80005604:	f5050513          	addi	a0,a0,-176 # 80008550 <kvmincrease+0xf70>
    80005608:	00001097          	auipc	ra,0x1
    8000560c:	870080e7          	jalr	-1936(ra) # 80005e78 <__printf>
    80005610:	00003517          	auipc	a0,0x3
    80005614:	f5850513          	addi	a0,a0,-168 # 80008568 <kvmincrease+0xf88>
    80005618:	00001097          	auipc	ra,0x1
    8000561c:	804080e7          	jalr	-2044(ra) # 80005e1c <panic>
    80005620:	0ff7f713          	andi	a4,a5,255
    80005624:	00900693          	li	a3,9
    80005628:	04d70063          	beq	a4,a3,80005668 <kerneltrap+0xac>
    8000562c:	fff00713          	li	a4,-1
    80005630:	03f71713          	slli	a4,a4,0x3f
    80005634:	00170713          	addi	a4,a4,1
    80005638:	fae798e3          	bne	a5,a4,800055e8 <kerneltrap+0x2c>
    8000563c:	00000097          	auipc	ra,0x0
    80005640:	e00080e7          	jalr	-512(ra) # 8000543c <cpuid>
    80005644:	06050663          	beqz	a0,800056b0 <kerneltrap+0xf4>
    80005648:	144027f3          	csrr	a5,sip
    8000564c:	ffd7f793          	andi	a5,a5,-3
    80005650:	14479073          	csrw	sip,a5
    80005654:	01813083          	ld	ra,24(sp)
    80005658:	01013403          	ld	s0,16(sp)
    8000565c:	00813483          	ld	s1,8(sp)
    80005660:	02010113          	addi	sp,sp,32
    80005664:	00008067          	ret
    80005668:	00000097          	auipc	ra,0x0
    8000566c:	3cc080e7          	jalr	972(ra) # 80005a34 <plic_claim>
    80005670:	00a00793          	li	a5,10
    80005674:	00050493          	mv	s1,a0
    80005678:	06f50863          	beq	a0,a5,800056e8 <kerneltrap+0x12c>
    8000567c:	fc050ce3          	beqz	a0,80005654 <kerneltrap+0x98>
    80005680:	00050593          	mv	a1,a0
    80005684:	00003517          	auipc	a0,0x3
    80005688:	e9c50513          	addi	a0,a0,-356 # 80008520 <kvmincrease+0xf40>
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	7ec080e7          	jalr	2028(ra) # 80005e78 <__printf>
    80005694:	01013403          	ld	s0,16(sp)
    80005698:	01813083          	ld	ra,24(sp)
    8000569c:	00048513          	mv	a0,s1
    800056a0:	00813483          	ld	s1,8(sp)
    800056a4:	02010113          	addi	sp,sp,32
    800056a8:	00000317          	auipc	t1,0x0
    800056ac:	3c430067          	jr	964(t1) # 80005a6c <plic_complete>
    800056b0:	00006517          	auipc	a0,0x6
    800056b4:	98050513          	addi	a0,a0,-1664 # 8000b030 <tickslock>
    800056b8:	00001097          	auipc	ra,0x1
    800056bc:	494080e7          	jalr	1172(ra) # 80006b4c <acquire>
    800056c0:	00005717          	auipc	a4,0x5
    800056c4:	84470713          	addi	a4,a4,-1980 # 80009f04 <ticks>
    800056c8:	00072783          	lw	a5,0(a4)
    800056cc:	00006517          	auipc	a0,0x6
    800056d0:	96450513          	addi	a0,a0,-1692 # 8000b030 <tickslock>
    800056d4:	0017879b          	addiw	a5,a5,1
    800056d8:	00f72023          	sw	a5,0(a4)
    800056dc:	00001097          	auipc	ra,0x1
    800056e0:	53c080e7          	jalr	1340(ra) # 80006c18 <release>
    800056e4:	f65ff06f          	j	80005648 <kerneltrap+0x8c>
    800056e8:	00001097          	auipc	ra,0x1
    800056ec:	098080e7          	jalr	152(ra) # 80006780 <uartintr>
    800056f0:	fa5ff06f          	j	80005694 <kerneltrap+0xd8>
    800056f4:	00003517          	auipc	a0,0x3
    800056f8:	e0c50513          	addi	a0,a0,-500 # 80008500 <kvmincrease+0xf20>
    800056fc:	00000097          	auipc	ra,0x0
    80005700:	720080e7          	jalr	1824(ra) # 80005e1c <panic>

0000000080005704 <clockintr>:
    80005704:	fe010113          	addi	sp,sp,-32
    80005708:	00813823          	sd	s0,16(sp)
    8000570c:	00913423          	sd	s1,8(sp)
    80005710:	00113c23          	sd	ra,24(sp)
    80005714:	02010413          	addi	s0,sp,32
    80005718:	00006497          	auipc	s1,0x6
    8000571c:	91848493          	addi	s1,s1,-1768 # 8000b030 <tickslock>
    80005720:	00048513          	mv	a0,s1
    80005724:	00001097          	auipc	ra,0x1
    80005728:	428080e7          	jalr	1064(ra) # 80006b4c <acquire>
    8000572c:	00004717          	auipc	a4,0x4
    80005730:	7d870713          	addi	a4,a4,2008 # 80009f04 <ticks>
    80005734:	00072783          	lw	a5,0(a4)
    80005738:	01013403          	ld	s0,16(sp)
    8000573c:	01813083          	ld	ra,24(sp)
    80005740:	00048513          	mv	a0,s1
    80005744:	0017879b          	addiw	a5,a5,1
    80005748:	00813483          	ld	s1,8(sp)
    8000574c:	00f72023          	sw	a5,0(a4)
    80005750:	02010113          	addi	sp,sp,32
    80005754:	00001317          	auipc	t1,0x1
    80005758:	4c430067          	jr	1220(t1) # 80006c18 <release>

000000008000575c <devintr>:
    8000575c:	142027f3          	csrr	a5,scause
    80005760:	00000513          	li	a0,0
    80005764:	0007c463          	bltz	a5,8000576c <devintr+0x10>
    80005768:	00008067          	ret
    8000576c:	fe010113          	addi	sp,sp,-32
    80005770:	00813823          	sd	s0,16(sp)
    80005774:	00113c23          	sd	ra,24(sp)
    80005778:	00913423          	sd	s1,8(sp)
    8000577c:	02010413          	addi	s0,sp,32
    80005780:	0ff7f713          	andi	a4,a5,255
    80005784:	00900693          	li	a3,9
    80005788:	04d70c63          	beq	a4,a3,800057e0 <devintr+0x84>
    8000578c:	fff00713          	li	a4,-1
    80005790:	03f71713          	slli	a4,a4,0x3f
    80005794:	00170713          	addi	a4,a4,1
    80005798:	00e78c63          	beq	a5,a4,800057b0 <devintr+0x54>
    8000579c:	01813083          	ld	ra,24(sp)
    800057a0:	01013403          	ld	s0,16(sp)
    800057a4:	00813483          	ld	s1,8(sp)
    800057a8:	02010113          	addi	sp,sp,32
    800057ac:	00008067          	ret
    800057b0:	00000097          	auipc	ra,0x0
    800057b4:	c8c080e7          	jalr	-884(ra) # 8000543c <cpuid>
    800057b8:	06050663          	beqz	a0,80005824 <devintr+0xc8>
    800057bc:	144027f3          	csrr	a5,sip
    800057c0:	ffd7f793          	andi	a5,a5,-3
    800057c4:	14479073          	csrw	sip,a5
    800057c8:	01813083          	ld	ra,24(sp)
    800057cc:	01013403          	ld	s0,16(sp)
    800057d0:	00813483          	ld	s1,8(sp)
    800057d4:	00200513          	li	a0,2
    800057d8:	02010113          	addi	sp,sp,32
    800057dc:	00008067          	ret
    800057e0:	00000097          	auipc	ra,0x0
    800057e4:	254080e7          	jalr	596(ra) # 80005a34 <plic_claim>
    800057e8:	00a00793          	li	a5,10
    800057ec:	00050493          	mv	s1,a0
    800057f0:	06f50663          	beq	a0,a5,8000585c <devintr+0x100>
    800057f4:	00100513          	li	a0,1
    800057f8:	fa0482e3          	beqz	s1,8000579c <devintr+0x40>
    800057fc:	00048593          	mv	a1,s1
    80005800:	00003517          	auipc	a0,0x3
    80005804:	d2050513          	addi	a0,a0,-736 # 80008520 <kvmincrease+0xf40>
    80005808:	00000097          	auipc	ra,0x0
    8000580c:	670080e7          	jalr	1648(ra) # 80005e78 <__printf>
    80005810:	00048513          	mv	a0,s1
    80005814:	00000097          	auipc	ra,0x0
    80005818:	258080e7          	jalr	600(ra) # 80005a6c <plic_complete>
    8000581c:	00100513          	li	a0,1
    80005820:	f7dff06f          	j	8000579c <devintr+0x40>
    80005824:	00006517          	auipc	a0,0x6
    80005828:	80c50513          	addi	a0,a0,-2036 # 8000b030 <tickslock>
    8000582c:	00001097          	auipc	ra,0x1
    80005830:	320080e7          	jalr	800(ra) # 80006b4c <acquire>
    80005834:	00004717          	auipc	a4,0x4
    80005838:	6d070713          	addi	a4,a4,1744 # 80009f04 <ticks>
    8000583c:	00072783          	lw	a5,0(a4)
    80005840:	00005517          	auipc	a0,0x5
    80005844:	7f050513          	addi	a0,a0,2032 # 8000b030 <tickslock>
    80005848:	0017879b          	addiw	a5,a5,1
    8000584c:	00f72023          	sw	a5,0(a4)
    80005850:	00001097          	auipc	ra,0x1
    80005854:	3c8080e7          	jalr	968(ra) # 80006c18 <release>
    80005858:	f65ff06f          	j	800057bc <devintr+0x60>
    8000585c:	00001097          	auipc	ra,0x1
    80005860:	f24080e7          	jalr	-220(ra) # 80006780 <uartintr>
    80005864:	fadff06f          	j	80005810 <devintr+0xb4>
	...

0000000080005870 <kernelvec>:
    80005870:	f0010113          	addi	sp,sp,-256
    80005874:	00113023          	sd	ra,0(sp)
    80005878:	00213423          	sd	sp,8(sp)
    8000587c:	00313823          	sd	gp,16(sp)
    80005880:	00413c23          	sd	tp,24(sp)
    80005884:	02513023          	sd	t0,32(sp)
    80005888:	02613423          	sd	t1,40(sp)
    8000588c:	02713823          	sd	t2,48(sp)
    80005890:	02813c23          	sd	s0,56(sp)
    80005894:	04913023          	sd	s1,64(sp)
    80005898:	04a13423          	sd	a0,72(sp)
    8000589c:	04b13823          	sd	a1,80(sp)
    800058a0:	04c13c23          	sd	a2,88(sp)
    800058a4:	06d13023          	sd	a3,96(sp)
    800058a8:	06e13423          	sd	a4,104(sp)
    800058ac:	06f13823          	sd	a5,112(sp)
    800058b0:	07013c23          	sd	a6,120(sp)
    800058b4:	09113023          	sd	a7,128(sp)
    800058b8:	09213423          	sd	s2,136(sp)
    800058bc:	09313823          	sd	s3,144(sp)
    800058c0:	09413c23          	sd	s4,152(sp)
    800058c4:	0b513023          	sd	s5,160(sp)
    800058c8:	0b613423          	sd	s6,168(sp)
    800058cc:	0b713823          	sd	s7,176(sp)
    800058d0:	0b813c23          	sd	s8,184(sp)
    800058d4:	0d913023          	sd	s9,192(sp)
    800058d8:	0da13423          	sd	s10,200(sp)
    800058dc:	0db13823          	sd	s11,208(sp)
    800058e0:	0dc13c23          	sd	t3,216(sp)
    800058e4:	0fd13023          	sd	t4,224(sp)
    800058e8:	0fe13423          	sd	t5,232(sp)
    800058ec:	0ff13823          	sd	t6,240(sp)
    800058f0:	ccdff0ef          	jal	ra,800055bc <kerneltrap>
    800058f4:	00013083          	ld	ra,0(sp)
    800058f8:	00813103          	ld	sp,8(sp)
    800058fc:	01013183          	ld	gp,16(sp)
    80005900:	02013283          	ld	t0,32(sp)
    80005904:	02813303          	ld	t1,40(sp)
    80005908:	03013383          	ld	t2,48(sp)
    8000590c:	03813403          	ld	s0,56(sp)
    80005910:	04013483          	ld	s1,64(sp)
    80005914:	04813503          	ld	a0,72(sp)
    80005918:	05013583          	ld	a1,80(sp)
    8000591c:	05813603          	ld	a2,88(sp)
    80005920:	06013683          	ld	a3,96(sp)
    80005924:	06813703          	ld	a4,104(sp)
    80005928:	07013783          	ld	a5,112(sp)
    8000592c:	07813803          	ld	a6,120(sp)
    80005930:	08013883          	ld	a7,128(sp)
    80005934:	08813903          	ld	s2,136(sp)
    80005938:	09013983          	ld	s3,144(sp)
    8000593c:	09813a03          	ld	s4,152(sp)
    80005940:	0a013a83          	ld	s5,160(sp)
    80005944:	0a813b03          	ld	s6,168(sp)
    80005948:	0b013b83          	ld	s7,176(sp)
    8000594c:	0b813c03          	ld	s8,184(sp)
    80005950:	0c013c83          	ld	s9,192(sp)
    80005954:	0c813d03          	ld	s10,200(sp)
    80005958:	0d013d83          	ld	s11,208(sp)
    8000595c:	0d813e03          	ld	t3,216(sp)
    80005960:	0e013e83          	ld	t4,224(sp)
    80005964:	0e813f03          	ld	t5,232(sp)
    80005968:	0f013f83          	ld	t6,240(sp)
    8000596c:	10010113          	addi	sp,sp,256
    80005970:	10200073          	sret
    80005974:	00000013          	nop
    80005978:	00000013          	nop
    8000597c:	00000013          	nop

0000000080005980 <timervec>:
    80005980:	34051573          	csrrw	a0,mscratch,a0
    80005984:	00b53023          	sd	a1,0(a0)
    80005988:	00c53423          	sd	a2,8(a0)
    8000598c:	00d53823          	sd	a3,16(a0)
    80005990:	01853583          	ld	a1,24(a0)
    80005994:	02053603          	ld	a2,32(a0)
    80005998:	0005b683          	ld	a3,0(a1)
    8000599c:	00c686b3          	add	a3,a3,a2
    800059a0:	00d5b023          	sd	a3,0(a1)
    800059a4:	00200593          	li	a1,2
    800059a8:	14459073          	csrw	sip,a1
    800059ac:	01053683          	ld	a3,16(a0)
    800059b0:	00853603          	ld	a2,8(a0)
    800059b4:	00053583          	ld	a1,0(a0)
    800059b8:	34051573          	csrrw	a0,mscratch,a0
    800059bc:	30200073          	mret

00000000800059c0 <plicinit>:
    800059c0:	ff010113          	addi	sp,sp,-16
    800059c4:	00813423          	sd	s0,8(sp)
    800059c8:	01010413          	addi	s0,sp,16
    800059cc:	00813403          	ld	s0,8(sp)
    800059d0:	0c0007b7          	lui	a5,0xc000
    800059d4:	00100713          	li	a4,1
    800059d8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800059dc:	00e7a223          	sw	a4,4(a5)
    800059e0:	01010113          	addi	sp,sp,16
    800059e4:	00008067          	ret

00000000800059e8 <plicinithart>:
    800059e8:	ff010113          	addi	sp,sp,-16
    800059ec:	00813023          	sd	s0,0(sp)
    800059f0:	00113423          	sd	ra,8(sp)
    800059f4:	01010413          	addi	s0,sp,16
    800059f8:	00000097          	auipc	ra,0x0
    800059fc:	a44080e7          	jalr	-1468(ra) # 8000543c <cpuid>
    80005a00:	0085171b          	slliw	a4,a0,0x8
    80005a04:	0c0027b7          	lui	a5,0xc002
    80005a08:	00e787b3          	add	a5,a5,a4
    80005a0c:	40200713          	li	a4,1026
    80005a10:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80005a14:	00813083          	ld	ra,8(sp)
    80005a18:	00013403          	ld	s0,0(sp)
    80005a1c:	00d5151b          	slliw	a0,a0,0xd
    80005a20:	0c2017b7          	lui	a5,0xc201
    80005a24:	00a78533          	add	a0,a5,a0
    80005a28:	00052023          	sw	zero,0(a0)
    80005a2c:	01010113          	addi	sp,sp,16
    80005a30:	00008067          	ret

0000000080005a34 <plic_claim>:
    80005a34:	ff010113          	addi	sp,sp,-16
    80005a38:	00813023          	sd	s0,0(sp)
    80005a3c:	00113423          	sd	ra,8(sp)
    80005a40:	01010413          	addi	s0,sp,16
    80005a44:	00000097          	auipc	ra,0x0
    80005a48:	9f8080e7          	jalr	-1544(ra) # 8000543c <cpuid>
    80005a4c:	00813083          	ld	ra,8(sp)
    80005a50:	00013403          	ld	s0,0(sp)
    80005a54:	00d5151b          	slliw	a0,a0,0xd
    80005a58:	0c2017b7          	lui	a5,0xc201
    80005a5c:	00a78533          	add	a0,a5,a0
    80005a60:	00452503          	lw	a0,4(a0)
    80005a64:	01010113          	addi	sp,sp,16
    80005a68:	00008067          	ret

0000000080005a6c <plic_complete>:
    80005a6c:	fe010113          	addi	sp,sp,-32
    80005a70:	00813823          	sd	s0,16(sp)
    80005a74:	00913423          	sd	s1,8(sp)
    80005a78:	00113c23          	sd	ra,24(sp)
    80005a7c:	02010413          	addi	s0,sp,32
    80005a80:	00050493          	mv	s1,a0
    80005a84:	00000097          	auipc	ra,0x0
    80005a88:	9b8080e7          	jalr	-1608(ra) # 8000543c <cpuid>
    80005a8c:	01813083          	ld	ra,24(sp)
    80005a90:	01013403          	ld	s0,16(sp)
    80005a94:	00d5179b          	slliw	a5,a0,0xd
    80005a98:	0c201737          	lui	a4,0xc201
    80005a9c:	00f707b3          	add	a5,a4,a5
    80005aa0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80005aa4:	00813483          	ld	s1,8(sp)
    80005aa8:	02010113          	addi	sp,sp,32
    80005aac:	00008067          	ret

0000000080005ab0 <consolewrite>:
    80005ab0:	fb010113          	addi	sp,sp,-80
    80005ab4:	04813023          	sd	s0,64(sp)
    80005ab8:	04113423          	sd	ra,72(sp)
    80005abc:	02913c23          	sd	s1,56(sp)
    80005ac0:	03213823          	sd	s2,48(sp)
    80005ac4:	03313423          	sd	s3,40(sp)
    80005ac8:	03413023          	sd	s4,32(sp)
    80005acc:	01513c23          	sd	s5,24(sp)
    80005ad0:	05010413          	addi	s0,sp,80
    80005ad4:	06c05c63          	blez	a2,80005b4c <consolewrite+0x9c>
    80005ad8:	00060993          	mv	s3,a2
    80005adc:	00050a13          	mv	s4,a0
    80005ae0:	00058493          	mv	s1,a1
    80005ae4:	00000913          	li	s2,0
    80005ae8:	fff00a93          	li	s5,-1
    80005aec:	01c0006f          	j	80005b08 <consolewrite+0x58>
    80005af0:	fbf44503          	lbu	a0,-65(s0)
    80005af4:	0019091b          	addiw	s2,s2,1
    80005af8:	00148493          	addi	s1,s1,1
    80005afc:	00001097          	auipc	ra,0x1
    80005b00:	a9c080e7          	jalr	-1380(ra) # 80006598 <uartputc>
    80005b04:	03298063          	beq	s3,s2,80005b24 <consolewrite+0x74>
    80005b08:	00048613          	mv	a2,s1
    80005b0c:	00100693          	li	a3,1
    80005b10:	000a0593          	mv	a1,s4
    80005b14:	fbf40513          	addi	a0,s0,-65
    80005b18:	00000097          	auipc	ra,0x0
    80005b1c:	9dc080e7          	jalr	-1572(ra) # 800054f4 <either_copyin>
    80005b20:	fd5518e3          	bne	a0,s5,80005af0 <consolewrite+0x40>
    80005b24:	04813083          	ld	ra,72(sp)
    80005b28:	04013403          	ld	s0,64(sp)
    80005b2c:	03813483          	ld	s1,56(sp)
    80005b30:	02813983          	ld	s3,40(sp)
    80005b34:	02013a03          	ld	s4,32(sp)
    80005b38:	01813a83          	ld	s5,24(sp)
    80005b3c:	00090513          	mv	a0,s2
    80005b40:	03013903          	ld	s2,48(sp)
    80005b44:	05010113          	addi	sp,sp,80
    80005b48:	00008067          	ret
    80005b4c:	00000913          	li	s2,0
    80005b50:	fd5ff06f          	j	80005b24 <consolewrite+0x74>

0000000080005b54 <consoleread>:
    80005b54:	f9010113          	addi	sp,sp,-112
    80005b58:	06813023          	sd	s0,96(sp)
    80005b5c:	04913c23          	sd	s1,88(sp)
    80005b60:	05213823          	sd	s2,80(sp)
    80005b64:	05313423          	sd	s3,72(sp)
    80005b68:	05413023          	sd	s4,64(sp)
    80005b6c:	03513c23          	sd	s5,56(sp)
    80005b70:	03613823          	sd	s6,48(sp)
    80005b74:	03713423          	sd	s7,40(sp)
    80005b78:	03813023          	sd	s8,32(sp)
    80005b7c:	06113423          	sd	ra,104(sp)
    80005b80:	01913c23          	sd	s9,24(sp)
    80005b84:	07010413          	addi	s0,sp,112
    80005b88:	00060b93          	mv	s7,a2
    80005b8c:	00050913          	mv	s2,a0
    80005b90:	00058c13          	mv	s8,a1
    80005b94:	00060b1b          	sext.w	s6,a2
    80005b98:	00005497          	auipc	s1,0x5
    80005b9c:	4c048493          	addi	s1,s1,1216 # 8000b058 <cons>
    80005ba0:	00400993          	li	s3,4
    80005ba4:	fff00a13          	li	s4,-1
    80005ba8:	00a00a93          	li	s5,10
    80005bac:	05705e63          	blez	s7,80005c08 <consoleread+0xb4>
    80005bb0:	09c4a703          	lw	a4,156(s1)
    80005bb4:	0984a783          	lw	a5,152(s1)
    80005bb8:	0007071b          	sext.w	a4,a4
    80005bbc:	08e78463          	beq	a5,a4,80005c44 <consoleread+0xf0>
    80005bc0:	07f7f713          	andi	a4,a5,127
    80005bc4:	00e48733          	add	a4,s1,a4
    80005bc8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80005bcc:	0017869b          	addiw	a3,a5,1
    80005bd0:	08d4ac23          	sw	a3,152(s1)
    80005bd4:	00070c9b          	sext.w	s9,a4
    80005bd8:	0b370663          	beq	a4,s3,80005c84 <consoleread+0x130>
    80005bdc:	00100693          	li	a3,1
    80005be0:	f9f40613          	addi	a2,s0,-97
    80005be4:	000c0593          	mv	a1,s8
    80005be8:	00090513          	mv	a0,s2
    80005bec:	f8e40fa3          	sb	a4,-97(s0)
    80005bf0:	00000097          	auipc	ra,0x0
    80005bf4:	8b8080e7          	jalr	-1864(ra) # 800054a8 <either_copyout>
    80005bf8:	01450863          	beq	a0,s4,80005c08 <consoleread+0xb4>
    80005bfc:	001c0c13          	addi	s8,s8,1
    80005c00:	fffb8b9b          	addiw	s7,s7,-1
    80005c04:	fb5c94e3          	bne	s9,s5,80005bac <consoleread+0x58>
    80005c08:	000b851b          	sext.w	a0,s7
    80005c0c:	06813083          	ld	ra,104(sp)
    80005c10:	06013403          	ld	s0,96(sp)
    80005c14:	05813483          	ld	s1,88(sp)
    80005c18:	05013903          	ld	s2,80(sp)
    80005c1c:	04813983          	ld	s3,72(sp)
    80005c20:	04013a03          	ld	s4,64(sp)
    80005c24:	03813a83          	ld	s5,56(sp)
    80005c28:	02813b83          	ld	s7,40(sp)
    80005c2c:	02013c03          	ld	s8,32(sp)
    80005c30:	01813c83          	ld	s9,24(sp)
    80005c34:	40ab053b          	subw	a0,s6,a0
    80005c38:	03013b03          	ld	s6,48(sp)
    80005c3c:	07010113          	addi	sp,sp,112
    80005c40:	00008067          	ret
    80005c44:	00001097          	auipc	ra,0x1
    80005c48:	1d8080e7          	jalr	472(ra) # 80006e1c <push_on>
    80005c4c:	0984a703          	lw	a4,152(s1)
    80005c50:	09c4a783          	lw	a5,156(s1)
    80005c54:	0007879b          	sext.w	a5,a5
    80005c58:	fef70ce3          	beq	a4,a5,80005c50 <consoleread+0xfc>
    80005c5c:	00001097          	auipc	ra,0x1
    80005c60:	234080e7          	jalr	564(ra) # 80006e90 <pop_on>
    80005c64:	0984a783          	lw	a5,152(s1)
    80005c68:	07f7f713          	andi	a4,a5,127
    80005c6c:	00e48733          	add	a4,s1,a4
    80005c70:	01874703          	lbu	a4,24(a4)
    80005c74:	0017869b          	addiw	a3,a5,1
    80005c78:	08d4ac23          	sw	a3,152(s1)
    80005c7c:	00070c9b          	sext.w	s9,a4
    80005c80:	f5371ee3          	bne	a4,s3,80005bdc <consoleread+0x88>
    80005c84:	000b851b          	sext.w	a0,s7
    80005c88:	f96bf2e3          	bgeu	s7,s6,80005c0c <consoleread+0xb8>
    80005c8c:	08f4ac23          	sw	a5,152(s1)
    80005c90:	f7dff06f          	j	80005c0c <consoleread+0xb8>

0000000080005c94 <consputc>:
    80005c94:	10000793          	li	a5,256
    80005c98:	00f50663          	beq	a0,a5,80005ca4 <consputc+0x10>
    80005c9c:	00001317          	auipc	t1,0x1
    80005ca0:	9f430067          	jr	-1548(t1) # 80006690 <uartputc_sync>
    80005ca4:	ff010113          	addi	sp,sp,-16
    80005ca8:	00113423          	sd	ra,8(sp)
    80005cac:	00813023          	sd	s0,0(sp)
    80005cb0:	01010413          	addi	s0,sp,16
    80005cb4:	00800513          	li	a0,8
    80005cb8:	00001097          	auipc	ra,0x1
    80005cbc:	9d8080e7          	jalr	-1576(ra) # 80006690 <uartputc_sync>
    80005cc0:	02000513          	li	a0,32
    80005cc4:	00001097          	auipc	ra,0x1
    80005cc8:	9cc080e7          	jalr	-1588(ra) # 80006690 <uartputc_sync>
    80005ccc:	00013403          	ld	s0,0(sp)
    80005cd0:	00813083          	ld	ra,8(sp)
    80005cd4:	00800513          	li	a0,8
    80005cd8:	01010113          	addi	sp,sp,16
    80005cdc:	00001317          	auipc	t1,0x1
    80005ce0:	9b430067          	jr	-1612(t1) # 80006690 <uartputc_sync>

0000000080005ce4 <consoleintr>:
    80005ce4:	fe010113          	addi	sp,sp,-32
    80005ce8:	00813823          	sd	s0,16(sp)
    80005cec:	00913423          	sd	s1,8(sp)
    80005cf0:	01213023          	sd	s2,0(sp)
    80005cf4:	00113c23          	sd	ra,24(sp)
    80005cf8:	02010413          	addi	s0,sp,32
    80005cfc:	00005917          	auipc	s2,0x5
    80005d00:	35c90913          	addi	s2,s2,860 # 8000b058 <cons>
    80005d04:	00050493          	mv	s1,a0
    80005d08:	00090513          	mv	a0,s2
    80005d0c:	00001097          	auipc	ra,0x1
    80005d10:	e40080e7          	jalr	-448(ra) # 80006b4c <acquire>
    80005d14:	02048c63          	beqz	s1,80005d4c <consoleintr+0x68>
    80005d18:	0a092783          	lw	a5,160(s2)
    80005d1c:	09892703          	lw	a4,152(s2)
    80005d20:	07f00693          	li	a3,127
    80005d24:	40e7873b          	subw	a4,a5,a4
    80005d28:	02e6e263          	bltu	a3,a4,80005d4c <consoleintr+0x68>
    80005d2c:	00d00713          	li	a4,13
    80005d30:	04e48063          	beq	s1,a4,80005d70 <consoleintr+0x8c>
    80005d34:	07f7f713          	andi	a4,a5,127
    80005d38:	00e90733          	add	a4,s2,a4
    80005d3c:	0017879b          	addiw	a5,a5,1
    80005d40:	0af92023          	sw	a5,160(s2)
    80005d44:	00970c23          	sb	s1,24(a4)
    80005d48:	08f92e23          	sw	a5,156(s2)
    80005d4c:	01013403          	ld	s0,16(sp)
    80005d50:	01813083          	ld	ra,24(sp)
    80005d54:	00813483          	ld	s1,8(sp)
    80005d58:	00013903          	ld	s2,0(sp)
    80005d5c:	00005517          	auipc	a0,0x5
    80005d60:	2fc50513          	addi	a0,a0,764 # 8000b058 <cons>
    80005d64:	02010113          	addi	sp,sp,32
    80005d68:	00001317          	auipc	t1,0x1
    80005d6c:	eb030067          	jr	-336(t1) # 80006c18 <release>
    80005d70:	00a00493          	li	s1,10
    80005d74:	fc1ff06f          	j	80005d34 <consoleintr+0x50>

0000000080005d78 <consoleinit>:
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00113c23          	sd	ra,24(sp)
    80005d80:	00813823          	sd	s0,16(sp)
    80005d84:	00913423          	sd	s1,8(sp)
    80005d88:	02010413          	addi	s0,sp,32
    80005d8c:	00005497          	auipc	s1,0x5
    80005d90:	2cc48493          	addi	s1,s1,716 # 8000b058 <cons>
    80005d94:	00048513          	mv	a0,s1
    80005d98:	00002597          	auipc	a1,0x2
    80005d9c:	7e058593          	addi	a1,a1,2016 # 80008578 <kvmincrease+0xf98>
    80005da0:	00001097          	auipc	ra,0x1
    80005da4:	d88080e7          	jalr	-632(ra) # 80006b28 <initlock>
    80005da8:	00000097          	auipc	ra,0x0
    80005dac:	7ac080e7          	jalr	1964(ra) # 80006554 <uartinit>
    80005db0:	01813083          	ld	ra,24(sp)
    80005db4:	01013403          	ld	s0,16(sp)
    80005db8:	00000797          	auipc	a5,0x0
    80005dbc:	d9c78793          	addi	a5,a5,-612 # 80005b54 <consoleread>
    80005dc0:	0af4bc23          	sd	a5,184(s1)
    80005dc4:	00000797          	auipc	a5,0x0
    80005dc8:	cec78793          	addi	a5,a5,-788 # 80005ab0 <consolewrite>
    80005dcc:	0cf4b023          	sd	a5,192(s1)
    80005dd0:	00813483          	ld	s1,8(sp)
    80005dd4:	02010113          	addi	sp,sp,32
    80005dd8:	00008067          	ret

0000000080005ddc <console_read>:
    80005ddc:	ff010113          	addi	sp,sp,-16
    80005de0:	00813423          	sd	s0,8(sp)
    80005de4:	01010413          	addi	s0,sp,16
    80005de8:	00813403          	ld	s0,8(sp)
    80005dec:	00005317          	auipc	t1,0x5
    80005df0:	32433303          	ld	t1,804(t1) # 8000b110 <devsw+0x10>
    80005df4:	01010113          	addi	sp,sp,16
    80005df8:	00030067          	jr	t1

0000000080005dfc <console_write>:
    80005dfc:	ff010113          	addi	sp,sp,-16
    80005e00:	00813423          	sd	s0,8(sp)
    80005e04:	01010413          	addi	s0,sp,16
    80005e08:	00813403          	ld	s0,8(sp)
    80005e0c:	00005317          	auipc	t1,0x5
    80005e10:	30c33303          	ld	t1,780(t1) # 8000b118 <devsw+0x18>
    80005e14:	01010113          	addi	sp,sp,16
    80005e18:	00030067          	jr	t1

0000000080005e1c <panic>:
    80005e1c:	fe010113          	addi	sp,sp,-32
    80005e20:	00113c23          	sd	ra,24(sp)
    80005e24:	00813823          	sd	s0,16(sp)
    80005e28:	00913423          	sd	s1,8(sp)
    80005e2c:	02010413          	addi	s0,sp,32
    80005e30:	00050493          	mv	s1,a0
    80005e34:	00002517          	auipc	a0,0x2
    80005e38:	74c50513          	addi	a0,a0,1868 # 80008580 <kvmincrease+0xfa0>
    80005e3c:	00005797          	auipc	a5,0x5
    80005e40:	3607ae23          	sw	zero,892(a5) # 8000b1b8 <pr+0x18>
    80005e44:	00000097          	auipc	ra,0x0
    80005e48:	034080e7          	jalr	52(ra) # 80005e78 <__printf>
    80005e4c:	00048513          	mv	a0,s1
    80005e50:	00000097          	auipc	ra,0x0
    80005e54:	028080e7          	jalr	40(ra) # 80005e78 <__printf>
    80005e58:	00002517          	auipc	a0,0x2
    80005e5c:	53050513          	addi	a0,a0,1328 # 80008388 <kvmincrease+0xda8>
    80005e60:	00000097          	auipc	ra,0x0
    80005e64:	018080e7          	jalr	24(ra) # 80005e78 <__printf>
    80005e68:	00100793          	li	a5,1
    80005e6c:	00004717          	auipc	a4,0x4
    80005e70:	08f72e23          	sw	a5,156(a4) # 80009f08 <panicked>
    80005e74:	0000006f          	j	80005e74 <panic+0x58>

0000000080005e78 <__printf>:
    80005e78:	f3010113          	addi	sp,sp,-208
    80005e7c:	08813023          	sd	s0,128(sp)
    80005e80:	07313423          	sd	s3,104(sp)
    80005e84:	09010413          	addi	s0,sp,144
    80005e88:	05813023          	sd	s8,64(sp)
    80005e8c:	08113423          	sd	ra,136(sp)
    80005e90:	06913c23          	sd	s1,120(sp)
    80005e94:	07213823          	sd	s2,112(sp)
    80005e98:	07413023          	sd	s4,96(sp)
    80005e9c:	05513c23          	sd	s5,88(sp)
    80005ea0:	05613823          	sd	s6,80(sp)
    80005ea4:	05713423          	sd	s7,72(sp)
    80005ea8:	03913c23          	sd	s9,56(sp)
    80005eac:	03a13823          	sd	s10,48(sp)
    80005eb0:	03b13423          	sd	s11,40(sp)
    80005eb4:	00005317          	auipc	t1,0x5
    80005eb8:	2ec30313          	addi	t1,t1,748 # 8000b1a0 <pr>
    80005ebc:	01832c03          	lw	s8,24(t1)
    80005ec0:	00b43423          	sd	a1,8(s0)
    80005ec4:	00c43823          	sd	a2,16(s0)
    80005ec8:	00d43c23          	sd	a3,24(s0)
    80005ecc:	02e43023          	sd	a4,32(s0)
    80005ed0:	02f43423          	sd	a5,40(s0)
    80005ed4:	03043823          	sd	a6,48(s0)
    80005ed8:	03143c23          	sd	a7,56(s0)
    80005edc:	00050993          	mv	s3,a0
    80005ee0:	4a0c1663          	bnez	s8,8000638c <__printf+0x514>
    80005ee4:	60098c63          	beqz	s3,800064fc <__printf+0x684>
    80005ee8:	0009c503          	lbu	a0,0(s3)
    80005eec:	00840793          	addi	a5,s0,8
    80005ef0:	f6f43c23          	sd	a5,-136(s0)
    80005ef4:	00000493          	li	s1,0
    80005ef8:	22050063          	beqz	a0,80006118 <__printf+0x2a0>
    80005efc:	00002a37          	lui	s4,0x2
    80005f00:	00018ab7          	lui	s5,0x18
    80005f04:	000f4b37          	lui	s6,0xf4
    80005f08:	00989bb7          	lui	s7,0x989
    80005f0c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80005f10:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80005f14:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80005f18:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80005f1c:	00148c9b          	addiw	s9,s1,1
    80005f20:	02500793          	li	a5,37
    80005f24:	01998933          	add	s2,s3,s9
    80005f28:	38f51263          	bne	a0,a5,800062ac <__printf+0x434>
    80005f2c:	00094783          	lbu	a5,0(s2)
    80005f30:	00078c9b          	sext.w	s9,a5
    80005f34:	1e078263          	beqz	a5,80006118 <__printf+0x2a0>
    80005f38:	0024849b          	addiw	s1,s1,2
    80005f3c:	07000713          	li	a4,112
    80005f40:	00998933          	add	s2,s3,s1
    80005f44:	38e78a63          	beq	a5,a4,800062d8 <__printf+0x460>
    80005f48:	20f76863          	bltu	a4,a5,80006158 <__printf+0x2e0>
    80005f4c:	42a78863          	beq	a5,a0,8000637c <__printf+0x504>
    80005f50:	06400713          	li	a4,100
    80005f54:	40e79663          	bne	a5,a4,80006360 <__printf+0x4e8>
    80005f58:	f7843783          	ld	a5,-136(s0)
    80005f5c:	0007a603          	lw	a2,0(a5)
    80005f60:	00878793          	addi	a5,a5,8
    80005f64:	f6f43c23          	sd	a5,-136(s0)
    80005f68:	42064a63          	bltz	a2,8000639c <__printf+0x524>
    80005f6c:	00a00713          	li	a4,10
    80005f70:	02e677bb          	remuw	a5,a2,a4
    80005f74:	00002d97          	auipc	s11,0x2
    80005f78:	634d8d93          	addi	s11,s11,1588 # 800085a8 <digits>
    80005f7c:	00900593          	li	a1,9
    80005f80:	0006051b          	sext.w	a0,a2
    80005f84:	00000c93          	li	s9,0
    80005f88:	02079793          	slli	a5,a5,0x20
    80005f8c:	0207d793          	srli	a5,a5,0x20
    80005f90:	00fd87b3          	add	a5,s11,a5
    80005f94:	0007c783          	lbu	a5,0(a5)
    80005f98:	02e656bb          	divuw	a3,a2,a4
    80005f9c:	f8f40023          	sb	a5,-128(s0)
    80005fa0:	14c5d863          	bge	a1,a2,800060f0 <__printf+0x278>
    80005fa4:	06300593          	li	a1,99
    80005fa8:	00100c93          	li	s9,1
    80005fac:	02e6f7bb          	remuw	a5,a3,a4
    80005fb0:	02079793          	slli	a5,a5,0x20
    80005fb4:	0207d793          	srli	a5,a5,0x20
    80005fb8:	00fd87b3          	add	a5,s11,a5
    80005fbc:	0007c783          	lbu	a5,0(a5)
    80005fc0:	02e6d73b          	divuw	a4,a3,a4
    80005fc4:	f8f400a3          	sb	a5,-127(s0)
    80005fc8:	12a5f463          	bgeu	a1,a0,800060f0 <__printf+0x278>
    80005fcc:	00a00693          	li	a3,10
    80005fd0:	00900593          	li	a1,9
    80005fd4:	02d777bb          	remuw	a5,a4,a3
    80005fd8:	02079793          	slli	a5,a5,0x20
    80005fdc:	0207d793          	srli	a5,a5,0x20
    80005fe0:	00fd87b3          	add	a5,s11,a5
    80005fe4:	0007c503          	lbu	a0,0(a5)
    80005fe8:	02d757bb          	divuw	a5,a4,a3
    80005fec:	f8a40123          	sb	a0,-126(s0)
    80005ff0:	48e5f263          	bgeu	a1,a4,80006474 <__printf+0x5fc>
    80005ff4:	06300513          	li	a0,99
    80005ff8:	02d7f5bb          	remuw	a1,a5,a3
    80005ffc:	02059593          	slli	a1,a1,0x20
    80006000:	0205d593          	srli	a1,a1,0x20
    80006004:	00bd85b3          	add	a1,s11,a1
    80006008:	0005c583          	lbu	a1,0(a1)
    8000600c:	02d7d7bb          	divuw	a5,a5,a3
    80006010:	f8b401a3          	sb	a1,-125(s0)
    80006014:	48e57263          	bgeu	a0,a4,80006498 <__printf+0x620>
    80006018:	3e700513          	li	a0,999
    8000601c:	02d7f5bb          	remuw	a1,a5,a3
    80006020:	02059593          	slli	a1,a1,0x20
    80006024:	0205d593          	srli	a1,a1,0x20
    80006028:	00bd85b3          	add	a1,s11,a1
    8000602c:	0005c583          	lbu	a1,0(a1)
    80006030:	02d7d7bb          	divuw	a5,a5,a3
    80006034:	f8b40223          	sb	a1,-124(s0)
    80006038:	46e57663          	bgeu	a0,a4,800064a4 <__printf+0x62c>
    8000603c:	02d7f5bb          	remuw	a1,a5,a3
    80006040:	02059593          	slli	a1,a1,0x20
    80006044:	0205d593          	srli	a1,a1,0x20
    80006048:	00bd85b3          	add	a1,s11,a1
    8000604c:	0005c583          	lbu	a1,0(a1)
    80006050:	02d7d7bb          	divuw	a5,a5,a3
    80006054:	f8b402a3          	sb	a1,-123(s0)
    80006058:	46ea7863          	bgeu	s4,a4,800064c8 <__printf+0x650>
    8000605c:	02d7f5bb          	remuw	a1,a5,a3
    80006060:	02059593          	slli	a1,a1,0x20
    80006064:	0205d593          	srli	a1,a1,0x20
    80006068:	00bd85b3          	add	a1,s11,a1
    8000606c:	0005c583          	lbu	a1,0(a1)
    80006070:	02d7d7bb          	divuw	a5,a5,a3
    80006074:	f8b40323          	sb	a1,-122(s0)
    80006078:	3eeaf863          	bgeu	s5,a4,80006468 <__printf+0x5f0>
    8000607c:	02d7f5bb          	remuw	a1,a5,a3
    80006080:	02059593          	slli	a1,a1,0x20
    80006084:	0205d593          	srli	a1,a1,0x20
    80006088:	00bd85b3          	add	a1,s11,a1
    8000608c:	0005c583          	lbu	a1,0(a1)
    80006090:	02d7d7bb          	divuw	a5,a5,a3
    80006094:	f8b403a3          	sb	a1,-121(s0)
    80006098:	42eb7e63          	bgeu	s6,a4,800064d4 <__printf+0x65c>
    8000609c:	02d7f5bb          	remuw	a1,a5,a3
    800060a0:	02059593          	slli	a1,a1,0x20
    800060a4:	0205d593          	srli	a1,a1,0x20
    800060a8:	00bd85b3          	add	a1,s11,a1
    800060ac:	0005c583          	lbu	a1,0(a1)
    800060b0:	02d7d7bb          	divuw	a5,a5,a3
    800060b4:	f8b40423          	sb	a1,-120(s0)
    800060b8:	42ebfc63          	bgeu	s7,a4,800064f0 <__printf+0x678>
    800060bc:	02079793          	slli	a5,a5,0x20
    800060c0:	0207d793          	srli	a5,a5,0x20
    800060c4:	00fd8db3          	add	s11,s11,a5
    800060c8:	000dc703          	lbu	a4,0(s11)
    800060cc:	00a00793          	li	a5,10
    800060d0:	00900c93          	li	s9,9
    800060d4:	f8e404a3          	sb	a4,-119(s0)
    800060d8:	00065c63          	bgez	a2,800060f0 <__printf+0x278>
    800060dc:	f9040713          	addi	a4,s0,-112
    800060e0:	00f70733          	add	a4,a4,a5
    800060e4:	02d00693          	li	a3,45
    800060e8:	fed70823          	sb	a3,-16(a4)
    800060ec:	00078c93          	mv	s9,a5
    800060f0:	f8040793          	addi	a5,s0,-128
    800060f4:	01978cb3          	add	s9,a5,s9
    800060f8:	f7f40d13          	addi	s10,s0,-129
    800060fc:	000cc503          	lbu	a0,0(s9)
    80006100:	fffc8c93          	addi	s9,s9,-1
    80006104:	00000097          	auipc	ra,0x0
    80006108:	b90080e7          	jalr	-1136(ra) # 80005c94 <consputc>
    8000610c:	ffac98e3          	bne	s9,s10,800060fc <__printf+0x284>
    80006110:	00094503          	lbu	a0,0(s2)
    80006114:	e00514e3          	bnez	a0,80005f1c <__printf+0xa4>
    80006118:	1a0c1663          	bnez	s8,800062c4 <__printf+0x44c>
    8000611c:	08813083          	ld	ra,136(sp)
    80006120:	08013403          	ld	s0,128(sp)
    80006124:	07813483          	ld	s1,120(sp)
    80006128:	07013903          	ld	s2,112(sp)
    8000612c:	06813983          	ld	s3,104(sp)
    80006130:	06013a03          	ld	s4,96(sp)
    80006134:	05813a83          	ld	s5,88(sp)
    80006138:	05013b03          	ld	s6,80(sp)
    8000613c:	04813b83          	ld	s7,72(sp)
    80006140:	04013c03          	ld	s8,64(sp)
    80006144:	03813c83          	ld	s9,56(sp)
    80006148:	03013d03          	ld	s10,48(sp)
    8000614c:	02813d83          	ld	s11,40(sp)
    80006150:	0d010113          	addi	sp,sp,208
    80006154:	00008067          	ret
    80006158:	07300713          	li	a4,115
    8000615c:	1ce78a63          	beq	a5,a4,80006330 <__printf+0x4b8>
    80006160:	07800713          	li	a4,120
    80006164:	1ee79e63          	bne	a5,a4,80006360 <__printf+0x4e8>
    80006168:	f7843783          	ld	a5,-136(s0)
    8000616c:	0007a703          	lw	a4,0(a5)
    80006170:	00878793          	addi	a5,a5,8
    80006174:	f6f43c23          	sd	a5,-136(s0)
    80006178:	28074263          	bltz	a4,800063fc <__printf+0x584>
    8000617c:	00002d97          	auipc	s11,0x2
    80006180:	42cd8d93          	addi	s11,s11,1068 # 800085a8 <digits>
    80006184:	00f77793          	andi	a5,a4,15
    80006188:	00fd87b3          	add	a5,s11,a5
    8000618c:	0007c683          	lbu	a3,0(a5)
    80006190:	00f00613          	li	a2,15
    80006194:	0007079b          	sext.w	a5,a4
    80006198:	f8d40023          	sb	a3,-128(s0)
    8000619c:	0047559b          	srliw	a1,a4,0x4
    800061a0:	0047569b          	srliw	a3,a4,0x4
    800061a4:	00000c93          	li	s9,0
    800061a8:	0ee65063          	bge	a2,a4,80006288 <__printf+0x410>
    800061ac:	00f6f693          	andi	a3,a3,15
    800061b0:	00dd86b3          	add	a3,s11,a3
    800061b4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800061b8:	0087d79b          	srliw	a5,a5,0x8
    800061bc:	00100c93          	li	s9,1
    800061c0:	f8d400a3          	sb	a3,-127(s0)
    800061c4:	0cb67263          	bgeu	a2,a1,80006288 <__printf+0x410>
    800061c8:	00f7f693          	andi	a3,a5,15
    800061cc:	00dd86b3          	add	a3,s11,a3
    800061d0:	0006c583          	lbu	a1,0(a3)
    800061d4:	00f00613          	li	a2,15
    800061d8:	0047d69b          	srliw	a3,a5,0x4
    800061dc:	f8b40123          	sb	a1,-126(s0)
    800061e0:	0047d593          	srli	a1,a5,0x4
    800061e4:	28f67e63          	bgeu	a2,a5,80006480 <__printf+0x608>
    800061e8:	00f6f693          	andi	a3,a3,15
    800061ec:	00dd86b3          	add	a3,s11,a3
    800061f0:	0006c503          	lbu	a0,0(a3)
    800061f4:	0087d813          	srli	a6,a5,0x8
    800061f8:	0087d69b          	srliw	a3,a5,0x8
    800061fc:	f8a401a3          	sb	a0,-125(s0)
    80006200:	28b67663          	bgeu	a2,a1,8000648c <__printf+0x614>
    80006204:	00f6f693          	andi	a3,a3,15
    80006208:	00dd86b3          	add	a3,s11,a3
    8000620c:	0006c583          	lbu	a1,0(a3)
    80006210:	00c7d513          	srli	a0,a5,0xc
    80006214:	00c7d69b          	srliw	a3,a5,0xc
    80006218:	f8b40223          	sb	a1,-124(s0)
    8000621c:	29067a63          	bgeu	a2,a6,800064b0 <__printf+0x638>
    80006220:	00f6f693          	andi	a3,a3,15
    80006224:	00dd86b3          	add	a3,s11,a3
    80006228:	0006c583          	lbu	a1,0(a3)
    8000622c:	0107d813          	srli	a6,a5,0x10
    80006230:	0107d69b          	srliw	a3,a5,0x10
    80006234:	f8b402a3          	sb	a1,-123(s0)
    80006238:	28a67263          	bgeu	a2,a0,800064bc <__printf+0x644>
    8000623c:	00f6f693          	andi	a3,a3,15
    80006240:	00dd86b3          	add	a3,s11,a3
    80006244:	0006c683          	lbu	a3,0(a3)
    80006248:	0147d79b          	srliw	a5,a5,0x14
    8000624c:	f8d40323          	sb	a3,-122(s0)
    80006250:	21067663          	bgeu	a2,a6,8000645c <__printf+0x5e4>
    80006254:	02079793          	slli	a5,a5,0x20
    80006258:	0207d793          	srli	a5,a5,0x20
    8000625c:	00fd8db3          	add	s11,s11,a5
    80006260:	000dc683          	lbu	a3,0(s11)
    80006264:	00800793          	li	a5,8
    80006268:	00700c93          	li	s9,7
    8000626c:	f8d403a3          	sb	a3,-121(s0)
    80006270:	00075c63          	bgez	a4,80006288 <__printf+0x410>
    80006274:	f9040713          	addi	a4,s0,-112
    80006278:	00f70733          	add	a4,a4,a5
    8000627c:	02d00693          	li	a3,45
    80006280:	fed70823          	sb	a3,-16(a4)
    80006284:	00078c93          	mv	s9,a5
    80006288:	f8040793          	addi	a5,s0,-128
    8000628c:	01978cb3          	add	s9,a5,s9
    80006290:	f7f40d13          	addi	s10,s0,-129
    80006294:	000cc503          	lbu	a0,0(s9)
    80006298:	fffc8c93          	addi	s9,s9,-1
    8000629c:	00000097          	auipc	ra,0x0
    800062a0:	9f8080e7          	jalr	-1544(ra) # 80005c94 <consputc>
    800062a4:	ff9d18e3          	bne	s10,s9,80006294 <__printf+0x41c>
    800062a8:	0100006f          	j	800062b8 <__printf+0x440>
    800062ac:	00000097          	auipc	ra,0x0
    800062b0:	9e8080e7          	jalr	-1560(ra) # 80005c94 <consputc>
    800062b4:	000c8493          	mv	s1,s9
    800062b8:	00094503          	lbu	a0,0(s2)
    800062bc:	c60510e3          	bnez	a0,80005f1c <__printf+0xa4>
    800062c0:	e40c0ee3          	beqz	s8,8000611c <__printf+0x2a4>
    800062c4:	00005517          	auipc	a0,0x5
    800062c8:	edc50513          	addi	a0,a0,-292 # 8000b1a0 <pr>
    800062cc:	00001097          	auipc	ra,0x1
    800062d0:	94c080e7          	jalr	-1716(ra) # 80006c18 <release>
    800062d4:	e49ff06f          	j	8000611c <__printf+0x2a4>
    800062d8:	f7843783          	ld	a5,-136(s0)
    800062dc:	03000513          	li	a0,48
    800062e0:	01000d13          	li	s10,16
    800062e4:	00878713          	addi	a4,a5,8
    800062e8:	0007bc83          	ld	s9,0(a5)
    800062ec:	f6e43c23          	sd	a4,-136(s0)
    800062f0:	00000097          	auipc	ra,0x0
    800062f4:	9a4080e7          	jalr	-1628(ra) # 80005c94 <consputc>
    800062f8:	07800513          	li	a0,120
    800062fc:	00000097          	auipc	ra,0x0
    80006300:	998080e7          	jalr	-1640(ra) # 80005c94 <consputc>
    80006304:	00002d97          	auipc	s11,0x2
    80006308:	2a4d8d93          	addi	s11,s11,676 # 800085a8 <digits>
    8000630c:	03ccd793          	srli	a5,s9,0x3c
    80006310:	00fd87b3          	add	a5,s11,a5
    80006314:	0007c503          	lbu	a0,0(a5)
    80006318:	fffd0d1b          	addiw	s10,s10,-1
    8000631c:	004c9c93          	slli	s9,s9,0x4
    80006320:	00000097          	auipc	ra,0x0
    80006324:	974080e7          	jalr	-1676(ra) # 80005c94 <consputc>
    80006328:	fe0d12e3          	bnez	s10,8000630c <__printf+0x494>
    8000632c:	f8dff06f          	j	800062b8 <__printf+0x440>
    80006330:	f7843783          	ld	a5,-136(s0)
    80006334:	0007bc83          	ld	s9,0(a5)
    80006338:	00878793          	addi	a5,a5,8
    8000633c:	f6f43c23          	sd	a5,-136(s0)
    80006340:	000c9a63          	bnez	s9,80006354 <__printf+0x4dc>
    80006344:	1080006f          	j	8000644c <__printf+0x5d4>
    80006348:	001c8c93          	addi	s9,s9,1
    8000634c:	00000097          	auipc	ra,0x0
    80006350:	948080e7          	jalr	-1720(ra) # 80005c94 <consputc>
    80006354:	000cc503          	lbu	a0,0(s9)
    80006358:	fe0518e3          	bnez	a0,80006348 <__printf+0x4d0>
    8000635c:	f5dff06f          	j	800062b8 <__printf+0x440>
    80006360:	02500513          	li	a0,37
    80006364:	00000097          	auipc	ra,0x0
    80006368:	930080e7          	jalr	-1744(ra) # 80005c94 <consputc>
    8000636c:	000c8513          	mv	a0,s9
    80006370:	00000097          	auipc	ra,0x0
    80006374:	924080e7          	jalr	-1756(ra) # 80005c94 <consputc>
    80006378:	f41ff06f          	j	800062b8 <__printf+0x440>
    8000637c:	02500513          	li	a0,37
    80006380:	00000097          	auipc	ra,0x0
    80006384:	914080e7          	jalr	-1772(ra) # 80005c94 <consputc>
    80006388:	f31ff06f          	j	800062b8 <__printf+0x440>
    8000638c:	00030513          	mv	a0,t1
    80006390:	00000097          	auipc	ra,0x0
    80006394:	7bc080e7          	jalr	1980(ra) # 80006b4c <acquire>
    80006398:	b4dff06f          	j	80005ee4 <__printf+0x6c>
    8000639c:	40c0053b          	negw	a0,a2
    800063a0:	00a00713          	li	a4,10
    800063a4:	02e576bb          	remuw	a3,a0,a4
    800063a8:	00002d97          	auipc	s11,0x2
    800063ac:	200d8d93          	addi	s11,s11,512 # 800085a8 <digits>
    800063b0:	ff700593          	li	a1,-9
    800063b4:	02069693          	slli	a3,a3,0x20
    800063b8:	0206d693          	srli	a3,a3,0x20
    800063bc:	00dd86b3          	add	a3,s11,a3
    800063c0:	0006c683          	lbu	a3,0(a3)
    800063c4:	02e557bb          	divuw	a5,a0,a4
    800063c8:	f8d40023          	sb	a3,-128(s0)
    800063cc:	10b65e63          	bge	a2,a1,800064e8 <__printf+0x670>
    800063d0:	06300593          	li	a1,99
    800063d4:	02e7f6bb          	remuw	a3,a5,a4
    800063d8:	02069693          	slli	a3,a3,0x20
    800063dc:	0206d693          	srli	a3,a3,0x20
    800063e0:	00dd86b3          	add	a3,s11,a3
    800063e4:	0006c683          	lbu	a3,0(a3)
    800063e8:	02e7d73b          	divuw	a4,a5,a4
    800063ec:	00200793          	li	a5,2
    800063f0:	f8d400a3          	sb	a3,-127(s0)
    800063f4:	bca5ece3          	bltu	a1,a0,80005fcc <__printf+0x154>
    800063f8:	ce5ff06f          	j	800060dc <__printf+0x264>
    800063fc:	40e007bb          	negw	a5,a4
    80006400:	00002d97          	auipc	s11,0x2
    80006404:	1a8d8d93          	addi	s11,s11,424 # 800085a8 <digits>
    80006408:	00f7f693          	andi	a3,a5,15
    8000640c:	00dd86b3          	add	a3,s11,a3
    80006410:	0006c583          	lbu	a1,0(a3)
    80006414:	ff100613          	li	a2,-15
    80006418:	0047d69b          	srliw	a3,a5,0x4
    8000641c:	f8b40023          	sb	a1,-128(s0)
    80006420:	0047d59b          	srliw	a1,a5,0x4
    80006424:	0ac75e63          	bge	a4,a2,800064e0 <__printf+0x668>
    80006428:	00f6f693          	andi	a3,a3,15
    8000642c:	00dd86b3          	add	a3,s11,a3
    80006430:	0006c603          	lbu	a2,0(a3)
    80006434:	00f00693          	li	a3,15
    80006438:	0087d79b          	srliw	a5,a5,0x8
    8000643c:	f8c400a3          	sb	a2,-127(s0)
    80006440:	d8b6e4e3          	bltu	a3,a1,800061c8 <__printf+0x350>
    80006444:	00200793          	li	a5,2
    80006448:	e2dff06f          	j	80006274 <__printf+0x3fc>
    8000644c:	00002c97          	auipc	s9,0x2
    80006450:	13cc8c93          	addi	s9,s9,316 # 80008588 <kvmincrease+0xfa8>
    80006454:	02800513          	li	a0,40
    80006458:	ef1ff06f          	j	80006348 <__printf+0x4d0>
    8000645c:	00700793          	li	a5,7
    80006460:	00600c93          	li	s9,6
    80006464:	e0dff06f          	j	80006270 <__printf+0x3f8>
    80006468:	00700793          	li	a5,7
    8000646c:	00600c93          	li	s9,6
    80006470:	c69ff06f          	j	800060d8 <__printf+0x260>
    80006474:	00300793          	li	a5,3
    80006478:	00200c93          	li	s9,2
    8000647c:	c5dff06f          	j	800060d8 <__printf+0x260>
    80006480:	00300793          	li	a5,3
    80006484:	00200c93          	li	s9,2
    80006488:	de9ff06f          	j	80006270 <__printf+0x3f8>
    8000648c:	00400793          	li	a5,4
    80006490:	00300c93          	li	s9,3
    80006494:	dddff06f          	j	80006270 <__printf+0x3f8>
    80006498:	00400793          	li	a5,4
    8000649c:	00300c93          	li	s9,3
    800064a0:	c39ff06f          	j	800060d8 <__printf+0x260>
    800064a4:	00500793          	li	a5,5
    800064a8:	00400c93          	li	s9,4
    800064ac:	c2dff06f          	j	800060d8 <__printf+0x260>
    800064b0:	00500793          	li	a5,5
    800064b4:	00400c93          	li	s9,4
    800064b8:	db9ff06f          	j	80006270 <__printf+0x3f8>
    800064bc:	00600793          	li	a5,6
    800064c0:	00500c93          	li	s9,5
    800064c4:	dadff06f          	j	80006270 <__printf+0x3f8>
    800064c8:	00600793          	li	a5,6
    800064cc:	00500c93          	li	s9,5
    800064d0:	c09ff06f          	j	800060d8 <__printf+0x260>
    800064d4:	00800793          	li	a5,8
    800064d8:	00700c93          	li	s9,7
    800064dc:	bfdff06f          	j	800060d8 <__printf+0x260>
    800064e0:	00100793          	li	a5,1
    800064e4:	d91ff06f          	j	80006274 <__printf+0x3fc>
    800064e8:	00100793          	li	a5,1
    800064ec:	bf1ff06f          	j	800060dc <__printf+0x264>
    800064f0:	00900793          	li	a5,9
    800064f4:	00800c93          	li	s9,8
    800064f8:	be1ff06f          	j	800060d8 <__printf+0x260>
    800064fc:	00002517          	auipc	a0,0x2
    80006500:	09450513          	addi	a0,a0,148 # 80008590 <kvmincrease+0xfb0>
    80006504:	00000097          	auipc	ra,0x0
    80006508:	918080e7          	jalr	-1768(ra) # 80005e1c <panic>

000000008000650c <printfinit>:
    8000650c:	fe010113          	addi	sp,sp,-32
    80006510:	00813823          	sd	s0,16(sp)
    80006514:	00913423          	sd	s1,8(sp)
    80006518:	00113c23          	sd	ra,24(sp)
    8000651c:	02010413          	addi	s0,sp,32
    80006520:	00005497          	auipc	s1,0x5
    80006524:	c8048493          	addi	s1,s1,-896 # 8000b1a0 <pr>
    80006528:	00048513          	mv	a0,s1
    8000652c:	00002597          	auipc	a1,0x2
    80006530:	07458593          	addi	a1,a1,116 # 800085a0 <kvmincrease+0xfc0>
    80006534:	00000097          	auipc	ra,0x0
    80006538:	5f4080e7          	jalr	1524(ra) # 80006b28 <initlock>
    8000653c:	01813083          	ld	ra,24(sp)
    80006540:	01013403          	ld	s0,16(sp)
    80006544:	0004ac23          	sw	zero,24(s1)
    80006548:	00813483          	ld	s1,8(sp)
    8000654c:	02010113          	addi	sp,sp,32
    80006550:	00008067          	ret

0000000080006554 <uartinit>:
    80006554:	ff010113          	addi	sp,sp,-16
    80006558:	00813423          	sd	s0,8(sp)
    8000655c:	01010413          	addi	s0,sp,16
    80006560:	100007b7          	lui	a5,0x10000
    80006564:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80006568:	f8000713          	li	a4,-128
    8000656c:	00e781a3          	sb	a4,3(a5)
    80006570:	00300713          	li	a4,3
    80006574:	00e78023          	sb	a4,0(a5)
    80006578:	000780a3          	sb	zero,1(a5)
    8000657c:	00e781a3          	sb	a4,3(a5)
    80006580:	00700693          	li	a3,7
    80006584:	00d78123          	sb	a3,2(a5)
    80006588:	00e780a3          	sb	a4,1(a5)
    8000658c:	00813403          	ld	s0,8(sp)
    80006590:	01010113          	addi	sp,sp,16
    80006594:	00008067          	ret

0000000080006598 <uartputc>:
    80006598:	00004797          	auipc	a5,0x4
    8000659c:	9707a783          	lw	a5,-1680(a5) # 80009f08 <panicked>
    800065a0:	00078463          	beqz	a5,800065a8 <uartputc+0x10>
    800065a4:	0000006f          	j	800065a4 <uartputc+0xc>
    800065a8:	fd010113          	addi	sp,sp,-48
    800065ac:	02813023          	sd	s0,32(sp)
    800065b0:	00913c23          	sd	s1,24(sp)
    800065b4:	01213823          	sd	s2,16(sp)
    800065b8:	01313423          	sd	s3,8(sp)
    800065bc:	02113423          	sd	ra,40(sp)
    800065c0:	03010413          	addi	s0,sp,48
    800065c4:	00004917          	auipc	s2,0x4
    800065c8:	94c90913          	addi	s2,s2,-1716 # 80009f10 <uart_tx_r>
    800065cc:	00093783          	ld	a5,0(s2)
    800065d0:	00004497          	auipc	s1,0x4
    800065d4:	94848493          	addi	s1,s1,-1720 # 80009f18 <uart_tx_w>
    800065d8:	0004b703          	ld	a4,0(s1)
    800065dc:	02078693          	addi	a3,a5,32
    800065e0:	00050993          	mv	s3,a0
    800065e4:	02e69c63          	bne	a3,a4,8000661c <uartputc+0x84>
    800065e8:	00001097          	auipc	ra,0x1
    800065ec:	834080e7          	jalr	-1996(ra) # 80006e1c <push_on>
    800065f0:	00093783          	ld	a5,0(s2)
    800065f4:	0004b703          	ld	a4,0(s1)
    800065f8:	02078793          	addi	a5,a5,32
    800065fc:	00e79463          	bne	a5,a4,80006604 <uartputc+0x6c>
    80006600:	0000006f          	j	80006600 <uartputc+0x68>
    80006604:	00001097          	auipc	ra,0x1
    80006608:	88c080e7          	jalr	-1908(ra) # 80006e90 <pop_on>
    8000660c:	00093783          	ld	a5,0(s2)
    80006610:	0004b703          	ld	a4,0(s1)
    80006614:	02078693          	addi	a3,a5,32
    80006618:	fce688e3          	beq	a3,a4,800065e8 <uartputc+0x50>
    8000661c:	01f77693          	andi	a3,a4,31
    80006620:	00005597          	auipc	a1,0x5
    80006624:	ba058593          	addi	a1,a1,-1120 # 8000b1c0 <uart_tx_buf>
    80006628:	00d586b3          	add	a3,a1,a3
    8000662c:	00170713          	addi	a4,a4,1
    80006630:	01368023          	sb	s3,0(a3)
    80006634:	00e4b023          	sd	a4,0(s1)
    80006638:	10000637          	lui	a2,0x10000
    8000663c:	02f71063          	bne	a4,a5,8000665c <uartputc+0xc4>
    80006640:	0340006f          	j	80006674 <uartputc+0xdc>
    80006644:	00074703          	lbu	a4,0(a4)
    80006648:	00f93023          	sd	a5,0(s2)
    8000664c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80006650:	00093783          	ld	a5,0(s2)
    80006654:	0004b703          	ld	a4,0(s1)
    80006658:	00f70e63          	beq	a4,a5,80006674 <uartputc+0xdc>
    8000665c:	00564683          	lbu	a3,5(a2)
    80006660:	01f7f713          	andi	a4,a5,31
    80006664:	00e58733          	add	a4,a1,a4
    80006668:	0206f693          	andi	a3,a3,32
    8000666c:	00178793          	addi	a5,a5,1
    80006670:	fc069ae3          	bnez	a3,80006644 <uartputc+0xac>
    80006674:	02813083          	ld	ra,40(sp)
    80006678:	02013403          	ld	s0,32(sp)
    8000667c:	01813483          	ld	s1,24(sp)
    80006680:	01013903          	ld	s2,16(sp)
    80006684:	00813983          	ld	s3,8(sp)
    80006688:	03010113          	addi	sp,sp,48
    8000668c:	00008067          	ret

0000000080006690 <uartputc_sync>:
    80006690:	ff010113          	addi	sp,sp,-16
    80006694:	00813423          	sd	s0,8(sp)
    80006698:	01010413          	addi	s0,sp,16
    8000669c:	00004717          	auipc	a4,0x4
    800066a0:	86c72703          	lw	a4,-1940(a4) # 80009f08 <panicked>
    800066a4:	02071663          	bnez	a4,800066d0 <uartputc_sync+0x40>
    800066a8:	00050793          	mv	a5,a0
    800066ac:	100006b7          	lui	a3,0x10000
    800066b0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800066b4:	02077713          	andi	a4,a4,32
    800066b8:	fe070ce3          	beqz	a4,800066b0 <uartputc_sync+0x20>
    800066bc:	0ff7f793          	andi	a5,a5,255
    800066c0:	00f68023          	sb	a5,0(a3)
    800066c4:	00813403          	ld	s0,8(sp)
    800066c8:	01010113          	addi	sp,sp,16
    800066cc:	00008067          	ret
    800066d0:	0000006f          	j	800066d0 <uartputc_sync+0x40>

00000000800066d4 <uartstart>:
    800066d4:	ff010113          	addi	sp,sp,-16
    800066d8:	00813423          	sd	s0,8(sp)
    800066dc:	01010413          	addi	s0,sp,16
    800066e0:	00004617          	auipc	a2,0x4
    800066e4:	83060613          	addi	a2,a2,-2000 # 80009f10 <uart_tx_r>
    800066e8:	00004517          	auipc	a0,0x4
    800066ec:	83050513          	addi	a0,a0,-2000 # 80009f18 <uart_tx_w>
    800066f0:	00063783          	ld	a5,0(a2)
    800066f4:	00053703          	ld	a4,0(a0)
    800066f8:	04f70263          	beq	a4,a5,8000673c <uartstart+0x68>
    800066fc:	100005b7          	lui	a1,0x10000
    80006700:	00005817          	auipc	a6,0x5
    80006704:	ac080813          	addi	a6,a6,-1344 # 8000b1c0 <uart_tx_buf>
    80006708:	01c0006f          	j	80006724 <uartstart+0x50>
    8000670c:	0006c703          	lbu	a4,0(a3)
    80006710:	00f63023          	sd	a5,0(a2)
    80006714:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80006718:	00063783          	ld	a5,0(a2)
    8000671c:	00053703          	ld	a4,0(a0)
    80006720:	00f70e63          	beq	a4,a5,8000673c <uartstart+0x68>
    80006724:	01f7f713          	andi	a4,a5,31
    80006728:	00e806b3          	add	a3,a6,a4
    8000672c:	0055c703          	lbu	a4,5(a1)
    80006730:	00178793          	addi	a5,a5,1
    80006734:	02077713          	andi	a4,a4,32
    80006738:	fc071ae3          	bnez	a4,8000670c <uartstart+0x38>
    8000673c:	00813403          	ld	s0,8(sp)
    80006740:	01010113          	addi	sp,sp,16
    80006744:	00008067          	ret

0000000080006748 <uartgetc>:
    80006748:	ff010113          	addi	sp,sp,-16
    8000674c:	00813423          	sd	s0,8(sp)
    80006750:	01010413          	addi	s0,sp,16
    80006754:	10000737          	lui	a4,0x10000
    80006758:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000675c:	0017f793          	andi	a5,a5,1
    80006760:	00078c63          	beqz	a5,80006778 <uartgetc+0x30>
    80006764:	00074503          	lbu	a0,0(a4)
    80006768:	0ff57513          	andi	a0,a0,255
    8000676c:	00813403          	ld	s0,8(sp)
    80006770:	01010113          	addi	sp,sp,16
    80006774:	00008067          	ret
    80006778:	fff00513          	li	a0,-1
    8000677c:	ff1ff06f          	j	8000676c <uartgetc+0x24>

0000000080006780 <uartintr>:
    80006780:	100007b7          	lui	a5,0x10000
    80006784:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80006788:	0017f793          	andi	a5,a5,1
    8000678c:	0a078463          	beqz	a5,80006834 <uartintr+0xb4>
    80006790:	fe010113          	addi	sp,sp,-32
    80006794:	00813823          	sd	s0,16(sp)
    80006798:	00913423          	sd	s1,8(sp)
    8000679c:	00113c23          	sd	ra,24(sp)
    800067a0:	02010413          	addi	s0,sp,32
    800067a4:	100004b7          	lui	s1,0x10000
    800067a8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800067ac:	0ff57513          	andi	a0,a0,255
    800067b0:	fffff097          	auipc	ra,0xfffff
    800067b4:	534080e7          	jalr	1332(ra) # 80005ce4 <consoleintr>
    800067b8:	0054c783          	lbu	a5,5(s1)
    800067bc:	0017f793          	andi	a5,a5,1
    800067c0:	fe0794e3          	bnez	a5,800067a8 <uartintr+0x28>
    800067c4:	00003617          	auipc	a2,0x3
    800067c8:	74c60613          	addi	a2,a2,1868 # 80009f10 <uart_tx_r>
    800067cc:	00003517          	auipc	a0,0x3
    800067d0:	74c50513          	addi	a0,a0,1868 # 80009f18 <uart_tx_w>
    800067d4:	00063783          	ld	a5,0(a2)
    800067d8:	00053703          	ld	a4,0(a0)
    800067dc:	04f70263          	beq	a4,a5,80006820 <uartintr+0xa0>
    800067e0:	100005b7          	lui	a1,0x10000
    800067e4:	00005817          	auipc	a6,0x5
    800067e8:	9dc80813          	addi	a6,a6,-1572 # 8000b1c0 <uart_tx_buf>
    800067ec:	01c0006f          	j	80006808 <uartintr+0x88>
    800067f0:	0006c703          	lbu	a4,0(a3)
    800067f4:	00f63023          	sd	a5,0(a2)
    800067f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800067fc:	00063783          	ld	a5,0(a2)
    80006800:	00053703          	ld	a4,0(a0)
    80006804:	00f70e63          	beq	a4,a5,80006820 <uartintr+0xa0>
    80006808:	01f7f713          	andi	a4,a5,31
    8000680c:	00e806b3          	add	a3,a6,a4
    80006810:	0055c703          	lbu	a4,5(a1)
    80006814:	00178793          	addi	a5,a5,1
    80006818:	02077713          	andi	a4,a4,32
    8000681c:	fc071ae3          	bnez	a4,800067f0 <uartintr+0x70>
    80006820:	01813083          	ld	ra,24(sp)
    80006824:	01013403          	ld	s0,16(sp)
    80006828:	00813483          	ld	s1,8(sp)
    8000682c:	02010113          	addi	sp,sp,32
    80006830:	00008067          	ret
    80006834:	00003617          	auipc	a2,0x3
    80006838:	6dc60613          	addi	a2,a2,1756 # 80009f10 <uart_tx_r>
    8000683c:	00003517          	auipc	a0,0x3
    80006840:	6dc50513          	addi	a0,a0,1756 # 80009f18 <uart_tx_w>
    80006844:	00063783          	ld	a5,0(a2)
    80006848:	00053703          	ld	a4,0(a0)
    8000684c:	04f70263          	beq	a4,a5,80006890 <uartintr+0x110>
    80006850:	100005b7          	lui	a1,0x10000
    80006854:	00005817          	auipc	a6,0x5
    80006858:	96c80813          	addi	a6,a6,-1684 # 8000b1c0 <uart_tx_buf>
    8000685c:	01c0006f          	j	80006878 <uartintr+0xf8>
    80006860:	0006c703          	lbu	a4,0(a3)
    80006864:	00f63023          	sd	a5,0(a2)
    80006868:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000686c:	00063783          	ld	a5,0(a2)
    80006870:	00053703          	ld	a4,0(a0)
    80006874:	02f70063          	beq	a4,a5,80006894 <uartintr+0x114>
    80006878:	01f7f713          	andi	a4,a5,31
    8000687c:	00e806b3          	add	a3,a6,a4
    80006880:	0055c703          	lbu	a4,5(a1)
    80006884:	00178793          	addi	a5,a5,1
    80006888:	02077713          	andi	a4,a4,32
    8000688c:	fc071ae3          	bnez	a4,80006860 <uartintr+0xe0>
    80006890:	00008067          	ret
    80006894:	00008067          	ret

0000000080006898 <kinit>:
    80006898:	fc010113          	addi	sp,sp,-64
    8000689c:	02913423          	sd	s1,40(sp)
    800068a0:	fffff7b7          	lui	a5,0xfffff
    800068a4:	00006497          	auipc	s1,0x6
    800068a8:	94b48493          	addi	s1,s1,-1717 # 8000c1ef <end+0xfff>
    800068ac:	02813823          	sd	s0,48(sp)
    800068b0:	01313c23          	sd	s3,24(sp)
    800068b4:	00f4f4b3          	and	s1,s1,a5
    800068b8:	02113c23          	sd	ra,56(sp)
    800068bc:	03213023          	sd	s2,32(sp)
    800068c0:	01413823          	sd	s4,16(sp)
    800068c4:	01513423          	sd	s5,8(sp)
    800068c8:	04010413          	addi	s0,sp,64
    800068cc:	000017b7          	lui	a5,0x1
    800068d0:	01100993          	li	s3,17
    800068d4:	00f487b3          	add	a5,s1,a5
    800068d8:	01b99993          	slli	s3,s3,0x1b
    800068dc:	06f9e063          	bltu	s3,a5,8000693c <kinit+0xa4>
    800068e0:	00005a97          	auipc	s5,0x5
    800068e4:	910a8a93          	addi	s5,s5,-1776 # 8000b1f0 <end>
    800068e8:	0754ec63          	bltu	s1,s5,80006960 <kinit+0xc8>
    800068ec:	0734fa63          	bgeu	s1,s3,80006960 <kinit+0xc8>
    800068f0:	00088a37          	lui	s4,0x88
    800068f4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800068f8:	00003917          	auipc	s2,0x3
    800068fc:	62890913          	addi	s2,s2,1576 # 80009f20 <kmem>
    80006900:	00ca1a13          	slli	s4,s4,0xc
    80006904:	0140006f          	j	80006918 <kinit+0x80>
    80006908:	000017b7          	lui	a5,0x1
    8000690c:	00f484b3          	add	s1,s1,a5
    80006910:	0554e863          	bltu	s1,s5,80006960 <kinit+0xc8>
    80006914:	0534f663          	bgeu	s1,s3,80006960 <kinit+0xc8>
    80006918:	00001637          	lui	a2,0x1
    8000691c:	00100593          	li	a1,1
    80006920:	00048513          	mv	a0,s1
    80006924:	00000097          	auipc	ra,0x0
    80006928:	5e4080e7          	jalr	1508(ra) # 80006f08 <__memset>
    8000692c:	00093783          	ld	a5,0(s2)
    80006930:	00f4b023          	sd	a5,0(s1)
    80006934:	00993023          	sd	s1,0(s2)
    80006938:	fd4498e3          	bne	s1,s4,80006908 <kinit+0x70>
    8000693c:	03813083          	ld	ra,56(sp)
    80006940:	03013403          	ld	s0,48(sp)
    80006944:	02813483          	ld	s1,40(sp)
    80006948:	02013903          	ld	s2,32(sp)
    8000694c:	01813983          	ld	s3,24(sp)
    80006950:	01013a03          	ld	s4,16(sp)
    80006954:	00813a83          	ld	s5,8(sp)
    80006958:	04010113          	addi	sp,sp,64
    8000695c:	00008067          	ret
    80006960:	00002517          	auipc	a0,0x2
    80006964:	c6050513          	addi	a0,a0,-928 # 800085c0 <digits+0x18>
    80006968:	fffff097          	auipc	ra,0xfffff
    8000696c:	4b4080e7          	jalr	1204(ra) # 80005e1c <panic>

0000000080006970 <freerange>:
    80006970:	fc010113          	addi	sp,sp,-64
    80006974:	000017b7          	lui	a5,0x1
    80006978:	02913423          	sd	s1,40(sp)
    8000697c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80006980:	009504b3          	add	s1,a0,s1
    80006984:	fffff537          	lui	a0,0xfffff
    80006988:	02813823          	sd	s0,48(sp)
    8000698c:	02113c23          	sd	ra,56(sp)
    80006990:	03213023          	sd	s2,32(sp)
    80006994:	01313c23          	sd	s3,24(sp)
    80006998:	01413823          	sd	s4,16(sp)
    8000699c:	01513423          	sd	s5,8(sp)
    800069a0:	01613023          	sd	s6,0(sp)
    800069a4:	04010413          	addi	s0,sp,64
    800069a8:	00a4f4b3          	and	s1,s1,a0
    800069ac:	00f487b3          	add	a5,s1,a5
    800069b0:	06f5e463          	bltu	a1,a5,80006a18 <freerange+0xa8>
    800069b4:	00005a97          	auipc	s5,0x5
    800069b8:	83ca8a93          	addi	s5,s5,-1988 # 8000b1f0 <end>
    800069bc:	0954e263          	bltu	s1,s5,80006a40 <freerange+0xd0>
    800069c0:	01100993          	li	s3,17
    800069c4:	01b99993          	slli	s3,s3,0x1b
    800069c8:	0734fc63          	bgeu	s1,s3,80006a40 <freerange+0xd0>
    800069cc:	00058a13          	mv	s4,a1
    800069d0:	00003917          	auipc	s2,0x3
    800069d4:	55090913          	addi	s2,s2,1360 # 80009f20 <kmem>
    800069d8:	00002b37          	lui	s6,0x2
    800069dc:	0140006f          	j	800069f0 <freerange+0x80>
    800069e0:	000017b7          	lui	a5,0x1
    800069e4:	00f484b3          	add	s1,s1,a5
    800069e8:	0554ec63          	bltu	s1,s5,80006a40 <freerange+0xd0>
    800069ec:	0534fa63          	bgeu	s1,s3,80006a40 <freerange+0xd0>
    800069f0:	00001637          	lui	a2,0x1
    800069f4:	00100593          	li	a1,1
    800069f8:	00048513          	mv	a0,s1
    800069fc:	00000097          	auipc	ra,0x0
    80006a00:	50c080e7          	jalr	1292(ra) # 80006f08 <__memset>
    80006a04:	00093703          	ld	a4,0(s2)
    80006a08:	016487b3          	add	a5,s1,s6
    80006a0c:	00e4b023          	sd	a4,0(s1)
    80006a10:	00993023          	sd	s1,0(s2)
    80006a14:	fcfa76e3          	bgeu	s4,a5,800069e0 <freerange+0x70>
    80006a18:	03813083          	ld	ra,56(sp)
    80006a1c:	03013403          	ld	s0,48(sp)
    80006a20:	02813483          	ld	s1,40(sp)
    80006a24:	02013903          	ld	s2,32(sp)
    80006a28:	01813983          	ld	s3,24(sp)
    80006a2c:	01013a03          	ld	s4,16(sp)
    80006a30:	00813a83          	ld	s5,8(sp)
    80006a34:	00013b03          	ld	s6,0(sp)
    80006a38:	04010113          	addi	sp,sp,64
    80006a3c:	00008067          	ret
    80006a40:	00002517          	auipc	a0,0x2
    80006a44:	b8050513          	addi	a0,a0,-1152 # 800085c0 <digits+0x18>
    80006a48:	fffff097          	auipc	ra,0xfffff
    80006a4c:	3d4080e7          	jalr	980(ra) # 80005e1c <panic>

0000000080006a50 <kfree>:
    80006a50:	fe010113          	addi	sp,sp,-32
    80006a54:	00813823          	sd	s0,16(sp)
    80006a58:	00113c23          	sd	ra,24(sp)
    80006a5c:	00913423          	sd	s1,8(sp)
    80006a60:	02010413          	addi	s0,sp,32
    80006a64:	03451793          	slli	a5,a0,0x34
    80006a68:	04079c63          	bnez	a5,80006ac0 <kfree+0x70>
    80006a6c:	00004797          	auipc	a5,0x4
    80006a70:	78478793          	addi	a5,a5,1924 # 8000b1f0 <end>
    80006a74:	00050493          	mv	s1,a0
    80006a78:	04f56463          	bltu	a0,a5,80006ac0 <kfree+0x70>
    80006a7c:	01100793          	li	a5,17
    80006a80:	01b79793          	slli	a5,a5,0x1b
    80006a84:	02f57e63          	bgeu	a0,a5,80006ac0 <kfree+0x70>
    80006a88:	00001637          	lui	a2,0x1
    80006a8c:	00100593          	li	a1,1
    80006a90:	00000097          	auipc	ra,0x0
    80006a94:	478080e7          	jalr	1144(ra) # 80006f08 <__memset>
    80006a98:	00003797          	auipc	a5,0x3
    80006a9c:	48878793          	addi	a5,a5,1160 # 80009f20 <kmem>
    80006aa0:	0007b703          	ld	a4,0(a5)
    80006aa4:	01813083          	ld	ra,24(sp)
    80006aa8:	01013403          	ld	s0,16(sp)
    80006aac:	00e4b023          	sd	a4,0(s1)
    80006ab0:	0097b023          	sd	s1,0(a5)
    80006ab4:	00813483          	ld	s1,8(sp)
    80006ab8:	02010113          	addi	sp,sp,32
    80006abc:	00008067          	ret
    80006ac0:	00002517          	auipc	a0,0x2
    80006ac4:	b0050513          	addi	a0,a0,-1280 # 800085c0 <digits+0x18>
    80006ac8:	fffff097          	auipc	ra,0xfffff
    80006acc:	354080e7          	jalr	852(ra) # 80005e1c <panic>

0000000080006ad0 <kalloc>:
    80006ad0:	fe010113          	addi	sp,sp,-32
    80006ad4:	00813823          	sd	s0,16(sp)
    80006ad8:	00913423          	sd	s1,8(sp)
    80006adc:	00113c23          	sd	ra,24(sp)
    80006ae0:	02010413          	addi	s0,sp,32
    80006ae4:	00003797          	auipc	a5,0x3
    80006ae8:	43c78793          	addi	a5,a5,1084 # 80009f20 <kmem>
    80006aec:	0007b483          	ld	s1,0(a5)
    80006af0:	02048063          	beqz	s1,80006b10 <kalloc+0x40>
    80006af4:	0004b703          	ld	a4,0(s1)
    80006af8:	00001637          	lui	a2,0x1
    80006afc:	00500593          	li	a1,5
    80006b00:	00048513          	mv	a0,s1
    80006b04:	00e7b023          	sd	a4,0(a5)
    80006b08:	00000097          	auipc	ra,0x0
    80006b0c:	400080e7          	jalr	1024(ra) # 80006f08 <__memset>
    80006b10:	01813083          	ld	ra,24(sp)
    80006b14:	01013403          	ld	s0,16(sp)
    80006b18:	00048513          	mv	a0,s1
    80006b1c:	00813483          	ld	s1,8(sp)
    80006b20:	02010113          	addi	sp,sp,32
    80006b24:	00008067          	ret

0000000080006b28 <initlock>:
    80006b28:	ff010113          	addi	sp,sp,-16
    80006b2c:	00813423          	sd	s0,8(sp)
    80006b30:	01010413          	addi	s0,sp,16
    80006b34:	00813403          	ld	s0,8(sp)
    80006b38:	00b53423          	sd	a1,8(a0)
    80006b3c:	00052023          	sw	zero,0(a0)
    80006b40:	00053823          	sd	zero,16(a0)
    80006b44:	01010113          	addi	sp,sp,16
    80006b48:	00008067          	ret

0000000080006b4c <acquire>:
    80006b4c:	fe010113          	addi	sp,sp,-32
    80006b50:	00813823          	sd	s0,16(sp)
    80006b54:	00913423          	sd	s1,8(sp)
    80006b58:	00113c23          	sd	ra,24(sp)
    80006b5c:	01213023          	sd	s2,0(sp)
    80006b60:	02010413          	addi	s0,sp,32
    80006b64:	00050493          	mv	s1,a0
    80006b68:	10002973          	csrr	s2,sstatus
    80006b6c:	100027f3          	csrr	a5,sstatus
    80006b70:	ffd7f793          	andi	a5,a5,-3
    80006b74:	10079073          	csrw	sstatus,a5
    80006b78:	fffff097          	auipc	ra,0xfffff
    80006b7c:	8e4080e7          	jalr	-1820(ra) # 8000545c <mycpu>
    80006b80:	07852783          	lw	a5,120(a0)
    80006b84:	06078e63          	beqz	a5,80006c00 <acquire+0xb4>
    80006b88:	fffff097          	auipc	ra,0xfffff
    80006b8c:	8d4080e7          	jalr	-1836(ra) # 8000545c <mycpu>
    80006b90:	07852783          	lw	a5,120(a0)
    80006b94:	0004a703          	lw	a4,0(s1)
    80006b98:	0017879b          	addiw	a5,a5,1
    80006b9c:	06f52c23          	sw	a5,120(a0)
    80006ba0:	04071063          	bnez	a4,80006be0 <acquire+0x94>
    80006ba4:	00100713          	li	a4,1
    80006ba8:	00070793          	mv	a5,a4
    80006bac:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80006bb0:	0007879b          	sext.w	a5,a5
    80006bb4:	fe079ae3          	bnez	a5,80006ba8 <acquire+0x5c>
    80006bb8:	0ff0000f          	fence
    80006bbc:	fffff097          	auipc	ra,0xfffff
    80006bc0:	8a0080e7          	jalr	-1888(ra) # 8000545c <mycpu>
    80006bc4:	01813083          	ld	ra,24(sp)
    80006bc8:	01013403          	ld	s0,16(sp)
    80006bcc:	00a4b823          	sd	a0,16(s1)
    80006bd0:	00013903          	ld	s2,0(sp)
    80006bd4:	00813483          	ld	s1,8(sp)
    80006bd8:	02010113          	addi	sp,sp,32
    80006bdc:	00008067          	ret
    80006be0:	0104b903          	ld	s2,16(s1)
    80006be4:	fffff097          	auipc	ra,0xfffff
    80006be8:	878080e7          	jalr	-1928(ra) # 8000545c <mycpu>
    80006bec:	faa91ce3          	bne	s2,a0,80006ba4 <acquire+0x58>
    80006bf0:	00002517          	auipc	a0,0x2
    80006bf4:	9d850513          	addi	a0,a0,-1576 # 800085c8 <digits+0x20>
    80006bf8:	fffff097          	auipc	ra,0xfffff
    80006bfc:	224080e7          	jalr	548(ra) # 80005e1c <panic>
    80006c00:	00195913          	srli	s2,s2,0x1
    80006c04:	fffff097          	auipc	ra,0xfffff
    80006c08:	858080e7          	jalr	-1960(ra) # 8000545c <mycpu>
    80006c0c:	00197913          	andi	s2,s2,1
    80006c10:	07252e23          	sw	s2,124(a0)
    80006c14:	f75ff06f          	j	80006b88 <acquire+0x3c>

0000000080006c18 <release>:
    80006c18:	fe010113          	addi	sp,sp,-32
    80006c1c:	00813823          	sd	s0,16(sp)
    80006c20:	00113c23          	sd	ra,24(sp)
    80006c24:	00913423          	sd	s1,8(sp)
    80006c28:	01213023          	sd	s2,0(sp)
    80006c2c:	02010413          	addi	s0,sp,32
    80006c30:	00052783          	lw	a5,0(a0)
    80006c34:	00079a63          	bnez	a5,80006c48 <release+0x30>
    80006c38:	00002517          	auipc	a0,0x2
    80006c3c:	99850513          	addi	a0,a0,-1640 # 800085d0 <digits+0x28>
    80006c40:	fffff097          	auipc	ra,0xfffff
    80006c44:	1dc080e7          	jalr	476(ra) # 80005e1c <panic>
    80006c48:	01053903          	ld	s2,16(a0)
    80006c4c:	00050493          	mv	s1,a0
    80006c50:	fffff097          	auipc	ra,0xfffff
    80006c54:	80c080e7          	jalr	-2036(ra) # 8000545c <mycpu>
    80006c58:	fea910e3          	bne	s2,a0,80006c38 <release+0x20>
    80006c5c:	0004b823          	sd	zero,16(s1)
    80006c60:	0ff0000f          	fence
    80006c64:	0f50000f          	fence	iorw,ow
    80006c68:	0804a02f          	amoswap.w	zero,zero,(s1)
    80006c6c:	ffffe097          	auipc	ra,0xffffe
    80006c70:	7f0080e7          	jalr	2032(ra) # 8000545c <mycpu>
    80006c74:	100027f3          	csrr	a5,sstatus
    80006c78:	0027f793          	andi	a5,a5,2
    80006c7c:	04079a63          	bnez	a5,80006cd0 <release+0xb8>
    80006c80:	07852783          	lw	a5,120(a0)
    80006c84:	02f05e63          	blez	a5,80006cc0 <release+0xa8>
    80006c88:	fff7871b          	addiw	a4,a5,-1
    80006c8c:	06e52c23          	sw	a4,120(a0)
    80006c90:	00071c63          	bnez	a4,80006ca8 <release+0x90>
    80006c94:	07c52783          	lw	a5,124(a0)
    80006c98:	00078863          	beqz	a5,80006ca8 <release+0x90>
    80006c9c:	100027f3          	csrr	a5,sstatus
    80006ca0:	0027e793          	ori	a5,a5,2
    80006ca4:	10079073          	csrw	sstatus,a5
    80006ca8:	01813083          	ld	ra,24(sp)
    80006cac:	01013403          	ld	s0,16(sp)
    80006cb0:	00813483          	ld	s1,8(sp)
    80006cb4:	00013903          	ld	s2,0(sp)
    80006cb8:	02010113          	addi	sp,sp,32
    80006cbc:	00008067          	ret
    80006cc0:	00002517          	auipc	a0,0x2
    80006cc4:	93050513          	addi	a0,a0,-1744 # 800085f0 <digits+0x48>
    80006cc8:	fffff097          	auipc	ra,0xfffff
    80006ccc:	154080e7          	jalr	340(ra) # 80005e1c <panic>
    80006cd0:	00002517          	auipc	a0,0x2
    80006cd4:	90850513          	addi	a0,a0,-1784 # 800085d8 <digits+0x30>
    80006cd8:	fffff097          	auipc	ra,0xfffff
    80006cdc:	144080e7          	jalr	324(ra) # 80005e1c <panic>

0000000080006ce0 <holding>:
    80006ce0:	00052783          	lw	a5,0(a0)
    80006ce4:	00079663          	bnez	a5,80006cf0 <holding+0x10>
    80006ce8:	00000513          	li	a0,0
    80006cec:	00008067          	ret
    80006cf0:	fe010113          	addi	sp,sp,-32
    80006cf4:	00813823          	sd	s0,16(sp)
    80006cf8:	00913423          	sd	s1,8(sp)
    80006cfc:	00113c23          	sd	ra,24(sp)
    80006d00:	02010413          	addi	s0,sp,32
    80006d04:	01053483          	ld	s1,16(a0)
    80006d08:	ffffe097          	auipc	ra,0xffffe
    80006d0c:	754080e7          	jalr	1876(ra) # 8000545c <mycpu>
    80006d10:	01813083          	ld	ra,24(sp)
    80006d14:	01013403          	ld	s0,16(sp)
    80006d18:	40a48533          	sub	a0,s1,a0
    80006d1c:	00153513          	seqz	a0,a0
    80006d20:	00813483          	ld	s1,8(sp)
    80006d24:	02010113          	addi	sp,sp,32
    80006d28:	00008067          	ret

0000000080006d2c <push_off>:
    80006d2c:	fe010113          	addi	sp,sp,-32
    80006d30:	00813823          	sd	s0,16(sp)
    80006d34:	00113c23          	sd	ra,24(sp)
    80006d38:	00913423          	sd	s1,8(sp)
    80006d3c:	02010413          	addi	s0,sp,32
    80006d40:	100024f3          	csrr	s1,sstatus
    80006d44:	100027f3          	csrr	a5,sstatus
    80006d48:	ffd7f793          	andi	a5,a5,-3
    80006d4c:	10079073          	csrw	sstatus,a5
    80006d50:	ffffe097          	auipc	ra,0xffffe
    80006d54:	70c080e7          	jalr	1804(ra) # 8000545c <mycpu>
    80006d58:	07852783          	lw	a5,120(a0)
    80006d5c:	02078663          	beqz	a5,80006d88 <push_off+0x5c>
    80006d60:	ffffe097          	auipc	ra,0xffffe
    80006d64:	6fc080e7          	jalr	1788(ra) # 8000545c <mycpu>
    80006d68:	07852783          	lw	a5,120(a0)
    80006d6c:	01813083          	ld	ra,24(sp)
    80006d70:	01013403          	ld	s0,16(sp)
    80006d74:	0017879b          	addiw	a5,a5,1
    80006d78:	06f52c23          	sw	a5,120(a0)
    80006d7c:	00813483          	ld	s1,8(sp)
    80006d80:	02010113          	addi	sp,sp,32
    80006d84:	00008067          	ret
    80006d88:	0014d493          	srli	s1,s1,0x1
    80006d8c:	ffffe097          	auipc	ra,0xffffe
    80006d90:	6d0080e7          	jalr	1744(ra) # 8000545c <mycpu>
    80006d94:	0014f493          	andi	s1,s1,1
    80006d98:	06952e23          	sw	s1,124(a0)
    80006d9c:	fc5ff06f          	j	80006d60 <push_off+0x34>

0000000080006da0 <pop_off>:
    80006da0:	ff010113          	addi	sp,sp,-16
    80006da4:	00813023          	sd	s0,0(sp)
    80006da8:	00113423          	sd	ra,8(sp)
    80006dac:	01010413          	addi	s0,sp,16
    80006db0:	ffffe097          	auipc	ra,0xffffe
    80006db4:	6ac080e7          	jalr	1708(ra) # 8000545c <mycpu>
    80006db8:	100027f3          	csrr	a5,sstatus
    80006dbc:	0027f793          	andi	a5,a5,2
    80006dc0:	04079663          	bnez	a5,80006e0c <pop_off+0x6c>
    80006dc4:	07852783          	lw	a5,120(a0)
    80006dc8:	02f05a63          	blez	a5,80006dfc <pop_off+0x5c>
    80006dcc:	fff7871b          	addiw	a4,a5,-1
    80006dd0:	06e52c23          	sw	a4,120(a0)
    80006dd4:	00071c63          	bnez	a4,80006dec <pop_off+0x4c>
    80006dd8:	07c52783          	lw	a5,124(a0)
    80006ddc:	00078863          	beqz	a5,80006dec <pop_off+0x4c>
    80006de0:	100027f3          	csrr	a5,sstatus
    80006de4:	0027e793          	ori	a5,a5,2
    80006de8:	10079073          	csrw	sstatus,a5
    80006dec:	00813083          	ld	ra,8(sp)
    80006df0:	00013403          	ld	s0,0(sp)
    80006df4:	01010113          	addi	sp,sp,16
    80006df8:	00008067          	ret
    80006dfc:	00001517          	auipc	a0,0x1
    80006e00:	7f450513          	addi	a0,a0,2036 # 800085f0 <digits+0x48>
    80006e04:	fffff097          	auipc	ra,0xfffff
    80006e08:	018080e7          	jalr	24(ra) # 80005e1c <panic>
    80006e0c:	00001517          	auipc	a0,0x1
    80006e10:	7cc50513          	addi	a0,a0,1996 # 800085d8 <digits+0x30>
    80006e14:	fffff097          	auipc	ra,0xfffff
    80006e18:	008080e7          	jalr	8(ra) # 80005e1c <panic>

0000000080006e1c <push_on>:
    80006e1c:	fe010113          	addi	sp,sp,-32
    80006e20:	00813823          	sd	s0,16(sp)
    80006e24:	00113c23          	sd	ra,24(sp)
    80006e28:	00913423          	sd	s1,8(sp)
    80006e2c:	02010413          	addi	s0,sp,32
    80006e30:	100024f3          	csrr	s1,sstatus
    80006e34:	100027f3          	csrr	a5,sstatus
    80006e38:	0027e793          	ori	a5,a5,2
    80006e3c:	10079073          	csrw	sstatus,a5
    80006e40:	ffffe097          	auipc	ra,0xffffe
    80006e44:	61c080e7          	jalr	1564(ra) # 8000545c <mycpu>
    80006e48:	07852783          	lw	a5,120(a0)
    80006e4c:	02078663          	beqz	a5,80006e78 <push_on+0x5c>
    80006e50:	ffffe097          	auipc	ra,0xffffe
    80006e54:	60c080e7          	jalr	1548(ra) # 8000545c <mycpu>
    80006e58:	07852783          	lw	a5,120(a0)
    80006e5c:	01813083          	ld	ra,24(sp)
    80006e60:	01013403          	ld	s0,16(sp)
    80006e64:	0017879b          	addiw	a5,a5,1
    80006e68:	06f52c23          	sw	a5,120(a0)
    80006e6c:	00813483          	ld	s1,8(sp)
    80006e70:	02010113          	addi	sp,sp,32
    80006e74:	00008067          	ret
    80006e78:	0014d493          	srli	s1,s1,0x1
    80006e7c:	ffffe097          	auipc	ra,0xffffe
    80006e80:	5e0080e7          	jalr	1504(ra) # 8000545c <mycpu>
    80006e84:	0014f493          	andi	s1,s1,1
    80006e88:	06952e23          	sw	s1,124(a0)
    80006e8c:	fc5ff06f          	j	80006e50 <push_on+0x34>

0000000080006e90 <pop_on>:
    80006e90:	ff010113          	addi	sp,sp,-16
    80006e94:	00813023          	sd	s0,0(sp)
    80006e98:	00113423          	sd	ra,8(sp)
    80006e9c:	01010413          	addi	s0,sp,16
    80006ea0:	ffffe097          	auipc	ra,0xffffe
    80006ea4:	5bc080e7          	jalr	1468(ra) # 8000545c <mycpu>
    80006ea8:	100027f3          	csrr	a5,sstatus
    80006eac:	0027f793          	andi	a5,a5,2
    80006eb0:	04078463          	beqz	a5,80006ef8 <pop_on+0x68>
    80006eb4:	07852783          	lw	a5,120(a0)
    80006eb8:	02f05863          	blez	a5,80006ee8 <pop_on+0x58>
    80006ebc:	fff7879b          	addiw	a5,a5,-1
    80006ec0:	06f52c23          	sw	a5,120(a0)
    80006ec4:	07853783          	ld	a5,120(a0)
    80006ec8:	00079863          	bnez	a5,80006ed8 <pop_on+0x48>
    80006ecc:	100027f3          	csrr	a5,sstatus
    80006ed0:	ffd7f793          	andi	a5,a5,-3
    80006ed4:	10079073          	csrw	sstatus,a5
    80006ed8:	00813083          	ld	ra,8(sp)
    80006edc:	00013403          	ld	s0,0(sp)
    80006ee0:	01010113          	addi	sp,sp,16
    80006ee4:	00008067          	ret
    80006ee8:	00001517          	auipc	a0,0x1
    80006eec:	73050513          	addi	a0,a0,1840 # 80008618 <digits+0x70>
    80006ef0:	fffff097          	auipc	ra,0xfffff
    80006ef4:	f2c080e7          	jalr	-212(ra) # 80005e1c <panic>
    80006ef8:	00001517          	auipc	a0,0x1
    80006efc:	70050513          	addi	a0,a0,1792 # 800085f8 <digits+0x50>
    80006f00:	fffff097          	auipc	ra,0xfffff
    80006f04:	f1c080e7          	jalr	-228(ra) # 80005e1c <panic>

0000000080006f08 <__memset>:
    80006f08:	ff010113          	addi	sp,sp,-16
    80006f0c:	00813423          	sd	s0,8(sp)
    80006f10:	01010413          	addi	s0,sp,16
    80006f14:	1a060e63          	beqz	a2,800070d0 <__memset+0x1c8>
    80006f18:	40a007b3          	neg	a5,a0
    80006f1c:	0077f793          	andi	a5,a5,7
    80006f20:	00778693          	addi	a3,a5,7
    80006f24:	00b00813          	li	a6,11
    80006f28:	0ff5f593          	andi	a1,a1,255
    80006f2c:	fff6071b          	addiw	a4,a2,-1
    80006f30:	1b06e663          	bltu	a3,a6,800070dc <__memset+0x1d4>
    80006f34:	1cd76463          	bltu	a4,a3,800070fc <__memset+0x1f4>
    80006f38:	1a078e63          	beqz	a5,800070f4 <__memset+0x1ec>
    80006f3c:	00b50023          	sb	a1,0(a0)
    80006f40:	00100713          	li	a4,1
    80006f44:	1ae78463          	beq	a5,a4,800070ec <__memset+0x1e4>
    80006f48:	00b500a3          	sb	a1,1(a0)
    80006f4c:	00200713          	li	a4,2
    80006f50:	1ae78a63          	beq	a5,a4,80007104 <__memset+0x1fc>
    80006f54:	00b50123          	sb	a1,2(a0)
    80006f58:	00300713          	li	a4,3
    80006f5c:	18e78463          	beq	a5,a4,800070e4 <__memset+0x1dc>
    80006f60:	00b501a3          	sb	a1,3(a0)
    80006f64:	00400713          	li	a4,4
    80006f68:	1ae78263          	beq	a5,a4,8000710c <__memset+0x204>
    80006f6c:	00b50223          	sb	a1,4(a0)
    80006f70:	00500713          	li	a4,5
    80006f74:	1ae78063          	beq	a5,a4,80007114 <__memset+0x20c>
    80006f78:	00b502a3          	sb	a1,5(a0)
    80006f7c:	00700713          	li	a4,7
    80006f80:	18e79e63          	bne	a5,a4,8000711c <__memset+0x214>
    80006f84:	00b50323          	sb	a1,6(a0)
    80006f88:	00700e93          	li	t4,7
    80006f8c:	00859713          	slli	a4,a1,0x8
    80006f90:	00e5e733          	or	a4,a1,a4
    80006f94:	01059e13          	slli	t3,a1,0x10
    80006f98:	01c76e33          	or	t3,a4,t3
    80006f9c:	01859313          	slli	t1,a1,0x18
    80006fa0:	006e6333          	or	t1,t3,t1
    80006fa4:	02059893          	slli	a7,a1,0x20
    80006fa8:	40f60e3b          	subw	t3,a2,a5
    80006fac:	011368b3          	or	a7,t1,a7
    80006fb0:	02859813          	slli	a6,a1,0x28
    80006fb4:	0108e833          	or	a6,a7,a6
    80006fb8:	03059693          	slli	a3,a1,0x30
    80006fbc:	003e589b          	srliw	a7,t3,0x3
    80006fc0:	00d866b3          	or	a3,a6,a3
    80006fc4:	03859713          	slli	a4,a1,0x38
    80006fc8:	00389813          	slli	a6,a7,0x3
    80006fcc:	00f507b3          	add	a5,a0,a5
    80006fd0:	00e6e733          	or	a4,a3,a4
    80006fd4:	000e089b          	sext.w	a7,t3
    80006fd8:	00f806b3          	add	a3,a6,a5
    80006fdc:	00e7b023          	sd	a4,0(a5)
    80006fe0:	00878793          	addi	a5,a5,8
    80006fe4:	fed79ce3          	bne	a5,a3,80006fdc <__memset+0xd4>
    80006fe8:	ff8e7793          	andi	a5,t3,-8
    80006fec:	0007871b          	sext.w	a4,a5
    80006ff0:	01d787bb          	addw	a5,a5,t4
    80006ff4:	0ce88e63          	beq	a7,a4,800070d0 <__memset+0x1c8>
    80006ff8:	00f50733          	add	a4,a0,a5
    80006ffc:	00b70023          	sb	a1,0(a4)
    80007000:	0017871b          	addiw	a4,a5,1
    80007004:	0cc77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007008:	00e50733          	add	a4,a0,a4
    8000700c:	00b70023          	sb	a1,0(a4)
    80007010:	0027871b          	addiw	a4,a5,2
    80007014:	0ac77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007018:	00e50733          	add	a4,a0,a4
    8000701c:	00b70023          	sb	a1,0(a4)
    80007020:	0037871b          	addiw	a4,a5,3
    80007024:	0ac77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007028:	00e50733          	add	a4,a0,a4
    8000702c:	00b70023          	sb	a1,0(a4)
    80007030:	0047871b          	addiw	a4,a5,4
    80007034:	08c77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007038:	00e50733          	add	a4,a0,a4
    8000703c:	00b70023          	sb	a1,0(a4)
    80007040:	0057871b          	addiw	a4,a5,5
    80007044:	08c77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007048:	00e50733          	add	a4,a0,a4
    8000704c:	00b70023          	sb	a1,0(a4)
    80007050:	0067871b          	addiw	a4,a5,6
    80007054:	06c77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007058:	00e50733          	add	a4,a0,a4
    8000705c:	00b70023          	sb	a1,0(a4)
    80007060:	0077871b          	addiw	a4,a5,7
    80007064:	06c77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007068:	00e50733          	add	a4,a0,a4
    8000706c:	00b70023          	sb	a1,0(a4)
    80007070:	0087871b          	addiw	a4,a5,8
    80007074:	04c77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007078:	00e50733          	add	a4,a0,a4
    8000707c:	00b70023          	sb	a1,0(a4)
    80007080:	0097871b          	addiw	a4,a5,9
    80007084:	04c77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007088:	00e50733          	add	a4,a0,a4
    8000708c:	00b70023          	sb	a1,0(a4)
    80007090:	00a7871b          	addiw	a4,a5,10
    80007094:	02c77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    80007098:	00e50733          	add	a4,a0,a4
    8000709c:	00b70023          	sb	a1,0(a4)
    800070a0:	00b7871b          	addiw	a4,a5,11
    800070a4:	02c77663          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    800070a8:	00e50733          	add	a4,a0,a4
    800070ac:	00b70023          	sb	a1,0(a4)
    800070b0:	00c7871b          	addiw	a4,a5,12
    800070b4:	00c77e63          	bgeu	a4,a2,800070d0 <__memset+0x1c8>
    800070b8:	00e50733          	add	a4,a0,a4
    800070bc:	00b70023          	sb	a1,0(a4)
    800070c0:	00d7879b          	addiw	a5,a5,13
    800070c4:	00c7f663          	bgeu	a5,a2,800070d0 <__memset+0x1c8>
    800070c8:	00f507b3          	add	a5,a0,a5
    800070cc:	00b78023          	sb	a1,0(a5)
    800070d0:	00813403          	ld	s0,8(sp)
    800070d4:	01010113          	addi	sp,sp,16
    800070d8:	00008067          	ret
    800070dc:	00b00693          	li	a3,11
    800070e0:	e55ff06f          	j	80006f34 <__memset+0x2c>
    800070e4:	00300e93          	li	t4,3
    800070e8:	ea5ff06f          	j	80006f8c <__memset+0x84>
    800070ec:	00100e93          	li	t4,1
    800070f0:	e9dff06f          	j	80006f8c <__memset+0x84>
    800070f4:	00000e93          	li	t4,0
    800070f8:	e95ff06f          	j	80006f8c <__memset+0x84>
    800070fc:	00000793          	li	a5,0
    80007100:	ef9ff06f          	j	80006ff8 <__memset+0xf0>
    80007104:	00200e93          	li	t4,2
    80007108:	e85ff06f          	j	80006f8c <__memset+0x84>
    8000710c:	00400e93          	li	t4,4
    80007110:	e7dff06f          	j	80006f8c <__memset+0x84>
    80007114:	00500e93          	li	t4,5
    80007118:	e75ff06f          	j	80006f8c <__memset+0x84>
    8000711c:	00600e93          	li	t4,6
    80007120:	e6dff06f          	j	80006f8c <__memset+0x84>

0000000080007124 <__memmove>:
    80007124:	ff010113          	addi	sp,sp,-16
    80007128:	00813423          	sd	s0,8(sp)
    8000712c:	01010413          	addi	s0,sp,16
    80007130:	0e060863          	beqz	a2,80007220 <__memmove+0xfc>
    80007134:	fff6069b          	addiw	a3,a2,-1
    80007138:	0006881b          	sext.w	a6,a3
    8000713c:	0ea5e863          	bltu	a1,a0,8000722c <__memmove+0x108>
    80007140:	00758713          	addi	a4,a1,7
    80007144:	00a5e7b3          	or	a5,a1,a0
    80007148:	40a70733          	sub	a4,a4,a0
    8000714c:	0077f793          	andi	a5,a5,7
    80007150:	00f73713          	sltiu	a4,a4,15
    80007154:	00174713          	xori	a4,a4,1
    80007158:	0017b793          	seqz	a5,a5
    8000715c:	00e7f7b3          	and	a5,a5,a4
    80007160:	10078863          	beqz	a5,80007270 <__memmove+0x14c>
    80007164:	00900793          	li	a5,9
    80007168:	1107f463          	bgeu	a5,a6,80007270 <__memmove+0x14c>
    8000716c:	0036581b          	srliw	a6,a2,0x3
    80007170:	fff8081b          	addiw	a6,a6,-1
    80007174:	02081813          	slli	a6,a6,0x20
    80007178:	01d85893          	srli	a7,a6,0x1d
    8000717c:	00858813          	addi	a6,a1,8
    80007180:	00058793          	mv	a5,a1
    80007184:	00050713          	mv	a4,a0
    80007188:	01088833          	add	a6,a7,a6
    8000718c:	0007b883          	ld	a7,0(a5)
    80007190:	00878793          	addi	a5,a5,8
    80007194:	00870713          	addi	a4,a4,8
    80007198:	ff173c23          	sd	a7,-8(a4)
    8000719c:	ff0798e3          	bne	a5,a6,8000718c <__memmove+0x68>
    800071a0:	ff867713          	andi	a4,a2,-8
    800071a4:	02071793          	slli	a5,a4,0x20
    800071a8:	0207d793          	srli	a5,a5,0x20
    800071ac:	00f585b3          	add	a1,a1,a5
    800071b0:	40e686bb          	subw	a3,a3,a4
    800071b4:	00f507b3          	add	a5,a0,a5
    800071b8:	06e60463          	beq	a2,a4,80007220 <__memmove+0xfc>
    800071bc:	0005c703          	lbu	a4,0(a1)
    800071c0:	00e78023          	sb	a4,0(a5)
    800071c4:	04068e63          	beqz	a3,80007220 <__memmove+0xfc>
    800071c8:	0015c603          	lbu	a2,1(a1)
    800071cc:	00100713          	li	a4,1
    800071d0:	00c780a3          	sb	a2,1(a5)
    800071d4:	04e68663          	beq	a3,a4,80007220 <__memmove+0xfc>
    800071d8:	0025c603          	lbu	a2,2(a1)
    800071dc:	00200713          	li	a4,2
    800071e0:	00c78123          	sb	a2,2(a5)
    800071e4:	02e68e63          	beq	a3,a4,80007220 <__memmove+0xfc>
    800071e8:	0035c603          	lbu	a2,3(a1)
    800071ec:	00300713          	li	a4,3
    800071f0:	00c781a3          	sb	a2,3(a5)
    800071f4:	02e68663          	beq	a3,a4,80007220 <__memmove+0xfc>
    800071f8:	0045c603          	lbu	a2,4(a1)
    800071fc:	00400713          	li	a4,4
    80007200:	00c78223          	sb	a2,4(a5)
    80007204:	00e68e63          	beq	a3,a4,80007220 <__memmove+0xfc>
    80007208:	0055c603          	lbu	a2,5(a1)
    8000720c:	00500713          	li	a4,5
    80007210:	00c782a3          	sb	a2,5(a5)
    80007214:	00e68663          	beq	a3,a4,80007220 <__memmove+0xfc>
    80007218:	0065c703          	lbu	a4,6(a1)
    8000721c:	00e78323          	sb	a4,6(a5)
    80007220:	00813403          	ld	s0,8(sp)
    80007224:	01010113          	addi	sp,sp,16
    80007228:	00008067          	ret
    8000722c:	02061713          	slli	a4,a2,0x20
    80007230:	02075713          	srli	a4,a4,0x20
    80007234:	00e587b3          	add	a5,a1,a4
    80007238:	f0f574e3          	bgeu	a0,a5,80007140 <__memmove+0x1c>
    8000723c:	02069613          	slli	a2,a3,0x20
    80007240:	02065613          	srli	a2,a2,0x20
    80007244:	fff64613          	not	a2,a2
    80007248:	00e50733          	add	a4,a0,a4
    8000724c:	00c78633          	add	a2,a5,a2
    80007250:	fff7c683          	lbu	a3,-1(a5)
    80007254:	fff78793          	addi	a5,a5,-1
    80007258:	fff70713          	addi	a4,a4,-1
    8000725c:	00d70023          	sb	a3,0(a4)
    80007260:	fec798e3          	bne	a5,a2,80007250 <__memmove+0x12c>
    80007264:	00813403          	ld	s0,8(sp)
    80007268:	01010113          	addi	sp,sp,16
    8000726c:	00008067          	ret
    80007270:	02069713          	slli	a4,a3,0x20
    80007274:	02075713          	srli	a4,a4,0x20
    80007278:	00170713          	addi	a4,a4,1
    8000727c:	00e50733          	add	a4,a0,a4
    80007280:	00050793          	mv	a5,a0
    80007284:	0005c683          	lbu	a3,0(a1)
    80007288:	00178793          	addi	a5,a5,1
    8000728c:	00158593          	addi	a1,a1,1
    80007290:	fed78fa3          	sb	a3,-1(a5)
    80007294:	fee798e3          	bne	a5,a4,80007284 <__memmove+0x160>
    80007298:	f89ff06f          	j	80007220 <__memmove+0xfc>

000000008000729c <__mem_free>:
    8000729c:	ff010113          	addi	sp,sp,-16
    800072a0:	00813423          	sd	s0,8(sp)
    800072a4:	01010413          	addi	s0,sp,16
    800072a8:	00003597          	auipc	a1,0x3
    800072ac:	c8058593          	addi	a1,a1,-896 # 80009f28 <freep>
    800072b0:	0005b783          	ld	a5,0(a1)
    800072b4:	ff050693          	addi	a3,a0,-16
    800072b8:	0007b703          	ld	a4,0(a5)
    800072bc:	00d7fc63          	bgeu	a5,a3,800072d4 <__mem_free+0x38>
    800072c0:	00e6ee63          	bltu	a3,a4,800072dc <__mem_free+0x40>
    800072c4:	00e7fc63          	bgeu	a5,a4,800072dc <__mem_free+0x40>
    800072c8:	00070793          	mv	a5,a4
    800072cc:	0007b703          	ld	a4,0(a5)
    800072d0:	fed7e8e3          	bltu	a5,a3,800072c0 <__mem_free+0x24>
    800072d4:	fee7eae3          	bltu	a5,a4,800072c8 <__mem_free+0x2c>
    800072d8:	fee6f8e3          	bgeu	a3,a4,800072c8 <__mem_free+0x2c>
    800072dc:	ff852803          	lw	a6,-8(a0)
    800072e0:	02081613          	slli	a2,a6,0x20
    800072e4:	01c65613          	srli	a2,a2,0x1c
    800072e8:	00c68633          	add	a2,a3,a2
    800072ec:	02c70a63          	beq	a4,a2,80007320 <__mem_free+0x84>
    800072f0:	fee53823          	sd	a4,-16(a0)
    800072f4:	0087a503          	lw	a0,8(a5)
    800072f8:	02051613          	slli	a2,a0,0x20
    800072fc:	01c65613          	srli	a2,a2,0x1c
    80007300:	00c78633          	add	a2,a5,a2
    80007304:	04c68263          	beq	a3,a2,80007348 <__mem_free+0xac>
    80007308:	00813403          	ld	s0,8(sp)
    8000730c:	00d7b023          	sd	a3,0(a5)
    80007310:	00f5b023          	sd	a5,0(a1)
    80007314:	00000513          	li	a0,0
    80007318:	01010113          	addi	sp,sp,16
    8000731c:	00008067          	ret
    80007320:	00872603          	lw	a2,8(a4)
    80007324:	00073703          	ld	a4,0(a4)
    80007328:	0106083b          	addw	a6,a2,a6
    8000732c:	ff052c23          	sw	a6,-8(a0)
    80007330:	fee53823          	sd	a4,-16(a0)
    80007334:	0087a503          	lw	a0,8(a5)
    80007338:	02051613          	slli	a2,a0,0x20
    8000733c:	01c65613          	srli	a2,a2,0x1c
    80007340:	00c78633          	add	a2,a5,a2
    80007344:	fcc692e3          	bne	a3,a2,80007308 <__mem_free+0x6c>
    80007348:	00813403          	ld	s0,8(sp)
    8000734c:	0105053b          	addw	a0,a0,a6
    80007350:	00a7a423          	sw	a0,8(a5)
    80007354:	00e7b023          	sd	a4,0(a5)
    80007358:	00f5b023          	sd	a5,0(a1)
    8000735c:	00000513          	li	a0,0
    80007360:	01010113          	addi	sp,sp,16
    80007364:	00008067          	ret

0000000080007368 <__mem_alloc>:
    80007368:	fc010113          	addi	sp,sp,-64
    8000736c:	02813823          	sd	s0,48(sp)
    80007370:	02913423          	sd	s1,40(sp)
    80007374:	03213023          	sd	s2,32(sp)
    80007378:	01513423          	sd	s5,8(sp)
    8000737c:	02113c23          	sd	ra,56(sp)
    80007380:	01313c23          	sd	s3,24(sp)
    80007384:	01413823          	sd	s4,16(sp)
    80007388:	01613023          	sd	s6,0(sp)
    8000738c:	04010413          	addi	s0,sp,64
    80007390:	00003a97          	auipc	s5,0x3
    80007394:	b98a8a93          	addi	s5,s5,-1128 # 80009f28 <freep>
    80007398:	00f50913          	addi	s2,a0,15
    8000739c:	000ab683          	ld	a3,0(s5)
    800073a0:	00495913          	srli	s2,s2,0x4
    800073a4:	0019049b          	addiw	s1,s2,1
    800073a8:	00048913          	mv	s2,s1
    800073ac:	0c068c63          	beqz	a3,80007484 <__mem_alloc+0x11c>
    800073b0:	0006b503          	ld	a0,0(a3)
    800073b4:	00852703          	lw	a4,8(a0)
    800073b8:	10977063          	bgeu	a4,s1,800074b8 <__mem_alloc+0x150>
    800073bc:	000017b7          	lui	a5,0x1
    800073c0:	0009099b          	sext.w	s3,s2
    800073c4:	0af4e863          	bltu	s1,a5,80007474 <__mem_alloc+0x10c>
    800073c8:	02099a13          	slli	s4,s3,0x20
    800073cc:	01ca5a13          	srli	s4,s4,0x1c
    800073d0:	fff00b13          	li	s6,-1
    800073d4:	0100006f          	j	800073e4 <__mem_alloc+0x7c>
    800073d8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800073dc:	00852703          	lw	a4,8(a0)
    800073e0:	04977463          	bgeu	a4,s1,80007428 <__mem_alloc+0xc0>
    800073e4:	00050793          	mv	a5,a0
    800073e8:	fea698e3          	bne	a3,a0,800073d8 <__mem_alloc+0x70>
    800073ec:	000a0513          	mv	a0,s4
    800073f0:	00000097          	auipc	ra,0x0
    800073f4:	1f0080e7          	jalr	496(ra) # 800075e0 <kvmincrease>
    800073f8:	00050793          	mv	a5,a0
    800073fc:	01050513          	addi	a0,a0,16
    80007400:	07678e63          	beq	a5,s6,8000747c <__mem_alloc+0x114>
    80007404:	0137a423          	sw	s3,8(a5)
    80007408:	00000097          	auipc	ra,0x0
    8000740c:	e94080e7          	jalr	-364(ra) # 8000729c <__mem_free>
    80007410:	000ab783          	ld	a5,0(s5)
    80007414:	06078463          	beqz	a5,8000747c <__mem_alloc+0x114>
    80007418:	0007b503          	ld	a0,0(a5)
    8000741c:	00078693          	mv	a3,a5
    80007420:	00852703          	lw	a4,8(a0)
    80007424:	fc9760e3          	bltu	a4,s1,800073e4 <__mem_alloc+0x7c>
    80007428:	08e48263          	beq	s1,a4,800074ac <__mem_alloc+0x144>
    8000742c:	4127073b          	subw	a4,a4,s2
    80007430:	02071693          	slli	a3,a4,0x20
    80007434:	01c6d693          	srli	a3,a3,0x1c
    80007438:	00e52423          	sw	a4,8(a0)
    8000743c:	00d50533          	add	a0,a0,a3
    80007440:	01252423          	sw	s2,8(a0)
    80007444:	00fab023          	sd	a5,0(s5)
    80007448:	01050513          	addi	a0,a0,16
    8000744c:	03813083          	ld	ra,56(sp)
    80007450:	03013403          	ld	s0,48(sp)
    80007454:	02813483          	ld	s1,40(sp)
    80007458:	02013903          	ld	s2,32(sp)
    8000745c:	01813983          	ld	s3,24(sp)
    80007460:	01013a03          	ld	s4,16(sp)
    80007464:	00813a83          	ld	s5,8(sp)
    80007468:	00013b03          	ld	s6,0(sp)
    8000746c:	04010113          	addi	sp,sp,64
    80007470:	00008067          	ret
    80007474:	000019b7          	lui	s3,0x1
    80007478:	f51ff06f          	j	800073c8 <__mem_alloc+0x60>
    8000747c:	00000513          	li	a0,0
    80007480:	fcdff06f          	j	8000744c <__mem_alloc+0xe4>
    80007484:	00004797          	auipc	a5,0x4
    80007488:	d5c78793          	addi	a5,a5,-676 # 8000b1e0 <base>
    8000748c:	00078513          	mv	a0,a5
    80007490:	00fab023          	sd	a5,0(s5)
    80007494:	00f7b023          	sd	a5,0(a5)
    80007498:	00000713          	li	a4,0
    8000749c:	00004797          	auipc	a5,0x4
    800074a0:	d407a623          	sw	zero,-692(a5) # 8000b1e8 <base+0x8>
    800074a4:	00050693          	mv	a3,a0
    800074a8:	f11ff06f          	j	800073b8 <__mem_alloc+0x50>
    800074ac:	00053703          	ld	a4,0(a0)
    800074b0:	00e7b023          	sd	a4,0(a5)
    800074b4:	f91ff06f          	j	80007444 <__mem_alloc+0xdc>
    800074b8:	00068793          	mv	a5,a3
    800074bc:	f6dff06f          	j	80007428 <__mem_alloc+0xc0>

00000000800074c0 <__putc>:
    800074c0:	fe010113          	addi	sp,sp,-32
    800074c4:	00813823          	sd	s0,16(sp)
    800074c8:	00113c23          	sd	ra,24(sp)
    800074cc:	02010413          	addi	s0,sp,32
    800074d0:	00050793          	mv	a5,a0
    800074d4:	fef40593          	addi	a1,s0,-17
    800074d8:	00100613          	li	a2,1
    800074dc:	00000513          	li	a0,0
    800074e0:	fef407a3          	sb	a5,-17(s0)
    800074e4:	fffff097          	auipc	ra,0xfffff
    800074e8:	918080e7          	jalr	-1768(ra) # 80005dfc <console_write>
    800074ec:	01813083          	ld	ra,24(sp)
    800074f0:	01013403          	ld	s0,16(sp)
    800074f4:	02010113          	addi	sp,sp,32
    800074f8:	00008067          	ret

00000000800074fc <__getc>:
    800074fc:	fe010113          	addi	sp,sp,-32
    80007500:	00813823          	sd	s0,16(sp)
    80007504:	00113c23          	sd	ra,24(sp)
    80007508:	02010413          	addi	s0,sp,32
    8000750c:	fe840593          	addi	a1,s0,-24
    80007510:	00100613          	li	a2,1
    80007514:	00000513          	li	a0,0
    80007518:	fffff097          	auipc	ra,0xfffff
    8000751c:	8c4080e7          	jalr	-1852(ra) # 80005ddc <console_read>
    80007520:	fe844503          	lbu	a0,-24(s0)
    80007524:	01813083          	ld	ra,24(sp)
    80007528:	01013403          	ld	s0,16(sp)
    8000752c:	02010113          	addi	sp,sp,32
    80007530:	00008067          	ret

0000000080007534 <console_handler>:
    80007534:	fe010113          	addi	sp,sp,-32
    80007538:	00813823          	sd	s0,16(sp)
    8000753c:	00113c23          	sd	ra,24(sp)
    80007540:	00913423          	sd	s1,8(sp)
    80007544:	02010413          	addi	s0,sp,32
    80007548:	14202773          	csrr	a4,scause
    8000754c:	100027f3          	csrr	a5,sstatus
    80007550:	0027f793          	andi	a5,a5,2
    80007554:	06079e63          	bnez	a5,800075d0 <console_handler+0x9c>
    80007558:	00074c63          	bltz	a4,80007570 <console_handler+0x3c>
    8000755c:	01813083          	ld	ra,24(sp)
    80007560:	01013403          	ld	s0,16(sp)
    80007564:	00813483          	ld	s1,8(sp)
    80007568:	02010113          	addi	sp,sp,32
    8000756c:	00008067          	ret
    80007570:	0ff77713          	andi	a4,a4,255
    80007574:	00900793          	li	a5,9
    80007578:	fef712e3          	bne	a4,a5,8000755c <console_handler+0x28>
    8000757c:	ffffe097          	auipc	ra,0xffffe
    80007580:	4b8080e7          	jalr	1208(ra) # 80005a34 <plic_claim>
    80007584:	00a00793          	li	a5,10
    80007588:	00050493          	mv	s1,a0
    8000758c:	02f50c63          	beq	a0,a5,800075c4 <console_handler+0x90>
    80007590:	fc0506e3          	beqz	a0,8000755c <console_handler+0x28>
    80007594:	00050593          	mv	a1,a0
    80007598:	00001517          	auipc	a0,0x1
    8000759c:	f8850513          	addi	a0,a0,-120 # 80008520 <kvmincrease+0xf40>
    800075a0:	fffff097          	auipc	ra,0xfffff
    800075a4:	8d8080e7          	jalr	-1832(ra) # 80005e78 <__printf>
    800075a8:	01013403          	ld	s0,16(sp)
    800075ac:	01813083          	ld	ra,24(sp)
    800075b0:	00048513          	mv	a0,s1
    800075b4:	00813483          	ld	s1,8(sp)
    800075b8:	02010113          	addi	sp,sp,32
    800075bc:	ffffe317          	auipc	t1,0xffffe
    800075c0:	4b030067          	jr	1200(t1) # 80005a6c <plic_complete>
    800075c4:	fffff097          	auipc	ra,0xfffff
    800075c8:	1bc080e7          	jalr	444(ra) # 80006780 <uartintr>
    800075cc:	fddff06f          	j	800075a8 <console_handler+0x74>
    800075d0:	00001517          	auipc	a0,0x1
    800075d4:	05050513          	addi	a0,a0,80 # 80008620 <digits+0x78>
    800075d8:	fffff097          	auipc	ra,0xfffff
    800075dc:	844080e7          	jalr	-1980(ra) # 80005e1c <panic>

00000000800075e0 <kvmincrease>:
    800075e0:	fe010113          	addi	sp,sp,-32
    800075e4:	01213023          	sd	s2,0(sp)
    800075e8:	00001937          	lui	s2,0x1
    800075ec:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800075f0:	00813823          	sd	s0,16(sp)
    800075f4:	00113c23          	sd	ra,24(sp)
    800075f8:	00913423          	sd	s1,8(sp)
    800075fc:	02010413          	addi	s0,sp,32
    80007600:	01250933          	add	s2,a0,s2
    80007604:	00c95913          	srli	s2,s2,0xc
    80007608:	02090863          	beqz	s2,80007638 <kvmincrease+0x58>
    8000760c:	00000493          	li	s1,0
    80007610:	00148493          	addi	s1,s1,1
    80007614:	fffff097          	auipc	ra,0xfffff
    80007618:	4bc080e7          	jalr	1212(ra) # 80006ad0 <kalloc>
    8000761c:	fe991ae3          	bne	s2,s1,80007610 <kvmincrease+0x30>
    80007620:	01813083          	ld	ra,24(sp)
    80007624:	01013403          	ld	s0,16(sp)
    80007628:	00813483          	ld	s1,8(sp)
    8000762c:	00013903          	ld	s2,0(sp)
    80007630:	02010113          	addi	sp,sp,32
    80007634:	00008067          	ret
    80007638:	01813083          	ld	ra,24(sp)
    8000763c:	01013403          	ld	s0,16(sp)
    80007640:	00813483          	ld	s1,8(sp)
    80007644:	00013903          	ld	s2,0(sp)
    80007648:	00000513          	li	a0,0
    8000764c:	02010113          	addi	sp,sp,32
    80007650:	00008067          	ret
	...
