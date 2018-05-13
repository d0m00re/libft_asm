global _ft_isdigit

; use rdi
_ft_isdigit:
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
		ret
