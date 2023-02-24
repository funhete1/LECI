.data
num: .float 2.59375
.text
.globl main

main:
do:
	
	li $v0,5
	syscall
	mtc1 $v0,$f0
	
	cvt.s.w $f0,$f0
	l.s $f1,num
	mul.s $f0,$f0,$f2
	mov.s $f12,$f0  #$f12 is used to send floats arguments
	li $v0,2
	syscall
	