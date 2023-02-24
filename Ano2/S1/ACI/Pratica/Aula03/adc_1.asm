#mapa de registros
#$t0 - gray
#$t1 - bin 
#$t2 - mask

.data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "\nValor em código Gray: "
str3: .asciiz "\nValor em binario: "
.eqv print_string,4
.eqv read_int, 5
.eqv print_int16, 34
.text
.globl main

main:
	li $t0,0
	li $t1,0
	li $t2,0
	
	la $a0, str1		#print_string(...)
	li $v0,print_string
	syscall 
	
	li $v0,read_int    	#gray = read_int()
	syscall
	move $t0,$a0
	
	srl $t2,$t0,1 		#mask = gray >> 1
	move $t1,$t0 		#bin = gray

while:				
	beqz $t2,endw		#while(mask != 0)
	xor $t1,$t1,$t2
	srl $t2,$t2,1	
	
endw:

	li $v0,print_string
	la $a0,str2
	syscall
	
	li $v0,print_int16
	move $a0,$t0
	syscall
	
	li $v0,print_string
	la $a0,str3
	syscall
	
	li $v0,print_int16
	move $a0,$t1
	syscall
	
	li $v0,10
	syscall 
	jr $ra

	
	