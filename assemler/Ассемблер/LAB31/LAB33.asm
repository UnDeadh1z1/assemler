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
ADD AL,Z

MOV BL,Y
ADD BL,Z

CMP AL,BL;  X+Z<Y+Z?
JL M1
MOV BL,AL
M1:MOV MAX1,BL

push 0
call ExitProcess@4
text ends
end start
