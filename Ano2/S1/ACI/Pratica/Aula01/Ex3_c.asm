.data
.text
.globl main

main:	
		li $v0,5
		syscall
		move $t0,$v0
		mul $t0,$t0,2
		addi $t0,$t0,-8
		move $a0,$t0
		li   $v0,34
		syscall
		li $v0,10
		syscall
		
