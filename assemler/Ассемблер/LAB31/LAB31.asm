.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

X DB 2
Y DB 4
Z DB 6
MAX1 DB ?

data ends
text segment

start:

MOV AL,X
CMP AL,BL;  X>Y
JG M1

MOV AL,Y
M1: CMP AL,Z
JG FIN ;Y>Z
MOV AL,Z
FIN: MOV MAX1,AL


push 0
call ExitProcess@4
text ends
end start


