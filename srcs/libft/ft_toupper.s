global _ft_toupper
extern _ft_isminus

_ft_toupper:
	call _ft_isminus
	cmp rax, 0
	je EndToupper

	GoodToupper:
		sub rdi, 'a'
		add rdi, 'A'
	EndToupper:
		mov rax, rdi
		ret
