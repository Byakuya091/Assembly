.data
	pergunta: .asciiz "Qual � o seu nome? "
	saudacao: .asciiz "Ol�, "
	nome: .space 25

.text
	li $v0, 4
	la $a0, pergunta #prints a string
	syscall
	
	
	li $v0, 8 #read an inputed string
	la $a0, nome
	la $a1, 25 #byte lenght
	syscall
	
	li $v0, 4 #prints a string
	move $a2, $a0
	la $a0, saudacao
	syscall
	
	li $v0, 4
	move $a0, $a2
	syscall