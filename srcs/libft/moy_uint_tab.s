# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    moy_uint_tab.s                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:59 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:22:00 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _moy_uint_tab
	extern _sum_uint_tab

_moy_uint_tab:
	push rbp
	mov rbp, rsp

	call _sum_uint_tab
	cmp rax, 0
	je .END
	cmp rdi, 0 ; div by zero - never this case normalement
	je .END

	mov rax, rdx ; dividend
	mov rdx, 0   ; reset to 0 rdx
	mov rcx, rsi ; divisor
	div rcx      ; div rdx / rcx 
	mov rax, rcx

	.END:
		leave
		ret
