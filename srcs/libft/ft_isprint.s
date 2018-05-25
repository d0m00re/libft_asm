# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isprint.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:19:51 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:19:53 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isprint

_ft_isprint:
	cmp rdi, 31
	jle Error
	cmp rdi, 127
	jge Error
	Good:
		mov rax, 1
		jmp End
	Error:
		mov rax, 0
	End:
		ret
