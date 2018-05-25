# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_puts.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 05:20:20 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 05:20:21 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

%define MACH_SYSCALL(nb)	0x2000000 | nb
%define STDOUT			1
%define WRITE			4

section .text
	global _ft_puts
	extern _ft_strlen

;section .data
backline db 10
null db "(null)", 10

_ft_puts:
	mov rsi, rdi
	cmp rdi, 0
	je .null
	call _ft_strlen ;store len in rax

	mov rdi, STDOUT ; output (fd)
	mov rdx, rax ; size
	mov rax, MACH_SYSCALL(WRITE) ; syscall
	syscall
	jc .error

        mov rdi, STDOUT ; output (fd)
        mov rdx, 1; size
	lea rsi, [rel backline]
        mov rax, MACH_SYSCALL(WRITE) ; syscall
        syscall
        jc .error

	mov rax, 10
	jmp .end
.null:
	mov rdi, STDOUT
	mov rdx, 7
	lea rsi, [rel null]
	mov rax, MACH_SYSCALL(WRITE)
	syscall
.error:
	mov rax, 1
.end:
	ret
