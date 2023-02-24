.data
str1:	.asciiz "Introduza 2 numeros "
str2:	.asciiz "A soma dos dois numeros: "
	.eqv print_string,4
	.eqv read_int,5
	.eqv print_int10,1
.text
.globl main 

main:
	la $a0,str1
	li $v0,print_string
	syscall
	li $v0,read_int
	syscall
	move $t0,$v0
	li $v0,read_int
	syscall
	add $t0,$t0,$v0
	la $a0,str2
	li $v0,print_string
	syscall
	move $a0,$t0
	li $v0,print_int10
	syscall
	li $v0,10
	syscall
		
	