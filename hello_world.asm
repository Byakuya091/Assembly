.data
	msg: .asciiz "Hello, World!" #string declaration

.text
  	li $v0, 4 #instruction to print string 
  	la $a0, msg #load string adress
  	syscall