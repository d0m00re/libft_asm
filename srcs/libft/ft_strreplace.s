# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strreplace.s                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:22 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:21:23 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

; void    ft_strreplace(char *str, char target, char new)

section .text
	global _ft_strreplace

_ft_strreplace:
	push rbp
	mov rbp, rsp

	cmp rdi, 0
	je .end

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
