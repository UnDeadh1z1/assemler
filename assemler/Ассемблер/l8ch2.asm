.586
.model flat, stdcall
extern ExitProcess@4:near

includelib f:\masm32\lib\user32.lib
includelib f:\masm32\lib\kernel32.lib

data segment 
n equ 5
m equ 3
A dw  7,1, 5,1,  2,
         -4,2,-1,9,-10,
          5,5,-9,1,  3
        ;0c 00 ,08  00, 05 00, 0b 00, 05 00
NM dw n DUP(?)
data ends

text segment
start:
MOV ECX,n
MOV EDI,0
M1:
    MOV EDX,ECX
    MOV EAX,0
    MOV EBX,0
    MOV ECX,M
    M2:
       CMP A[EDI][EBX],0
       JLE Metka
       ADD AX,A[EDI][EBX]
      Metka: ADD EBX,2*n
    LOOP M2
    MOV NM[EDI],AX
    ADD EDI,2
    MOV ECX,EDX
    LOOP M1

push 0
call ExitProcess@4
text ends
end start