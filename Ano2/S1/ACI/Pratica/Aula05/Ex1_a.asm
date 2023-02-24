#Mapa de registros
#i:	  $t0
#lista:   $t1
#lista+i: $t2
	
		
	.data 
str1: 	.asciiz "\nIntroduza um numero: "
	.align 2	
arr: 	.space 20
	.eqv SIZE,5
	.eqv read_int,5
	.eqv print_string,4
	.text
	.globl main
	
main:
	li  $t0,0
	la  $t1,arr
	
for:
	bge $t0,SIZE,endfor
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_int
	syscall
	
	sll $t2,$t0,2
	addu $t2,$t2,$t1
	
	sw $v0,4($t2)
	
	addi $t0,$t0,1
	j for 
	
endfor:
	li $v0,10
	syscall 
	jr $ra
		
