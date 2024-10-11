# Fall 2024 CS-2810-001
## Assignment 5 - MIPS Intro Problems
#### Due: Fri Oct 11, 2024 11:59pm10/11/2024

## MIPS Intro Problems
The following are three tasks, setup to give you a lot of practice with manipulating registers and using the various MIPS instructions.

### Objectives
1. Gain familiarity using basic MIPS processes, such as adding, loading and storing words, defining variables, etc...

### Task 1 - Add3
#### Overview:
For this task you will be writing a simple program that defines some variables in memory, adds them together, stores the result and prints it out.

#### Requirements:
Write a program that satisfies the following requirements:
- Create three variables in memory (RAM). Name these variables a, b, and c.
  - Their data type should be words, they can have any value however
- Create space for a variable named result to store the addition of these three variables
- Load a, b, and c into the register file and add them all together
- Store the result of addition into the result variable (back in RAM)
- Additionally, print out the result of the addition to the console

#### Example Output:
Assuming a=4, b=7, and c=10
```
21
```

Assuming a=-5, b=-4, and c=3
```
-6
```

### Task 2 - Complex Equation with User Input
#### Overview:
For this task you will be asking the user for three numbers, sending them through an equation, and printing them out. This task you will have to work a lot more with syscalls, strings, and general register manipulation.

#### Requirements:
- Ask the user for three numbers with the prompt shown in the example outputs
- Calculate a - b + c
- Print out a - b + c = ___, where the values are replaced with the actual numbers
- Make sure the program exits without falling off the bottom (use a sys call for this)

### Hints:
- Use the Help>Syscall table in MIPS to figure out how to use the various syscalls
- Define messages for each string that you want to print out, you will have to print out the prompt before gathering the user input
- Printing out the final equation will be a lot of different strings, integers, and syscalls to print the separate parts
- The li (load immediate), and move instructions are really helpful here

#### Example Outputs:
```
Enter a: 10
Enter b: 9
Enter c: 7
10 - 9 + 7 = 8
-- program is finished running --
```
```
Enter a: 22
Enter b: 30
Enter c: 5
22 - 30 + 5 = -3
-- program is finished running --
```

### Task 3 - Average4
#### Overview:
This task is another opportunity to practice loading and storing values from/to memory.

#### Requirements:
- Define four values in memory
  - a, b, c, d
  - All should be of data type .word, with any value
- Transfer the values into the register file
- Calculate the sum of the values and the average of the values
  - For the average use the div $t0, $t1, $t2 instruction, it will perform integer division on $t1 // $t2 and store the result in $t0
  - You can just hardcode "4" into the code to use as the divisor
- Store the sum and average in two variables in memory (RAM)
  - One variable called sum
  - One variable called average
  - These variables should be initially defined as .space

### Generative AI
The use of generative AI tools is forbidden on this assignment. If code is found to use generative AI on this assignment, it will be scored as -100 points. If you are struggling with the content, please reach out to me (Seth.bassetti@usu.edu), and I am more than happy to setup a meeting and help review the relevant concepts.

### Submission
Submit the following assembly files as task1.asm, task2.asm, and task3.asm
