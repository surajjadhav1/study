	.include "common.i"

	.text

	.entry run
run:	
	PutMsg	greet
	ret

greet:	.string	"Hello sujit!\n"

.end

