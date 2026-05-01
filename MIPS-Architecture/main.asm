.data
arr: .space 40
enterMsg: .asciiz "Enter 10 Integers\n"
resultMsg: .asciiz "The Max Value is : \n"
endl: .asciiz "\n"

.text
main:

la $a0,enterMsg # Loading the address of label (Message String)
li $v0,4 # Request printing a string 
syscall

li $t0,0 # set counter for the loop
la $t3,arr # load the starting address of the array

LOOP: #  arry filling Loop label

slti $t1,$t0,10   # if ( $t0 < 10 ) set $t1 = 1 else $t1=0 
beq $t1,$zero,END_LOOP  # if ($t1 == 0 ) jump to END_LOOP Label

li $v0,5  # Read Integer request
syscall

sw $v0,0($t3) # storing the value entered in the array

addi $t3,$t3,4 # adding the address by four (To access the next value in the array(Integer = 4 byte, so each value in the array is is 4 bytes away from the next one )
addi $t0,$t0,1 # adding the counter by 1 

j LOOP  # unconditional jump the loop label
END_LOOP: # Ending the loop label

# Fucntion Calling Procedure 
# Setting Arguments 
la $a0,arr # loading the starting address of the array (put it in $a0 to be a parameter to the fucntion that will be called)
li $a1,10  # loading the array size in $a1 also to be an parameter 
jal find_max # jump and link instrcution ( function calling )

move $s0,$v0  # moving the returned value from the fucntion to $s0

la $a0,endl # load the address of string (endl) to print a new line 
li $v0,4    # request the service 
syscall  

move $a0,$s0  # moving $s0(result) to $a0 to request printing
li $v0,1    # request printing integer
syscall

li $v0,10  # End The Program
syscall


find_max: # Function Label

li $t0,0  # setting counter for the loop
li $t2,0  # setting a register that will has the maximun value 

Find_LOOP:
slt $t1,$t0,$a1  # if ( $t0 < $a1(an argument that has value = 10 ))$t1=1 else $t1=0
beq $t1,$zero,END_Find_Loop if # if($t1==$zero) Jump to end loop label 
addi $t0,$t0,1 # adding the counter by one 
lw $t3,0($a0)  # loading the value from any array (at first time in the loop, arr[0] will be loaded, second time arr[1]....)
addi $a0,$a0,4 # Increasing the address by 4 to access the next element
slt $t4,$t2,$t3 # If($t2-MaxValue- < $t3-arr[i])$t4=1 else $t4=0
beq $t4,$zero,Find_LOOP # if($t4==$zero) Jump and try agin, if we didn't reach the end of the arry it will try another number
move $t2,$t3 # This statment excute if the arr[i] is greter than the max value, it will store arr[i] in max value
move $v0,$t3 # Prepare the value to returned in $v0 register
j Find_LOOP  # unconditonal 
END_Find_Loop:

jr $ra

