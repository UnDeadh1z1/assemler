.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

sum db ?
n db 2
m db 3
osh db 0

data ends
text segment

start:

mov al,0
mov bl,m 
cmp bl,n
jg m1

l: 
    cmp bl,n
    jg m1
    add al,bl
    inc bl
    jmp l

m1:
    mov sum,al
    jmp fin


push 0
call ExitProcess@4
text ends
end start