global _ft_strcat
extern _ft_strcpy
extern _ft_strlen

_ft_strcat:
	push rbp
	mov rbp, rsp
	mov rax, rdi
.iter:
	mov cl, [rdi]
	cmp cl, 0
	je .copy
	inc rdi
	jmp .iter
.copy:
	call _ft_strcpy
	leave
	ret
