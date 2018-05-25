# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strdup.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:21:07 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:21:08 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _malloc
	extern _ft_memcpy

_ft_strdup:
	push rbp
	mov rbp, rsp

	len:
		push rdi ;on sauve le registre rdi dans la stack
		; recuperer la taille - rdi est deja present
		call _ft_strlen
		push rax ; push de la taille dans la pille
		;inc rax
		mov rdi, rax ; push de la size
		inc rdi
		; allocation dynamique
		; | rax : size len
		; | rdi : adresse d origine
		; | pile
	alloc:
		
		call _malloc
		;cmp rax, 0 ; case null
		;je end
		push rax;

	; | rax : addr bitch of new memories
	; | rax : size_len
	; | rdi : adress origin
	; | stack
	copy:
		pop rdi ; dst
		pop rdx ; src
		pop rsi ; src
		; copie de la memoire
		call _ft_memcpy
	end:
		leave
		ret
