.586
.model flat, stdcall
extern ExitProcess@4:near

includelib C:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment 

;Вычислить сумму чисел от m до n.

M DB 2
N DB 3
SUM DB ?

data ends

text segment
start:

;MOV EAX,0
MOV AL,0
MOV BL,M

L:
CMP BL,N
JG FIN
ADD AL,BL
INC BL
JMP L

FIN:
MOV SUM,AL

push 0
call ExitProcess@4
text ends
end start