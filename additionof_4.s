	.include "common.i"

	.text

	.entry main
main:	
	PutMsg	greet
	ret

greet:	.string	"Hello sujit!\n"

.end

	GetInt number1,num1
        GetInt number2,num2
        GetInt number3,num3
	mov rax, num1
	mov rcx, num2
	add rax,rcx
	add rax,num3
	putInt add
