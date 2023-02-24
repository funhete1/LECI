#Mapa de registros
#$t0 - i
#$t1 - res
#$t2 - mdor
#$t3 - mdo

.data
.eqv read_int,5
.eqv print_string,4
.eqv print_int10,1
str1: .asciiz "Introduza Dois Numeros:\n"
str2: .asciiz "Resultado: "
.text
.globl main


main:	
	li $t0,0
	li $t1,0
	
	li $v0,print_string
	la $a0,str1
	syscall
	
	li $v0,read_int
	syscall
	
	move $t2,$v0   #usado para limitar apenas o 4 bits inicias 
	
	li $v0,read_int
	syscall
	move $t3,$v0  #usado para limitar apenas o 4 bits inicias
	
while:
	bge  $t0,16,second
	j if
second:	beqz $t2,endw
	
	
if:	
	andi $t4,$t2,0x00000001
	beqz $t4,endif
	
	add $t1,$t1,$t3
	
endif:
	sll $t3,$t3,1
	srl $t2,$t2,1
	addi $t0,$t0,1
	j while

endw:
	li $v0,print_string
	la $a0,str2
	syscall 
	
	li $v0,print_int10
	move $a0,$t1
	syscall
	
	li $v0,10
	syscall
	jr $ra