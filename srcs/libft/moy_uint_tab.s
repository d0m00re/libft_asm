global _moy_uint_tab
extern _sum_uint_tab
; unsigned int moy(usi int *ab, size_t size)
_moy_uint_tab:
	push rbp
	mov rbp, rsp

	call _sum_uint_tab
	cmp rax, 0
	je .END
	cmp rdi, 0 ; div by zero - never this case normalement
	je .END

	mov rax, rdx ; dividend
	mov rdx, 0   ; reset to 0 rdx
	mov rcx, rsi ; divisor
	div rcx      ; div rdx / rcx 
	mov rax, rcx

	.END:
		leave
		ret
