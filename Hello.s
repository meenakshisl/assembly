.data

str:
	.ascii "Hello World\n"

.text

.globl _start

_start:

	movl $4,%eax
	movl $1,%ebx
	movl $str,%ecx
	movl $12,%edx
	int $0x80

	movl $1,%eax
	movl $0,%ebx
	int $0x80

