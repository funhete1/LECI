    .data
    .equ inkey,1
    .equ putChar,3
    .text
    .globl main

main:
do:
    li $v0,inkey
    syscall
    move $t0,$v0

if: beq  $t0,0,else
        li $v0,putChar
        move $a0,$t0
        syscall
        j endif
else:
    li $a0,'.'
    li $v0,putChar
    syscall
endif:
while: bne $t0,'\n',do

    li $v0,0
    jr $ra