.586
.model flat, stdcall
extern ExitProcess@4:near

includelib C:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment 
n equ 5
m equ 3
A db 7,0,5,1,2,   
         1,2,-1,9,1,  
         -6,2,4,-1,0  
NM db m DUP(0)

data ends

text segment
start:
MOV ECX,M
MOV ESI,0
MOV EDI,0
M1:
    MOV EDX,ECX
    MOV EBX,0
    MOV ECX,n
    m2:
       CMP A[ESI][EBX],0
       JGE Metka
       MOV NM[EDI],1
        JMP M3
      Metka: ADD EBX,1
    LOOP m2
    M3:
    ADD EDI,1
    ADD ESI,n
    MOV ECX,EDX
    LOOP M1

push 0
call ExitProcess@4
text ends
end start