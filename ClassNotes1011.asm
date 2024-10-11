.data
    myArray: .word 5, 10, 15, 20, 25, 30    # series of continuous elements in RAM
    myArrayLen: .word 6
    target: .word 15
    newline .asciiz "\n"
.text
.globl main

main:
    #for(int i=0; i<10; i++) {
        # print(i)
        # }
    li $t0, 0 # i = 0
    li $t1, 10 # end = 10

    beginLoop:
        # Condition (have we reached the end?)
        beq $t0, $t1, endLoop

        # print out i
        li $v0, 1
        move $a0, $t0
        syscall

        addi $t0, $t0, 1        # incrememnt


        j beginLoop

    endLoop:

    li $t0, 0                   # i = 0
    li $t1, 100                 # end = 100
    li $t2, 0

    beginLoop:
        # total = 0
        # for (int i = 0, i <100, i++)
            # total += i
            # print(total)

       beq $t0, $t1, endLoop
       add $t2, $t2, $t0        # total = total + i

       addi $t0, $t0, 1

       j beginLoop

    endLoop:


# Loop to print out add values in an array
main:
    li $t0, 0                   # i = 0
    lw $t1, myArraryLen         # end value
    la $t2, myArray             # address of array 0

    loop:
        beq $t0, $t1, endLoop   # condition

        li $v0, 1               # print out array[i]

        lw $a0, 0($t2)          # a0 <- RAM[0 + $t2]; laoding into a0 at array[i]
        syscall

        li $v0, 4
        la $a0, newline
        syscall

        addi $t0, $t0, 1        # i++
        addi $t2, $t2, 4        # t2 = address(array[i])

        j loop

    endLoop:


# Swapping elements of an Array
main:
    # Swap First Two Elements in an Array
    la $t0, myArray

    lw $t1, 0($t0)              # first element
    lw $t2, 4($t0)              # second element

    # swap
    sw $t1, 4($t0)              # store array[0] at array[1]
    sw $t2, 0($t0)              # store array[1] at array[0]


# linear search

    # search for target
    # if found print its index
    # else print -1
    li $t0, 0 # i = 0
    lw $t1, myArrayLen          # t1 = len(array)
    la $t2, myArray             # t2 = address(array[0]
    lw $t3, target

    loop:
        beq $t0, $t1, endLoop

        lw $t4, 0($t2)          # if array[i] == target
        beq $t4, $t3, foundElement
        addi $t0, $t0, 1
        addi $t2, $t2, 4

        j loop

    foundElement:
        li $v0, 1
        move $a0, $t0
        syscall                 # print loop
        j exit

    endLoop:
        li $v0, 1
        li $a0, -1
        syscall

    exit:
        li $v0, 10
        syscall