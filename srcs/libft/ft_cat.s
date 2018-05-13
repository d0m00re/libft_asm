%define MACH_SYSCALL(nb) 0x2000000 | nb
%define SYSCALL_WRITE    0x2000004
%define SYSCALL_READ     0x2000003

section .text
	global _ft_cat


_ft_cat:
	push rbp
	mov rbp, rsp
	mov r9, rdi

	sub rsp, 1000

	; quit if error
	cmp rdi, 0
	jl .end

; rax, rdi, rsi
; ssize_t read(int fildes, void *buf, size_t nbyte);
.read:
	mov rax, SYSCALL_READ
	mov rdi, r9
	mov rsi, rsp
	mov rdx, 1000
	syscall

	jc .end

	; si on a rien lu
	cmp rax, 0
	je .end

;ssize_t write(int fildes, const void *buf, size_t nbyte);
.write:
	mov rdx, rax
	mov rax, SYSCALL_WRITE
	mov rdi, 1
	mov rsi, rsp
	syscall
	jc .end
	jmp .read

.end:
	mov rax, r9
	leave
	ret
