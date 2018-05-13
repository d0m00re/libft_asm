global _ft_min
global _ft_max

_ft_max:
	cmp rdi, rsi
	jl .retRsi
	jmp .retRdi

.retRdi:
        mov rax, rdi
        ret
.retRsi:
        mov rax, rsi
        ret

_ft_min:
	cmp rdi, rsi
	jl .retRdi
	jmp .retRsi

.retRdi:
        mov rax, rdi
        ret
.retRsi:
        mov rax, rsi
        ret
