.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

sum dw ?
n dw 0

data ends
text segment

start:

mov dx,0
cmp n,0
je m
mov ecx,0
mov cx,n
mov dx,0
mov bl,1
l:
    mov al,bl
    mul bl
    add dx,ax
    inc bl
    
loop l

m:
mov sum,dx


push 0
call ExitProcess@4
text ends
end start