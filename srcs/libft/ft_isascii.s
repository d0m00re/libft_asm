global _ft_isascii

_ft_isascii:
        cmp rdi, 0 ; '0'
        jl ErrorAscii ; rdi < '0'
        cmp rdi, 127 ; '9'
        jg ErrorAscii ; '9' < rdi
        GoodAscii:
                mov rax, 1
                jmp EndAscii
        ErrorAscii:
                mov rax, 0
        EndAscii:
                ret
