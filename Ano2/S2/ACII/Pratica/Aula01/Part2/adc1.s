#mapa de registros
#cnt - $s0
#state- $s1
    .data
    .equ UP,1
    .equ DOWN,0
    .equ putChar,3
    .equ printInt,6
    .equ inkey,1
    .text
    .globl main

main:
    addiu $sp,$sp,-12
    sw $ra,0($sp)
    sw $s0,4($sp)
    sw $s1,8($sp)

    li $s1,0
    li $s0,0

do:
    li $v0,putChar
    li $a0,'\r'
    syscall

    li $v0,printInt
    move $a0,$s0
    li $a1,0x0003000A
    syscall

    li $v0,putChar
    li $a0,'\t'
    syscall

    li $v0,printInt
    move $a0,$s0
    li $a1,0x00080002

    li $a0,5
    jal wait

    li $v0,inkey
    syscall
    move $t0,$v0

if1:    bne $t0,'+',if2
        li $s1,UP
        j if3
if2:    bne $t0,'-',if3
        li $s1,DOWN
    
if3:    bne $s1,UP,else
        addi $s0,$s0,1
        andi $s0,$s0,0xFF
        j endif
else:
        addi $s0,$s0,-1
        andi $s0,$s0,0xFF

endif:
        bne $t0,'r',while
        li $s0,0
while: 
        bne $t0,'q',do      #given an erro
        li $v0,0
        sw $s1,8($sp)
        sw $s0,4($sp)
        sw $ra,0($sp)
        addiu $sp,$sp,12
        jr $ra

#wait method 
#$a0 - int ts
wait:
    li $t1,0
    mul $t2,$a0,515000
for:
    bge $t1,$t2,endfor
    addi $t1,$t1,1
    j for
endfor:
    jr $ra
    
