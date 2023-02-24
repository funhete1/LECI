.data
.text
.globl main

main:	
		li $t0,4 #bin value=4
		li $t2,0 #gray value iniciate at 0
		srl $t1,$t0,1
		xor $t2,$t0,$t1
		li $v0,10
		syscall