# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_tolower.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:27 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:21:29 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_tolower
	extern _ft_ismajus

_ft_tolower:
	call _ft_ismajus
	cmp rax, 0
	je EndTolower

	GoodTolower:
		sub rdi, 'A'
		add rdi, 'a'
	EndTolower:
		mov rax, rdi
		ret
