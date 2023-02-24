.data
str1:	.asciiz "So para chatear"
str2:	.asciiz "AC1 - P"
	.eqv print_string,4
.text
.globl main

main:	la $a0,str2

	li $v0,print_string
	syscall
	li $v0,10
	syscall