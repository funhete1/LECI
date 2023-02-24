.data
str: .asciiz "ITED - orievA ed edadisrevinU"
.align 2
str1: .space 29
.text
.globl main


main:
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0,str1
	la $a1,str
	
	jal strcpy
	
	move $a0,$v0
	
	li $v0,4
	syscall 
	
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra




#####string copy method#####
#$a0 - dst
#$a1 - src
strcpy:
	li $t0,0 #i=
	
strcpy_do:
	addu $t1,$t0,$a1
	lb $t2,0($t1)
	addu $t1,$t0,$a0
	sb $t2,0($t1)
	
	beq $t2,'\0',end_strcpy_do
	addi $t0,$t0,1	
	j strcpy_do
	
end_strcpy_do:
	move $v0,$a0
	jr $ra
	