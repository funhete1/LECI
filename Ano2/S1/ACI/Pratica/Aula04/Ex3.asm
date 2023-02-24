#Mapa de registros
#$t0 - p
#$t1 - pultimo 
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
	li $t4, SIZE
	sub $t4,$t4,1 
	sll $t4,$t4,2
	
	la $t0,array
	addu $t1,$t0,$t4
while:
	bgtu $t0,$t1,endw
	
	lw $t2,0($t0)
	
	add $t3,$t3,$t2
	
	addiu $t0,$t0,4
	j while

endw:
	li $v0,print_int10
	move $a0,$t3
	syscall
	
	li $v0,10
	syscall
	jr $ra