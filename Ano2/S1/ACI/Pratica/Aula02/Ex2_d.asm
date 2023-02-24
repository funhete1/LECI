.data
.text
.globl main

main:	
		li $t0,110 #gray value
		or $t1,$0,$t0 #num = gray

		srl $t3,$t1,4 #num >> 4
		xor $t1,$t1,$t3 #num^(num >>4)


		srl $t3,$t1,2 #num >> 2
		xor $t1,$t1,$t3 #num^(num >>2)

		srl $t3,$t1,1 #num >> 1
		xor $t1,$t1,$t3 #num^(num >>1)

		or $t2,$0,$t1

		li $v0,10
		syscall