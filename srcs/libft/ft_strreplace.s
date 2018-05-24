; void    ft_strreplace(char *str, char target, char new)

global _ft_strreplace
_ft_strreplace:
	push rbp
	mov rbp, rsp

.replace:
	cmp byte[rdi], 0
	je .end; end of string, go to end

	mov rax, rsi
	;mov al, rax ;;al, byte[rdi] ;cmps ;cmp rdi, rsi ; if actual char != target
	cmp [rdi], al
	je .replaceChar ; go in replacee_chasr or go replace_end
	jmp .replaceEnd
.replaceChar:
	mov rax, rdx
	mov [rdi], al
.replaceEnd:
	inc rdi; increment de la chaine de caractere
	jmp .replace
.end:
	leave
	ret
