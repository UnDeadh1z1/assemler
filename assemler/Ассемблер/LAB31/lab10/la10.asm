.586
.model flat, stdcall
extern ExitProcess@4:near

includelib d:\masm32\lib\user32.lib
includelib d:\masm32\lib\kernel32.lib

data segment 

;z=(x+2)^2-(y-3)^2 если x^2-y^2<2 
;x^2-y^2-1 иначе 

z dw ?
x db 1
y db 0


data ends

text segment
start:

mov al,x
mov dl,y
call kvad
cmp bx,2
jg inache
mov ax,0
mov bx,0
mov dx,0
mov al,x
add al,2
mov dl,y
sub dl,3
call kvad
jmp fin
inache:
mov ax,0
mov bx,0
mov dx,0
mov al,x
mov dl,y
call kvad
sub bx,1
fin:mov z,bx

push 0
call ExitProcess@4

kvad proc

imul al
mov bl,al
mov al,dl
imul al
sub bx,ax

ret
kvad endp

text ends
end start