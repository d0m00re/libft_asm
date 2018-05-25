# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strchr.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:35 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:37 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strchr

; char *strchr(const char *s, int c);
_ft_strchr:
	push rbp
	mov rbp, rsp
	mov r9, rdi

	.loop:
		mov rax, rsi
		cmp [rdi], al; *rdi == c
		je .goodEnd

		cmp BYTE [rdi], 0; *rdi == NULL
		je .badEnd

		inc rdi
		jmp .loop

	.badEnd:
		mov rax, 0
		jmp .end

	.goodEnd:
		mov rax, rdi
	.end:
		leave
		ret
