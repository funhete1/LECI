#Mapa de registros
#$t0:i
	.eqv SIZE,3
	.data 
array: 	.word str1,str2,str3
str1: 	.asciiz "Array"
str2:	.asciiz "de"
str3: 	.asciiz "ponteiros"
	.text
	.globl main
	
main:
	la $t1,array 
	li $t0,SIZE
	sll $t0,$t0,2
	addu $t2,$t0,$t1
	
for:	bge $t1,$t2,endfor
	lw $a0,0($t1)
	li $v0,4
	syscall
	
	li $a0,'\n'
	li $v0,11
	syscall
	
	addiu $t1,$t1,4
	j for
	
endfor:
	jr $ra