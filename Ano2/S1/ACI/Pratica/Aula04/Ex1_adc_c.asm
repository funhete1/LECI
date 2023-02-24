#Mapa de registros
#$t1 - str
#$t2 - *p

.data
.eqv SIZE,20
str: .space 20
str1: .asciiz "Introduza uma string: "
.eqv print_string,4
.eqv read_string,8
.text
.globl main

main:
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_string
	la $a0,str
	li $a1,SIZE
	syscall
	
	la $t1,str
while:
	lb $t2,0($t1)
	
	beq $t2,'\0',endw
	
if1:	blt $t2,'a',endif1
	bgt $t2,'z',endif1
	sub $t2,$t2,32
	j endif2

endif1:
if2:	blt $t2,'A',endif2
	bgt $t2,'Z',endif2
	addi $t2,$t2,32
endif2:
	
	sb $t2,0($t1)
	
	addiu $t1,$t1,1
	j while 

endw:
	li $v0,print_string
	la $a0,str
	syscall
	
	li $v0,10
	syscall
	jr $ra
	

	
