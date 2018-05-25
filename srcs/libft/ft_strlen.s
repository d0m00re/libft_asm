# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:16 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:21:18 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strlen

_ft_strlen:
	push rbp
	mov rbp, rsp

	;cmp rdi, 0 ;
	;je EndOfYourWorld; string == NULL

	mov al, 0 ; value research, we want end of character
	mov rcx, -1; initialisation du compteur, 0 == condition d arret de scasb
	cld; clars df flag, then indicate we want auto incremenete edi register to runing around string
	repne scasb ; incremente rdi for dtring and decrease rcx | loop
	mov rax, rcx ; recuperation de la valeur de l accumalateur
	neg rax ; l accumulateur rcx, decremente, nous devons donc passer la valeur en positif
	sub rax, 2 ; get real length
	leave
	ret

	EndOfYourWorld:
		mov rax, 0
		leave
		ret
