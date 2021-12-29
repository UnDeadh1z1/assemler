.586
.model flat, stdcall
extern ExitProcess@4:near

includelib c:\masm32\lib\user32.lib
includelib c:\masm32\lib\kernel32.lib

data segment 

n EQU 8
A DW 5, 8, 5, 7, 56, 6, 34, 12
MAX DW ?

data ends

text segment
start:
MOV ECX,n-1
MOV ESI,2
MOV AX,A

M1: 
                CMP A[SI],AX
                JLE M2
                MOV AX,A[SI]
M2: 
            ADD SI,2
LOOP M1
MOV MAX,AX
push 0
call ExitProcess@4
text ends
end start