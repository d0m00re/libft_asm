section .text

;void  ft_bzero(void *rdi, size_t rsi);
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
