	.data
str:	.asciiz "Arquitetura de Computadores I"
	.text
	.globl main

main:
	addiu $sp,$sp,-8
	sw $ra,0($sp)
	sw $s1,4($sp)
	la $a0,str
	jal strlen
	li $v0,1
	syscall
	lw $ra,0($sp)
	lw $s1,4($sp)
	addiu $sp,$sp,8
	li $v0,0
	jr $ra
	
###strlen function###
#$a0 - *s
strlen:
	li $t0,0
	move $t1,$a0
strlenw:
	lb $t2,0($t1)
	beq $t2,'\0',endstrlenw
	addi $t0,$t0,1
	addiu $t1,$t1,1
	j strlenw
endstrlenw:
	move $a0,$t0			
	jr $ra
	
	
	
	