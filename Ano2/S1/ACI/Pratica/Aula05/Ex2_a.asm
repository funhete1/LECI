#Mapa de registros
#p:  $t0
#lista+Size :$t2
	
	.data
arr:	.word	8,-4,3,5,124,-15,57,9,27,15
	.eqv SIZE,10
str1:	.asciiz "\nConteudo do array:\n"
str2: 	.asciiz "; "
	.eqv print_string,4
	.eqv print_int10,1
	.text
	.globl main

main:
	la $t0,arr
	li $t2,SIZE
	sll $t2,$t2,2
	addu $t2,$t0,$t2
	
	li $v0,print_string
	la $a0,str1
	syscall 
	
for:
	bgeu $t0,$t2,endf
	
	lw $a0,0($t0)
	
	li $v0,print_int10
	syscall 
	
	li $v0,print_string
	la $a0,str2
	syscall 
	
	addiu $t0,$t0,4
	
	j for
	
endf:
	li $v0,10
	syscall
	
	jr $ra
	
