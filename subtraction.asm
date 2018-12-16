.text
main:

## Print name and roll on the output
la $a0, output_msg # load the addr of output_msg into $a0.
li $v0, 4 # 4 is the print_string syscall.
syscall # do the syscall.

## Get first number from user, put into $t0.
li $v0, 5 # load syscall read_int into $v0.
syscall # make the syscall.
move $t0, $v0 # move the number read into $t0.


## Get second number from user, put into $t1.
li $v0, 5 # load syscall read_int into $v0.
syscall # make the syscall.
move $t1, $v0 # move the number read into $t1.
sub $t2, $t0, $t1 # compute the difference.


## Print out $t2.
move $a0, $t2 # move the number to print into $a0.
li $v0, 1 # load syscall print_int into $v0.
syscall # make the syscall.
li $v0, 10 # syscall code 10 is for exit.
syscall # make the syscall.

# Data for the program:
.data
output_msg: .asciiz "Prakash 161210033\n"

# end of subtraction.asm.
