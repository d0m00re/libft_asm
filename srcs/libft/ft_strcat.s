# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcat.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:29 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:30 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcat
	extern _ft_strcpy
	extern _ft_strlen

_ft_strcat:
	push rbp
	mov rbp, rsp
	mov rax, rdi

	cmp BYTE [rsi], 0
	je .end
.iter:
	;mov cl, [rdi]
	;cmp cl, 0
	cmp BYTE [rdi], 0
	je .copy ; if we find 0 we jump in copy
	inc rdi
	jmp .iter ; or iterate
.copy:
	push rax
	call _ft_strcpy ; copy string data
	pop rax
.end:
	leave
	ret
