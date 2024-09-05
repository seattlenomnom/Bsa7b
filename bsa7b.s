/* use syscall 3 to read from keyboard              */

    .global _start
_start:
_read:

    MOV R7, #3                      @ read syscall number
    MOV R0, #0                      @ stdin is the keyboard
    MOV R2, #5                      @ read first five chars
    LDR R1,=string                  @ string placed at string:
    SWI 0

_write:

    MOV R7, #4                      @ write syscall number
    MOV R0, #1                      @ stdout is the screen
    MOV R2, #21                     @ string is 21 chars long
    LDR R1,=string                  @ string is located at string:
    SWI 0

_exit:

    MOV R7, #1                      @ exit syscall
    SWI 0

.data

string:
.ascii "Hello, World! String\n"

