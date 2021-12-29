.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

X DB 10
Y DB 5
D DW ?
U DW ?

data ends
text segment

start:

MOV AL,X
IMUL AL;X^2
MOV BX,AX
MOV AL,Y
ADD AL,5
IMUL AL
ADD AX,BX
CMP AX,25
JLE M1
JMP FIN2

M1:MOV AL,X
ADD AL,Y
CMP AL,0
JLE M2
JMP FIN2

M2:MOV AL,Y
CMP AL,0
JGE FIN1
JMP FIN2

FIN2:MOV AX,-1
FIN1:MOV U,AX

push 0
call ExitProcess@4
text ends
end start