#Mapa de registros
#$t0: i
#$t1: j
	.eqv SIZE,3
	.data 
array: 	.word str1,str2,str3
str1: 	.asciiz "Array"
str2:	.asciiz "de"
str3: 	.asciiz "ponteiros"
	.text
	.globl main
	
main:
	la $t2,array
	li $t0,0
	

for1:	bge $t0,SIZE,endfor
	
	sll $t3,$t0,2
	addu $t3,$t2,$t3
	lw $t3,0($t3)

	li $t1,0
while:
	addu $t4,$t3,$t1
	lb $a0,0($t4)
	beq $a0,'\0',endw
	
	li $v0,11
	syscall
	
	addiu $t1,$t1,1
	j while

endw:
	addiu $t0,$t0,1
	li $a0,'-'
	li $v0,11
	syscall
	
	j for1
endfor:
	jr $ra
	