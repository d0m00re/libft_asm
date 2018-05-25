# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_memset.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:06 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:09 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .text
	global _ft_memset

; void *ft_memset(void *b, int c, size_t len);
; rax		  rdi,     rsi     rdx
; trouve4r le moyen de copier c dans b avec une repetition de len
; repetition ok
; copier ? stos*

_ft_memset:
	push rbp
	mov rbp, rsp
	mov r11, rdi

; copier x fois le caractere rsi
	mov rcx, rdx; initialisatyion du compteur avec len for rep isntruction
	mov rax, rsi; caractere a copier
	cld ; flag df cleared at 0, then we incremente :)
	; stosb :  store al at 
	; si le flag df est a 0 alors ca incremente, si 1 a alors decremente
	; df == 0
	rep stosb

.end:
	mov rax, r11
	leave
	ret
