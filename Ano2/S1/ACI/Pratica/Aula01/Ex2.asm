.data
.text
.globl main

main:	
	ori  	$t0,$0,2	#set the value of x as 2
	
	add 	$t1,$t0,$t0	#y=2x
	addi	$t1,$t1,-8	#y=2x-8
	jr	$ra