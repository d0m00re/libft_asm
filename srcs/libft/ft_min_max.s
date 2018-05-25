# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_min_max.s                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:14 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:15 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_min
	global _ft_max

_ft_max:
	cmp rdi, rsi
	jl .retRsi
	jmp .retRdi

.retRdi:
        mov rax, rdi
        ret
.retRsi:
        mov rax, rsi
        ret

_ft_min:
	cmp rdi, rsi
	jl .retRdi
	jmp .retRsi

.retRdi:
        mov rax, rdi
        ret
.retRsi:
        mov rax, rsi
        ret
