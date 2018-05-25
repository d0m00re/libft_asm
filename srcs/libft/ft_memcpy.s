# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:19:56 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:19:58 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

;void * memcpy(void *restrict dst, const void *restrict src, size_t n);
;rax		rdi				rsi,		rdx

section .text
	global _ft_memcpy

_ft_memcpy:
	push rbp
	mov rbp, rsp

	mov r8, rdi

	; corps
	; rep movsb
	cld ; clear direction flag --> we go increment bitchees | icnr rdi and rsi register
	mov rcx, rdx ; add counter
	rep movsb ; rep : repeat while rax not null
	; movsb : move bitds at rsi -> rdi
	

.end:
	mov rax, r8
	leave
	ret
