.text
main:

la $a0, output_msg 
li $v0, 4 
syscall 

li $v0, 5 
syscall 
move $t0, $v0 

li $v0, 5 
syscall 
move $t1, $v0

# if $t0 > $t1, branch to t0_bigger
bgt $t0, $t1, t0_bigger
 
#otherwise
move $t2, $t1
# then branch to endif
b endif 

t0_bigger:
move $t2, $t0 

endif:

la $a0, greater 
li $v0, 4 
syscall 

move $a0, $t2 
li $v0, 1
syscall 

li $v0, 10 
syscall

.data
output_msg: .asciiz "Prakash 161210033\n"
greater: .asciiz "Greater among the two is :\n"











