        .data
str1:   .asciiz "\nIntroduza  um inteiro (sinal e modulo) : "
str2:   .asciiz "\nValor em base 10 (signed) : "
str3:   .asciiz "\nValor em base 2: "
str4:   .asciiz "\nValor em base 16: "
str5:   .asciiz "\nValor em base 10 (unsigned) : "  
str6:   .asciiz "\nValor em base 10 (unsigned), formatado: "
        .equ printInt10,7
        .equ printInt,6
        .equ printStr,8
        .equ readInt10,5
        .text
        .globl main

main:
    
while:  

        li $v0,printStr
        la $a0,str1
        syscall

        li $v0,readInt10
        syscall 
        move $t1,$v0

        li $v0,printStr
        la $a0,str2
        syscall

        li $v0,printInt10
        move $a0,$t1
        syscall

        li $v0,printStr
        la $a0,str3
        syscall

        li $v0,printInt
        move $a0,$t1
        li $a1,2
        syscall

        li $v0,printStr
        la $a0,str4
        syscall

        li $v0,printInt
        move $a0,$t1
        li $a1,16
        syscall

        li $v0,printStr
        la $a0, str5
        syscall

        li $v0,printInt
        move $a0,$t1
        li $a1,10
        syscall

        li $v0,printStr
        la $a0,str6
        syscall

        li $v0,printInt
        move $a0,$t1
        li $a1,0x0005000A
        syscall

        j while
        li $v0,0
        jr $ra