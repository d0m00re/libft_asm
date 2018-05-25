# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcpy.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:41 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:42 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strcpy

; rdi, rsi
_ft_strcpy:
        push rbp
        mov rbp, rsp
	mov rax, rdi ; save return addr
.Cpp:
        movsd ; copi actual bit in rdi --> rsp, and incr this register
	cmp byte[rsi], 0
        jne .Cpp ; tant que actual_char != 0 --> loop

	movsd ; copy last bit
	leave; restore stack and restore frame pointeur
	ret
