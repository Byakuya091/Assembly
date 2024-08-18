.data 
	character: .byte 'A' #character to print

.text
	li $v0, 4 #instruction to print string
	la $a0, character #load character adress
	syscall
	
	li $v0, 10 #stop running