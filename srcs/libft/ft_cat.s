%define MACH_SYSCALL(nb) 0x2000000 | nb
%define SYSCALL_WRITE    0x2000004
%define SYSCALL_READ     0x2000003

section .text
	global _ft_cat


_ft_cat:
	push rbp
	mov rbp, rsp
	mov r12, rdi

	sub rsp, 1024

	; quit if error
	cmp rdi, 0
	jl .endBad

; rax, rdi, rsi
; ssize_t read(int fildes, void *buf, size_t nbyte);
.read:
	mov rax, SYSCALL_READ
	mov rdi, r12
	mov rsi, rsp
	mov rdx, 1024
	syscall

	jc .endBad ; carry flag | retour 

	; si on a rien lu
	cmp rax, 0
	je .endGood

;ssize_t write(int fildes, const void *buf, size_t nbyte);
.write:
	mov rdx, rax
	mov rax, SYSCALL_WRITE
	mov rdi, 1
	mov rsi, rsp
	syscall
	jc .endBad
	jmp .read

.endGood:
	mov rax, 0
	jmp .end
.endBad:
	mov rax, 1
.end:
	leave
	ret
