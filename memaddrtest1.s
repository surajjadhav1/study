	.include "common.i"

	.text	#read-only memory section

	.entry main
main:	
	GetInt	asku, upper
	mov	rax, upper	#rax=N
	mov	rcx, rax	#rcx=N
	add	rcx, 1		#rcx=N+1
	mul	rcx		#rax=N*(N+1)
	shr	rax		#rax=N*(N+1)/2
	PutInt	tell	

	PutMsg aa
	GetInt number1,num1
	GetInt number2,num2
	mov rax, num1
	mov rcx, num2
	add rax,rcx
	putInt add
	
        
	PutMsg bb
	GetInt number1,num1
	GetInt number2,num2
	mov rax, num1
	mov rcx, num2
	sub rax,rcx
	putInt sub
	
        
	PutMsg cc
	getint number1,num1
	getint number2,num2
	mov rax, num1
	mov rcx, num2
	mul rcx
	putint mul

	
        
	PutMsg dd
	getint number1,num1
	getint number2,num2
	mov rax, num1
	mov rcx, num2
	div rcx
	putint div

        
	PutMsg ee
	GetInt number1,num1
        GetInt number2,num2
        GetInt number3,num3
	mov rax, num1
	mov rcx, num2
	add rax,rcx
	add rax,num3
	putInt add
	
	
	PutMsg	greet

	ret
number1: .string "Enter number one=\n"
number2: .string "Enter number two=\n"
number3: .string "Enter number three=\n"
add:     .string "addition of two number is= \n"
sub:     .string "substraction of two numbers=\n"
mul:     .string "multiplication of two numbers=\n"
div:     .string "division of two numbers=\n"
asku:	.string	"Upper Limit: "
tell:	.string	"Sum of Integers = "
greet:	.string	"Goodbye User.\n"
aa:	.string "\n==========addition========\n"

bb:	.string "\n==========substraction========\n"
cc:	.string "\n==========multiplication========\n"
dd:	.string "\n==========division========\n"
ee:	.string "\n==========addition of three ========\n"
	.data	#writable memory section

upper:	.quad	0
 num1:	.quad 0
 num2:	.quad 0
 num3:  .quad 0

.end

