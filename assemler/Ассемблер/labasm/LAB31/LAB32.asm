.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

X DB 2
Y DB 5
Z DW 6
MAX1 DW ?

data ends
text segment

start:

MOV DH,2

MOV AL,X
MUL DH

MOV BL,Y
SUB BL,X

MOV BH,00

CMP AX,BX;  X<Y
Jl M1

MOV AX, BX 
M1: CMP AX,Z
JL FIN

FIN: MOV MAX1,AX


push 0
call ExitProcess@4
text ends
end start
