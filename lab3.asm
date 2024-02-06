;Arjun Gautam
;STD: 40189411
;E-Mail: ar_gauta@live.concordia.ca
;Section: SI-X  
;Date: November 8, 2021

section .data

array db 3,2,1,4,5,6          ;array stored in the memory 
 
section .bss

section .text

global _start

_start:
	mov al,1              ;row index
	mov bl,0               ;column index
	mov cl,2               ;number of columns
	mul cl		       ;row index multiply with number of columns
	add bl,al              ;calculating i*(no. of columns)+j
	mov esi,array	       ;moving the address of array to esi
	mov dl,[esi+ebx]       ;moving the element of the array to dl

_end:  	mov eax,1              
	mov ebx,0
	int 80h
