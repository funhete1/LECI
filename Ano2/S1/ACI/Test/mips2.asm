#Mapa de registros
#i:		$t0
#v:		$t1 
#&(val[0]):	$t2

.data
arr: .word 8,4,15,-1987,327,-9,27,16
str1: .asciiz "Result is: "
.eqv SIZE,8
.eqv print_string,4
.eqv print_int10,1
.eqv print_char,11
.text
.globl main

main:
	li $t0,0
	la $t2,arr
	
	li $t6,SIZE
	div $t6,$t6,2
do:
	sll $t3,$t0,2
	add $t3,$t3,$t2
	
	lw $t1,0($t3)

	add $t4,$t0,$t6
	sll $t4,$t4,2
	add $t4,$t2,$t4
	
	lw $t5,0($t4)
	
	sw $t5,0($t3)
	sw $t1,0($t4)
	
	addi $t0,$t0,1
while:
	bge $t0,$t6,endw
	j do
	
endw:
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $t0,0
	
do2:

	sll $t3,$t0,2
	addu $t3,$t2,$t3
	
	lw $t3,0($t3)
	
	
	li $v0,print_int10
	move $a0,$t3
	syscall
	
	addi $t0,$t0,1
	
	li $v0,print_char
	li $a0,','
	syscall

while2:
	bge $t0,SIZE,endw2
	j do2
	
endw2:	li $v0,10
	syscall
	jr $ra
	
		
	