extern printf
extern scanf
section .data

	fmt : db "%d",0
	n: dd 3
 
	
section .text


    global main

	main:
		push ebp
		mov ebp,esp

		push n
		push fmt
		call scanf
	

		mov edx,2      ;loop counter
		mov eax,0      ;a
		mov ebx,1      ;b
		mov ecx,1      ;c
		

		cmp dword [n],1
		je print1

		cmp dword [n],2
		je print2

	        L1:
		cmp edx,dword [n]
		je _print
	        
		add ecx,eax
		


		mov eax,ebx 
		mov ebx,ecx
		
		add edx,1
		cmp edx,dword [n]
		
		jle L1
			
	_print:
		push ecx
		push fmt
		call printf
		jmp exit	
		;cmp edx,dword [n]
		;jle L1
	
	print1:
		push eax
		push fmt
		call printf
   		jmp exit
	print2:
		push ebx
		push fmt
		call printf
		jmp exit
	
	exit:
		leave 
		ret

