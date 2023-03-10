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
    addiu $sp,$sp,-12
    sw $ra,0($sp)
    sw $s0,4($sp)
    sw $s1,8($sp)

    lui $s0,SFR_BASE_HI

    lw $t2,TRISE($s0)
    andi $t2,$t2,0xFFF0
    sw $t2,TRISE($s0)


    li $s1,0  #counter = 0

while:
    
    lw $t2,LATE($s0)
    andi $t2,$t2,0xFFF0
    or $t2,$t2,$s1
    sw $t2,LATE($s0)

    li $a0,250  #1 hz = 1000 ms
    jal delay

    addi $s1,$s1,1
    j while

    lw $ra,0($sp)
    lw $s0,4($sp)
    lw $s1,8($sp)
    addiu $sp,$sp,12
    jr $ra

###delay method 
#$a0 - mss

delay:                                  # void delay(int ms) {
        move    $t0, $a0                #       $t0 = ms;
        
for:    ble     $t0, 0, endfor          #       for(; ms > 0; ms--) {
        li      $v0, 12   #               
        syscall                         #               resetCoreTimer();
read:   li      $v0, 11    #
        syscall                         #               readCoreTimer();
        blt     $v0, 20000, read        #               while(readCoreTimer() < K);
        addi    $t0, $t0, -1            #               ms--;
        j       for                     #       }
endfor:                                 #       
        jr      $ra     
