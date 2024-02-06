; Arjun Gautam
; STD: 40189411 
; E-Mail: ar_gauta@live.concordia.ca
; Section: SI-X
; Date: November 8, 2021


section .data

mick dw 2 
keith dw 3

section .bss

sum resw 1

section .text
	global _start
_start:
	mov ax, [mick]
ron:    mov bx, [keith]
	add ax,bx

	mov [sum], ax

_end: mov eax, 1
      mov ebx, 0
      int 80h
	
