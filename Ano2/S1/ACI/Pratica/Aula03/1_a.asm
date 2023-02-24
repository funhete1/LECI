#Mapa de registros
#$t0 - i
#$t1 - soma
#$t2 - value

.data
str1: .asciiz "Introduza um numero: "
str2: .asciiz "Valor ignorado\n"
str3: .asciiz "A soma dos positivos e: "
.eqv read_int,5
.text
.globl main

main:
		li $t0, 0
		li $t1, 0
		li $t2, 0

for:
		bge $t0,5,endfor
		la $a0,str1
		li $v0,4
		syscall

		li $v0,read_int
		syscall
		move $t2,$v0
		blez $t2,else
if:
		add $t1,$t1,$t2
		j endif
else:
		la $a0,str2
		li $v0,4
		syscall
endif:
		addi $t0,$t0,1
		j for

endfor:
		la $a0,str3
		li $v0,4
		syscall 

		move $a0,$t1
		li $v0,1
		syscall 

		li $v0,10
		syscall
		jr $ra
		