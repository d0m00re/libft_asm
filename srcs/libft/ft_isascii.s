# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_isascii.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:19:36 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:19:38 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_isascii

_ft_isascii:
        cmp rdi, 0 ; '0'
        jl ErrorAscii ; rdi < '0'
        cmp rdi, 127 ; '9'
        jg ErrorAscii ; '9' < rdi
        GoodAscii:
                mov rax, 1
                jmp EndAscii
        ErrorAscii:
                mov rax, 0
        EndAscii:
                ret
