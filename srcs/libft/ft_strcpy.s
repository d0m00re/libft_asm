global _ft_strcpy

; rdi, rsi
_ft_strcpy2:
	push rbp
	mov rbp, rsp
	mov r11, rdi
.Cp:
	mov cl, [rsi]; // ici on copie caractere par caractere
	mov [rdi], cl;
	cmp  cl, 0
	je .End
	inc rsi
	inc rdi
	jmp .Cp
	.End:
		mov rax, r11
		movsb
		leave
		ret

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
	leave
	ret
