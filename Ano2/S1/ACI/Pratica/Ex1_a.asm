.data
.eqv read_int,5
.eqv print_string,4
.eqv SIZE,4
array: .space 20
str1: .asciiz "Introduza um numero: "
.text
.globl main
	

main:
	la $t1,array
	li $t0,0
for:
	bgt $t0,SIZE,endfor
	
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_int
	syscall 
	
	sw $v0,0($t1)
	
	addi $t0,$t0,1
	addi $t1,$t1,1
	sll $t1,$t0,2
	
	j for
	
endfor:
	li $v0,10
	syscall
	jr $ra
	
	
	