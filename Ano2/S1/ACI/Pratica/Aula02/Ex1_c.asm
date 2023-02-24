.data
.text
.globl main

main:
		li $t0,0xFFFF
		xori $t1,$t0,0xE543
		li $v0,10
		syscall
		jr $ra
