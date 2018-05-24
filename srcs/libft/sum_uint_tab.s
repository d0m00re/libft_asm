global _sum_uint_tab

_sum_uint_tab:
	push rbp
	mov rbp, rsp
	mov rax, 0
	mov rcx, rsi

	cmp rdi, 0
	je .end
	.loop:
		cmp rcx, 1
		jl .end
		add rax, [rdi]
		dec rcx
		add rdi, 4
		jmp .loop
	.end:
		leave
		ret
