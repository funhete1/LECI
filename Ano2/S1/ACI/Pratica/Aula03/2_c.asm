#Mapa de registros
#t0 - i
#t1 - value
#t2 - bit

.data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "\nO valor em binario e: "
.eqv read_int, 5
.eqv print, 4
.text
.globl main

main:
	li $t0,0
	li $t1,0
	li $t2,0

	la $a0,str1
	li $v0,print
	syscall
	
	li $v0,read_int
	syscall
	move $t1,$v0

	la $a0, str2
	li $v0, print
	syscall

for:
	bge $t0, 32, endfor
	andi $t2,$t1,0x80000000

if1: 
	rem $t3,$t0,4
	bnez $t3,endif1
	li $a0,' '
	li $v0,11
	syscall

endif1:
if2: 
	beqz $t2,else
	li $a0,'1'
	li $v0,11
	syscall
	j endif2
else:
	li $a0,'0'
	li $v0,11
	syscall
endif2:
	addi $t0,$t0,1
	sll $t1,$t1,1
	j for

endfor:
	li $v0,10
	syscall
	jr $ra
