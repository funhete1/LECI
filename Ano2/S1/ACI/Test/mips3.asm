#Mapa de registros
#p1:	$t1
#p2:	$t2
#n_odd:	 $t3
#n_even: $t4
#*p1: $t5
#*p2: $t6
#a+N:  $t7
#b:  $t0
.data
A: .space 140	#since we will store 35 integers, every integer has a 4 bytes size so 35*4=140
.align 2	#the frist address reserved for the array b will be multiple of 2
B: .space 140
.eqv N,35
.eqv read_int,5
.eqv print_int10,1
.text 
.globl main

main:	
	li $t3,0
	li $t4,0
			
	la $t7,A
	or $t1,$t7,$0
	li $t0,N
	sll $t0,$t0,2
	addu $t7,$t7,$t0
	
	li $t0,0
	
	
for1:	
	bgeu $t1,$t7,endf1
	
	li $v0,read_int
	syscall
	
	
	sw $v0,0($t1)
	addi $t1,$t1,4
	
	j for1
	
endf1:
	
	la $t1,A #p1=a
	la $t2,B      #p2=b
	
for2:
	bgeu $t1,$t7,endf2
	
	lw $t5,0($t1)
	addiu $t1,$t1,4
	div $t0,$t5,2
	mfhi $t0
	
	
if:	beqz $t0,else
	sw $t5,0($t2)
	addiu $t2,$t2,4
	addi $t3,$t3,1
	j for2

else:
	addi $t4,$t4,1
	j for2
endf2:

	la $t2,B
	sll $t3,$t3,2
	addu $t0,$t2,$t3

for3:
	bge $t2,$t0,endfor3
	
	lw, $t6,0($t2)
	addiu $t2,$t2,4
	
	li $v0,print_int10
	move $a0,$t6
	syscall
	j for3
	
endfor3:
	jr  $ra
	

	

	
	
	
