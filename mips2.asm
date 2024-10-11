.data
	A: .asciiz "Enter a:"
	B: .asciiz "Enter b:"
	C: .asciiz "Enter c:"
	result: .asciiz " = "
	newline: .asciiz "\n"
.text
.globl main

main:
	# a
	li $v0, 4
	la $a0, A
	syscall
	
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	# b
	li $v0, 4
	la $a0, B
	syscall
	
	li $v0, 5
	syscall
	
	move $t1, $v0
	
	# c
	li $v0, 4
	la $a0, C
	syscall
	
	li $v0, 5
	syscall
	
	move $t2, $v0
	
	# t3 = a - b
	sub $t3, $t0, $t1
	# t3 = t3 + c
	add $t3, $t3, $t2
	
	# prints
	li $v0, 1
	move $a0, $t0
	syscall
	
	li $v0, 4
	la $a0, "-"
	syscall
	
	li $v0, 1
	move $a0, $t1 # b
	syscall
	
	li $v0, 4
	la $a0, "+"
	syscall
	
	li $v0, 1
	la $a0, $t2 # c
	syscall
	
	li $v0, 4
	la $a0, "result"
	syscall
	
	li $v0, 1
	la $a0, newline
	syscall
	
	# exit
	li $v0, 10
	syscall