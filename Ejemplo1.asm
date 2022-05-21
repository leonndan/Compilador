.486
.model flat, stdcall
option casemap:none
includelib \masm32\lib\kernel32.lib
 includelib \masm32\lib\user32.lib
includelib \masm32\lib\gdi32.lib
includelib \masm32\lib\msvcrt.lib
includelib \masm32\lib\masm32.lib
include \masm32\include\kernel32.inc
include \masm32\include\user32.inc
include \masm32\include\gdi32.inc
include \masm32\include\windows.inc
include \masm32\include\msvcrt.inc
include \masm32\include\masm32.inc
include \masm32\macros\macros.asm
.data
a dword 0
b dword 0
d dword 0
x dword 0
y dword 0
z dword 0

.code
main:
Suma:
push 25
pop eax
mov x, eax
push 13
pop eax
mov y, eax
push x
push y
pop ebx
pop eax
add eax, ebx
push eax
pop eax
mov z, eax
print str$(eax)
print chr$(10)
push 5
pop eax
mov a, eax
push 10
pop eax
mov b, eax
push a
push b
pop ebx
pop eax
xor edx,edx
imul ebx
push eax
pop eax
mov d, eax
print str$(eax)
print chr$(10)
mov eax, sval(input("Enter any press to continue..."))
exit
end Suma
exit
end main

