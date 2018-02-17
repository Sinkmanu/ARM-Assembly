### ARM Assembly Cheatsheet

Simple cheatsheet for ARM assembly programming.



#### Registers

| Register(s) | Description                              |
| ----------- | ---------------------------------------- |
| r0-r12      | General purpose                          |
| r13         | Stack pointer                            |
| r14         | Link register. Store the address before to branch to a function to continue after function return. |
| r15         | Program counter. Store the address of the next instruction to be executed. |



#### Instructions

| Instruction | Usage           | Description                             |
| ----------- | --------------- | --------------------------------------- |
| push        | push {fp, lr}   | Push registers in the stack             |
| pop         | pop {r7, pc}    | Pop registers from the stack            |
| mov         | mov r0, #1      | Move value to register                  |
| str         | str r0, [r1]    | Store to memory                         |
| ldr         | ldr r1, address | Load from memory                        |
| bne         | bne 0x104dc     | Branch if not equal (jump if not equal) |
| bl          | bl 0x104dc      | Branch with link (call function)        |
| b           | b 0x104dc       | Branch (Jump)                           |
| bx	      | bx r3           | Branch and exchange instruction set     |
| beq         | beq 0x104dc     | Branch if equal (jump if equal)         |
| swi         | swi 0           | Software Interruption                   |
| add         | add fp, sp, 4   | Add                                     |
| sub         | sub fp, sp, 8   | Subtract                                |
| cmp         | cmp r3, 0       | Compare                                 |



#### Syscalls

| Syscall | r7   | r0                   | r1               | r2               | r3   |
| ------- | ---- | -------------------- | ---------------- | ---------------- | ---- |
| exit    | 0x1  | int error_code       |                  |                  |      |
| write   | 0x4  | unsigned int fd      | char *buf        |                  |      |
| execve  | 0xb  | const char *filename | const char *argv | const char *envp |      |
| dup     | 0x29 | unsigned int fildes  |                  |                  |      |
| setuid  | 0x17 | uid_t uid            |                  |                  |      |
| open    | 0x5  | const char *filename | int flags        |                  |      |
| close   | 0x6  | unsigned int fd      |                  |                  |      |
| kill    | 0x25 | pid_t pid            |                  |                  |      |



#### Useful links

Full list of syscalls: https://w3challs.com/syscalls/?arch=arm_strong

ARM Assembly with all instructions: http://infocenter.arm.com/help/index.jsp?topic=/com.arm.doc.kui0100a/armasm_cegihjgh.htm
