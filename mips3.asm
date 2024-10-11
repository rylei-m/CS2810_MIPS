.data
	A: .word 19
	B: .word 14
	C: .word 31
	D: .word 1
	sum: .space 4
	averege: .space 4
.text
.globl main

main:
	lw $t0, A
	lw $t1, B
	lw $t2, C
	lw $t3, D
	
	# t4 = a + b
	add $t4, $t0, $t1
	# t4 = t4 + c
	add $t4, $t4, $t2
	# t4 = t4 + d
	add $t4, $t4, $t3
	sw $st4, sum
	
	#averege
	li $t5, 4
	# t6 = sum / 4
	div $t6, $t4, $t5
	sw $t6, averege
	
	li $v0, 10
	syscall
	