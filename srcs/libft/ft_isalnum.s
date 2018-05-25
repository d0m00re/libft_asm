# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isalnum.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:19:20 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:19:23 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isalnum
	extern _ft_isdigit
	extern _ft_isalpha

_ft_isalnum:
	call _ft_isdigit
	cmp rax, 1
	je GoodAlnum

	call _ft_isalpha
	cmp rax, 1
	je GoodAlnum

	ErrorAlnum:
		mov rax, 0
		jmp EndAlnum
	GoodAlnum:
		mov rax, 1
	EndAlnum:
		ret
