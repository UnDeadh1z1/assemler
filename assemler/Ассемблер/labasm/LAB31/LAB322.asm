.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

X DW 15
Y DW ?

data ends
text segment

start:

 MOV AX,X
 CMP AX, -1
 JLE FIN
 CMP AX,11
 JLE M2
 CMP AX,21
 JLE M3
 MOV AX,0
 JMP FIN

M2:MOV AX,-1
JMP FIN

M3:SUB AX,1

FIN:MOV Y,AX

push 0
call ExitProcess@4
text ends
end start