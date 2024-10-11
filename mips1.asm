.data
	a: .word 4
	b: .word 7
	c: .word 10
	result: .word 0
	newline: .asciiz "\n"
.text
.globl main

main:
	lw $t0, a
	lw $t1, b
	lw $t2, c
	
	# t3 = ta + tb
	add $t3, $t0, $t1
	# t3 = ta + tb + tc
	add $t3, $t3, $t2
	
	sw $t3, result
	
	
	li $v0, 1
	move $a0, $t3
	syscall
	
	li $v0, 4
	la $a0, newline
	syscall
	
	li $v0, 10 
	syscall
	