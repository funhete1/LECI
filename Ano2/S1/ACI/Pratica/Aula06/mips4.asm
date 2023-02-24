#Mapa de registros
#$t0 - argc
#$t1 - argv
#$t2 - i
	.data
str1: 	.asciiz "Nr. de parametros: "
str2:	.asciiz "\nP"
str3:	.asciiz ": "
	.text
	.globl main
	
main:	
	move $t0,$a0
	move $t1,$a1
	
	la $a0,str1
	li $v0,4
	syscall
	
	li $v0,1
	or $a0,$0,$t0
	syscall
	
	li $t2,0
for:
	bge $t2,$t0,endfor
	
	la $a0,str2
	li $v0,4
	syscall
	
	li $v0,1
	or $a0,$t2,$0
	syscall
	
	la $a0,str3 
	li $v0,4
	syscall
	
	sll $a0,$t2,2
	addu $a0,$t1,$a0
	lw $a0,0($a0)
	li $v0,4
	syscall
	
	addi $t2,$t2,1
	j for
endfor:
	li $v0,10
	syscall
	jr $ra
	
	
	
	
	