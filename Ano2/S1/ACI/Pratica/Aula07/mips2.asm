.data
str:	.asciiz "ITED - orievA ed edadisrevinU"
.text
.globl main


main:
	addiu $sp,$sp,-4
	sw $ra,0($sp)
	
	la $a0, str
	
	jal strrev
	move $a0,$v0
	
	li $v0,4 
	syscall
	li $v0,0
	
	lw $ra,0($sp)
	addiu $sp,$sp,4
	jr $ra
	
#####Strrev#####
#$a0 - *str
strrev:
	addiu $sp,$sp,-16
	sw $ra,0($sp)
	sw $s0,4($sp)
	sw $s1,8($sp)
	sw $s2,12($sp)
	
	
	move $s0,$a0 #incio da String para retornar ao final
	move $s1,$a0 #p1
	move $s2,$a0 #p2
	
strrev_w:
	lb $t1,0($s2)
	beq $t1,'\0',end_strrev_w
	addiu $s2,$s2,1
	j strrev_w
	
end_strrev_w:
	addiu $s2,$s2,-1

strrevw1:
	bge $s1,$s2,end_strrev_w1
	
	move $a0,$s1
	move $a1,$s2
	
	jal exchange
	
	addiu $s1,$s1,1
	addiu $s2,$s2,-1
	
	j strrevw1
	
end_strrev_w1:
	
	move $v0,$s0
	
	
	lw $ra,0($sp)
	lw $s0,4($sp)
	lw $s1,8($sp)
	lw $s2,12($sp)
	addiu $sp,$sp,16
	jr $ra 
	

	
	
	
######Exchange######
#$a0 - char *c1
#$a1 - char *c2
exchange:
	lb $t0,0($a0)
	lb $t1,0($a1)
	
	sb $t1,0($a0)
	sb $t0,0($a1)
	jr $ra
	 
	
	
	
