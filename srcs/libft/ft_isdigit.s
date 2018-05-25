# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isdigit.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:19:45 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:19:47 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isdigit

; use rdi
_ft_isdigit:
	cmp rdi, '0' ; '0'
	jl Error ; rdi < '0'
	cmp rdi, '9' ; '9'
	jg Error ; '9' < rdi
	Good:
		mov rax, 1
		jmp End
	Error:
		mov rax, 0
	End:
		ret
