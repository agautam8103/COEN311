	;Arjun Gautam
;STD: 40189411
;E-Mail: ar_gauta@live.concordia.ca
;Section: SI-X
;Date: December 6, 2021 

section .data
message db 'juMping JAck flaSh #1',10, 0	;string
len equ $-message				;length of the array-'message'

section .bss

section .text

global _start

_start:	mov eax,4				;moving 4 to eax
	mov ebx,1				;moving 1 to ebx
	mov edx,len				;moving length of array to edx
	mov ecx,message                         ;moving the message to ecx
	int 80h					;calling the interrupt to print the message
	mov esi,0				;creating an index for accessing each element of array
cap:	mov al,[ecx+esi]			;moving the first element of message(ecx+esi=ecx+0)(initially) to the al 
	cmp al,0				;comparing if al is empty i.e. if we have reached the end of the array 
	je print				;if we reached the end jump to print 
	cmp al,'z'				;comparing al to 'z'
	jg next					;jump to next if al is greatr than 'z'
	cmp al,'a'				;comparing al to 'a' 
	jl next					;jump to next if al is less than 'a'
	sub al,32				;subtract 32 from al and save it in al to capitalize the word 
	mov [ecx+esi], al			;moving the al(captialized word) back to the actual location in the memory
next:	inc esi					;incrementing esi to move to next value in the memory(message)
	jmp cap					;jumping back to cap to repeat the process for all the values
print:	mov eax,4				;moving 4 to eax
	mov ebx,1				;moving 1 to ebx
	mov edx,len				;moving length of arrray to edx
	int 80h					;call the interrupt to print the message
_end:	mov eax,1				;exit
	mov ebx,0
	int 80h
