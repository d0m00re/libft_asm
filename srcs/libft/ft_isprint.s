global _ft_isprint

_ft_isprint:
	cmp rdi, 31
	jle Error
	cmp rdi, 127
	jge Error
	Good:
		mov rax, 1
		jmp End
	Error:
		mov rax, 0
	End:
		ret
