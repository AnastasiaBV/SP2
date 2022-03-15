.data

print:
	.string "Hello world\n"

.text
.globl main
.type main, @function

main:
	push $print
	call printf

	addl $4, %esp
	ret
