# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_toupper.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:54 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:21:55 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_toupper
	extern _ft_isminus

_ft_toupper:
	call _ft_isminus
	cmp rax, 0
	je EndToupper

	GoodToupper:
		sub rdi, 'a'
		add rdi, 'A'
	EndToupper:
		mov rax, rdi
		ret
