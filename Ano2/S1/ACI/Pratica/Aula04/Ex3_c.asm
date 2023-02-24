#Mapa de registros
#$t0 - p
#$t1 -  i
#$t2 - *p
#$t3 - soma 

.data
array: .word 7692,23,5,234
.eqv print_int10,1
.eqv SIZE,4
.text
.globl main

main:
	li $t3,0
	li $t1,0
	
	addu $t1,$t0,$t4
while:
	la $t0,array
	bge $t1,16,endw
	addu $t0,$t0,$t1
	lw $t2,0($t0)
	
	add $t3,$t3,$t2
	
	addiu $t1,$t1,4
	j while

endw:
	li $v0,print_int10
	move $a0,$t3
	syscall
	
	li $v0,10
	syscall
	jr $ra