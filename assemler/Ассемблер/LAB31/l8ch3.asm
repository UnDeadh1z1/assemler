.586
.model flat, stdcall
extern ExitProcess@4:near

includelib f:\masm32\lib\user32.lib
includelib f:\masm32\lib\kernel32.lib

data segment 
n equ 5
m equ 3
A db 7,0,5,1,2,   
         1,2,-1,9,1,  
         -6,2,4,-1,0  
NM db m DUP(?)

data ends

text segment
start:
MOV ECX,M
MOV ESI,0
MOV EDI,0
M1:
    MOV EDX,ECX
    MOV EAX,0
    MOV EBX,0
    MOV ECX,n
    m2:
       CMP A[ESI][EBX],0
       JGE Metka
        INC AL
        JMP M3
      Metka: ADD EBX,1
    LOOP m2
    M3:MOV NM[EDI],AL
    ADD EDI,1
    ADD ESI,n
    MOV ECX,EDX
    LOOP M1

push 0
call ExitProcess@4
text ends
end start