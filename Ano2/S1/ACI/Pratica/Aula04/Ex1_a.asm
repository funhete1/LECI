#mapa de registros
#$t0 - num 
#$t1 - i
#$t2 - str
#$t3 - str + i
#$t4 - str[i]#

.data
str1: .space 80
.eqv SIZE,20
.eqv read_string,8
.eqv print_int10,1
.text
.globl main


main:
	la $a0,str1
	
	li $a1,SIZE
	li $v0,read_string
	syscall 
	
	li $t0,0
	li $t1,0
	
while:
	la $t2,str1
	addu $t3,$t2,$t1
	lb   $t4,0($t3)
	beq  $t4,'\0', endw
if:
	blt $t4,'0',endif
	bgt $t4,'9',endif
	addi $t0,$t0,1
endif:
	addi $t1,$t1,1
	j while
endw: 
	li $v0,print_int10
	move $a0, $t0
	syscall
	
	li $v0,10
	syscall
	jr $ra
	
	
	