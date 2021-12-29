.586
.model flat, stdcall
extern ExitProcess@4:near

includelib d:\masm32\lib\user32.lib
includelib d:\masm32\lib\kernel32.lib

data segment 

;Даны два массива. Изменить каждый из них, используя процедуру, по правилу: отрицательные элементы умножить на -3

N EQU 8
m equ 9
A DB 1,2,-2,3,-3,4,5,-5
B DB -2,6,9,-3,2,8,0,-1,-2

data ends

text segment


podp proc
push AX
Push CX
push SI
push BX
MOV bl,-3
M1:
MOV Al, [ESI]
CMP Al,0
JGE M2
IMUL BL
MOV [ESI],Al
    
M2: 
    inc ESI
Loop M1
pop BX
pop SI
pop CX
POp AX
ret
podp endp


start:
MOV ECX,N
lea ESI,A
Call podp
mov esi,m
lea ESI,B
Call podp
push 0
call ExitProcess@4
text ends
end start