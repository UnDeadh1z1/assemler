.586
.model flat, stdcall
extern ExitProcess@4:near

includelib c:\masm32\lib\user32.lib
includelib c:\masm32\lib\kernel32.lib

data segment 
A DB 4
B DB 4
Y DB ?
data ends

text segment
start:
MOV AL,A
CMP AL,B
JE METKA
    MOV BL,AL
    SHR BL,1
    ADD AL,BL
    MOV BL,B
    SHR BL,1
    SUB AL,BL
    JMP FIN
METKA:
    MOV BL ,AL
    SHL AL,1
    SHR BL,1
    ADD AL,BL
    ADD AL,B
FIN:
    MOV Y,AL

push 0
call ExitProcess@4
text ends
end start