.586
.model flat, stdcall
extern ExitProcess@4:near

includelib f:\masm32\lib\user32.lib
includelib f:\masm32\lib\kernel32.lib

data segment 
n equ 5
m equ 3
A dw 7,1,5,1,2,   ;46 00
         4,2,1,9,1, ; 48 00
         6,2,4,1,3  ; 90 00
NM dw m DUP(?)
data ends

text segment
start:
MOV ECX,M
MOV ESI,0
MOV EDI,0
M1:
    MOV EBP,ECX
    MOV DX,0
    MOV AX,1
    MOV EBX,0
    MOV ECX,n
    m2:
       IMUL A[ESI][EBX]
       ADD EBX,2
    LOOP m2
    MOV NM[EDI],AX
    ADD EDI,2
    ADD ESI,2*n
    MOV ECX,EBP
    LOOP M1

push 0
call ExitProcess@4
text ends
end start