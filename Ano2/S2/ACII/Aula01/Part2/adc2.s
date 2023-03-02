    .data
    .equ SIZE,20
    .equ readStr,9
    .equ printStr,8
    .equ printInt, 6
    .equ printInt10,7
s1:   .asciiz "Introduza 2 strings: "
s2:   .asciiz "Resultados:\n"
str1:   .space 21
str2:   .space 21
str3:   .space 41
    .text
    .globl main

main:
    addiu $sp,$sp,-4
    sw $ra,0($sp)
    
    li $v0,printStr
    la $a0,s1
    syscall


    li $v0,3
    la	$a0,'\n'
    syscall
    						
    li $v0,readStr
    la $a0,str1
    li $a1,SIZE
    syscall

    li $v0,3
    la	$a0,'\n'
    syscall

    li $v0,readStr
    la $a0,str2
    li $a1,SIZE
    syscall 

    li $v0,3
    la	$a0,'\n'
    syscall

    li $v0,printStr
    la $a0,s2
    syscall

    li $v0,printInt
    la $a0,str1
    jal strlen
    move $a0,$v0
    li $a1,10
    syscall

    li $v0,printInt
    la $a0,str2
    jal strlen
    move $a0,$v0
    li $a1,10
    syscall

    la $a0,str3
    la $a1,str1
    jal strcpy

    la $a0,str3
    la $a1,str2
    jal strcat

    move $a0,$v0

    li $v0,printStr
    syscall
    
    li $v0,printInt10
    la $a0,str1
    la $a1,str2
    jal strcmp
    move $a0,$v0
    syscall

    li $v0,0
    lw $ra,0($sp)
    addiu $sp,$sp,-4
    jr $ra

##strlen method
#$a0 - char *str
strlen:
    move $t1,$a0
    li $t0,0  #len = 0
strlenf:    
    lw $t2,0($t1)
    beq $t2,0,estrlenf
    addi $t0,$t0,1
    addiu $t1,$t1,1

estrlenf:
    move $v0,$t0
    jr $ra


##strcpy method
#$a0 - dst 
#$a1 - src 
strcpy:
    move $v0,$a0    #char *p = dst;
forcpy:    
    sb $t1,0($a1)
    lb $t1,0($a0)
    beq $t1,0,eforcpy
    addiu $a0,$a0,1
    addiu $a1,$a1,1
    j forcpy
eforcpy:
    jr $ra

##strcat method 
#$a0 - *dst
#$a1 - *src
strcat:
    addiu $sp,$sp,-8
    sw $ra,0($sp)
    sw $s0,4($sp)
    move $s0,$a0
catfor:
    lb $t0,0($a0)
    beq $t0,0,ecatfor
    addiu $a0,$a0,1
    j catfor
ecatfor:
    jal strcpy
    move $v0,$s0
    lw $s0,4($sp)
    lw $ra,0($sp)
    addiu $sp,$sp,8
    jr $ra

# Returned value is:      
#   < 0  string "s1" is "less than" string "s2"      
#   = 0  string "s1" is equal to string "s2"      
#   > 0  string "s1" is "greater than" string "s2"
strcmp:                                 # int strcmp(char *s1, char *s2) {
cmpfor:   lb      $t0, 0($a0)             #       $t0 = *s1      
        lb      $t1, 0($a1)             #       $t1 = *s2
        bne     $t0, $t1, ecmpfor       #       for( ;(*s1 == *s2)  &&
        beq     $t0, $0, ecmpfor        #       (*s1 != '\0'); s1++, s2++) {
        addiu   $a0, $a0, 1             #               s1++;
        addiu   $a1, $a1, 1             #               s2++;
        j       cmpfor                  #       }
ecmpfor:                                #
        sub     $v0, $t0, $t1           #       return (*s1 - *s2);
        jr      $ra    