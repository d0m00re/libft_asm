global _ft_strdup
extern _ft_strcpy
extern _ft_strlen
extern _malloc
extern _ft_memcpy

section .text
_ft_strdup:
	push rbp
	mov rbp, rsp

	len:
		push rdi ;on sauve le registre rdi dans la stack
		; recuperer la taille - rdi est deja present
		call _ft_strlen
		push rax ; push de la taille dans la pille
	
		; allocation dynamique
		; | rax : size len
		; | rdi : adresse d origine
		; | pile
	alloc:	
		call _malloc
		cmp rax, 0 ; case null
		je end
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
