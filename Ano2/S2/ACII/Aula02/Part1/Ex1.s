        .data
        .equ resetCoreTimer,12
        .equ readCoreTimer,11
        .equ putChar,3
        .equ printInt,6
        .text
        .globl main

# the detpic has a CPU who works under a frequency of 40 MHz and inside, we have an counter
#known as core timer, who is updated every 2 clock cycles, and is incremented in a frequency 
#of 20 MHz, so the time needed to increment from 0 till 200000 is 1 s.

main:
        li $t0,0 #counter = 0
while1:  
        li $v0,resetCoreTimer
        syscall
while2:
        li $v0,readCoreTimer
        bge $v0,200000,endw2
        li $v0,printInt
        move $a0,$t0
        li $a1, 0x0004000A
        syscall
        addi $t1,$t1,1
        li $v0,putChar
        la $a0,'\r'
        syscall
endw2:
        j while1
        li $v0,0
        jr $ra