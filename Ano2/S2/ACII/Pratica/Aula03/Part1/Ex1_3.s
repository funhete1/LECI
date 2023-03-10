    .data
    .equ SFR_BASE_HI, 0xBF88
    .equ TRISE, 0x6100
    .equ TRISD, 0x60C0
    .equ TRISB, 0x6050
    .equ PORTE, 0x6110
    .equ LATE, 0x6120
    .equ PORTB, 0x6050
    .equ PORTD, 0x60D0
    .text
    .globl main

main:   
    lui $t1,SFR_BASE_HI
    lw $t2,TRISE($t1)
    andi $t2,$t2,0xFFFE #set the bits 0-3 to 0(output)
    sw $t2,TRISE($t1)

    lw $t2,TRISD($t1)
    ori $t2,$t2,0x0100
    sw $t2,TRISD($t1)

while:
    lw $t2,PORTD($t1)  #PORT read a value from a port confg as input
    andi $t2,$t2,0x0100

    lw $t3,LATE($t1)
    andi $t3,$t3,0xFFFE
    srl $t2,$t2,8
    or $t3,$t3,$t2
    sw $t3,LATE($t1)
    j while
    jr $ra