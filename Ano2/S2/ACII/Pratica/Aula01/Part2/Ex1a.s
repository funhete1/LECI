    .data
    .text 
    .globl main

main:
do:
        li $v0,2
        syscall
        move $a0,$v0  # c= getChar()
        li $v0,3
        addi $a0,$a0,1
        syscall
        addiu $a0,$a0,-1 #if u dont go back to the real value inpued
                         #once u press enter to end the program will no end
while:  bne $a0,'\n',do
endw:
        li $v0,0
        jr $ra