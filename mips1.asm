.data
	saudacao: .asciiz "Olá. Por favor, formeça a sua idade: "
	saida: .asciiz "Sua idade é "
	
.text
	li $v0, 4 #print a string
	la $a0, saudacao 
	syscall 
	
	li $v0, 5 #read an inputed integer
	syscall
	
	move $t0, $v0 #move value to t0
	
	li $v0, 4 #print a string
	la $a0, saida
	syscall
	
	li $v0, 1 #print the inputed integer
	move $a0, $t0
	syscall 