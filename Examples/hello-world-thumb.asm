.global _start

_start:
	.code 32
	add r3, pc, #1
	bx r3
	.code 16
	mov r7, #4		@ write syscall
	mov r2, #12		@ Length
	ldr r1, =string		@ *buf
	swi 0			@ syscall
	mov r7, #1		@ Exit
	mov r0, #1		@ 9
	swi 0

string:
	.ascii "Hello World\n"
