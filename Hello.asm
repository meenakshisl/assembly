section .data 
str: db "Hello World\n",0xa


section .text

	global _start
_start :
 	mov eax,4
	mov ebx,1
	mov ecx,str
	mov edx,12
	int 0x80

        mov eax,1
	mov ebx,0
	int 0x80

