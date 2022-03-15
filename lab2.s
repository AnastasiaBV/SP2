.data /*описываем сегмент кода*/

print:
	.string "count: %d\n"

arr:
	.long 0, 32, 2, 34, 232, 128, 35, 1, 2, 3, 200, 165

arr_end:


.text
.globl main
.type main, @function

main:
	movl $0, %ecx
	movl $arr, %ebx

jmp bound

start:
	xor $17, (%ebx)
	and $17, (%ebx)
	cmpl $17, (%ebx)
	jne next_element
	addl $1, %ecx

next_element:
		addl $4, %ebx

bound:
	cmpl $arr_end, %ebx
	jne start

push %ecx
push $print 
call printf

addl $8, %esp
xor %eax, %eax
xor %ebx, %ebx
xor %ecx, %ecx
xor %edx, %edx
ret
