.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

n equ 6
a db 1,2,3,7,4,5
col db 0

data ends
text segment

start:
MOV ECX,n
MOV ESI,0
MOV BL,7
MOV DL,0
M1: 
                MOV AL,A[SI]
		MOV AH,0
                DIV BL
                CMP AH,0
                JE M2
                INC DL
M2: 
            INC SI
LOOP M1
MOV col,DL
push 0
call ExitProcess@4
text ends
end start