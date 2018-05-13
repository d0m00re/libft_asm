global _ft_tolower
extern _ft_ismajus

_ft_tolower:
	call _ft_ismajus
	cmp rax, 0
	je EndTolower

	GoodTolower:
		sub rdi, 'A'
		add rdi, 'a'
	EndTolower:
		mov rax, rdi
		ret
