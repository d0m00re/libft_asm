global _ft_isalnum
extern _ft_isdigit
extern _ft_isalpha

_ft_isalnum:
	call _ft_isdigit
	cmp rax, 1
	je GoodAlnum

	call _ft_isalpha
	cmp rax, 1
	je GoodAlnum

	ErrorAlnum:
		mov rax, 0
		jmp EndAlnum
	GoodAlnum:
		mov rax, 1
	EndAlnum:
		ret
