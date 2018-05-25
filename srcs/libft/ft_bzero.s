# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_bzero.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:18:32 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:18:35 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_bzero

_ft_bzero:
	push rbp
	mov rbp, rsp
	cmp rsi, 0
	je .end

	mov rcx, 0; mise a 0 du registre de compteur
	.loop:
		mov BYTE [rdi + rcx], 0
		inc rcx
		cmp rsi, rcx ; tant que n est different de 0 on boucle
		jne .loop
	.end:
		leave
		ret
