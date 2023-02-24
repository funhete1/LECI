#Mapa de registros
#$t0 - i
#$t1 - lista
#$t2 - houveTroca
#$t3 - lista[i]
#t4 - lista[i+1]
#$t5 - aux
		
	.data
lista:	.space 40
str1:	.asciiz "Introduza 10 numeros: \n"
str2:	.asciiz "Array em ordem crescente:\n"
str3:	.asciiz ", "
	.eqv SIZE_1,9
	.eqv print_int,1
	.eqv print,4
	.eqv read_int,5
	.eqv SIZE,10
	.eqv TRUE,1
	.eqv FALSE,0
	.text
	.globl main
	
main:
	la $t1,lista
	li $t0,0
	
	la $a0,str1
	li $v0,print
	syscall
	for1:
		bgeu $t0,SIZE,endfor1
	
		li $v0,read_int
		syscall
	
		sll $t3,$t0,2
		add $t3,$t1,$t3
		addi $t0,$t0,1
		
		sw $v0,0($t3)
	
		j for1

	endfor1:
	
	do:
		li $t2,FALSE
		li $t0,0
		
		for2:
			bgeu $t0,SIZE_1,endfor2
	
			sll $t3,$t0,2
			add $t3,$t1,$t3
			addi $t0,$t0,1     
			addi $t4,$t3,4
			
			lw $t5,0($t3)
			lw $t6,0($t4)
			if:	
				bltu $t5,$t6,endif
	
				sw $t6,0($t3)
				sw $t5,0($t4)
				
				li $t2,TRUE
	
			endif:
			j for2
		endfor2:	
	while:
		bnez $t2,do
		
		li $t0,0
		
		li $v0,print
		la $a0,str2
		syscall
	for3:
		bge $t0,SIZE,endfor3
		
		sll $t3,$t0,2
		add $t3,$t1,$t3
		addi $t0,$t0,1
		
		lw $a0,0($t3)
		
		li $v0,print_int
		syscall
		
		li $v0,print
		la $a0,str3
		syscall
		
		j for3
	endfor3:
		li $v0,10
		syscall
		jr $ra			