; Name: Arjun Gautam
;STD: 40189411
;E-Mail: ar_gauta@live.concordia.ca
;Section: SI-X
; Date: Oct. 25, 2021


section .data

section .bss

section .text

global _start

_start:
mov ax,5
mov bx,2
add ax,bx
_end:
mov eax,1
mov ebx,0
int 80h
