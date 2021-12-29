.586
.model flat, stdcall
extern ExitProcess@4:near

includelib f:\masm32\lib\user32.lib
includelib f:\masm32\lib\kernel32.lib

data segment 
n equ 5
m equ 3
A dB  7,1, 5,1,  2,
         -4,2,-1,9,10,
          5,5,9,11,  3
NM dB n DUP(?)
data ends

text segment
start:
MOV ECX,n
MOV EDI,0
M1:
    MOV EDX,ECX
    MOV AL,A[EDI][0]
    MOV EBX,n
    MOV ECX,M-1
    M2:
       CMP A[EDI][EBX],AL
       JLE Metka
       MOV AL,A[EDI][EBX]
      Metka: ADD EBX,n
    LOOP M2
    MOV NM[EDI],AL
    ADD EDI,1
    MOV ECX,EDX
    LOOP M1

push 0
call ExitProcess@4
text ends
end start