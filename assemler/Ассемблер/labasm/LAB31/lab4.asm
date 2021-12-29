.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib C:\masm32\lib\kernel32.lib

data segment

x DB 1
y DB 2
f DW ?
oshibka DB 0

data ends
text segment

start:

mov bl,2
mov al,x
mul bl
jc error
mul y
jc error
mov bx,ax

mov al,x
sub al,1
jc error
cmp al,0
je error
mul al
jc error
mov dx,ax
mov ax,9
div dl
jc error

mov cl,y
mov ch,00

sub bx,ax
jc error
sub bx,cx
jc error
add bx,1
jc error

mov f,bx
jmp fin 

error: mov oshibka,1 

fin:

push 0
call ExitProcess@4
text ends
end start