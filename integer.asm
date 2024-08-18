.data 
	age: .word 56 #integer value declaration
	
.text
	li $v0, 1
	lw $a0, age
	syscall