.586
.model flat, stdcall
extern ExitProcess@4:near
includelib c:\masm32\lib\user32.lib
includelib c:\masm32\lib\kernel32.lib
;. ¬ одномерном массиве слов отрицательные элементы умножить на 2, а остальные увеличить на 5.
data segment

n equ 5
a dw 1,2,-3,4,5
     ;6.7.-6.9.10

data ends
text segment

start:

mov ecx,n
mov esi,0
mov bx,2
L:
    mov ax,a[si]
    cmp ax,0
    jl next
        add ax,5
        jmp next1
        next:
            imul bx
    next1:
        mov a[esi],ax
    add si,2
loop L

push 0
call ExitProcess@4
text ends
end start