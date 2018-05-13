section .data
hello:
	.string db "Hello World!", 10
	.len equ $ - hello.string
	.string2 db "Hello bitch!", 10
	.len2 equ $ - hello.string2

section .text
	global start
	global _main

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp

	mov rdi, '5' ; put value in to rdi parameters
	call _is_digit
	cmp rax, 1
	jne EndB
	mov rdi, 1
	lea rsi , [rel hello.string]
	mov rdx, hello.len
	mov rax, 0x2000004 ; call write
	syscall
	EndB:
		mov rax, 50
		pop rbp
		ret

; use rdi
_is_digit:
	;push rbp
	mov rbp, rsp
	cmp rdi, '0' ; '0'
	jl Error ; rdi < '0'
	cmp rdi, '9' ; '9'
	jg Error ; '9' < rdi
	Good:
		mov rax, 1
		jmp End
	Error:
		mov rax, 0
	End:
	;	pop rbp
		ret
_square:
	mov rax, rdi
	imul rax, rdi
	ret
