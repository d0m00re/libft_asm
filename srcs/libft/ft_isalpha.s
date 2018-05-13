global _ft_isminus
global _ft_ismajus
global _ft_isalpha

_ft_isminus:
        cmp rdi, 'a' ; '0'
        jl ErrorMin ; rdi < 'a'
        cmp rdi, 'z' ; 'z'
        jg ErrorMin ; '9' < rdi
        GoodMin:
                mov rax, 1
                jmp EndMin
        ErrorMin:
                mov rax, 0
        EndMin:
                ret

_ft_ismajus:
        cmp rdi, 'A' ; 'A'
        jl ErrorMaj ; rdi < 'A'
        cmp rdi, 'Z' ; 'Z'
        jg ErrorMaj ; 'Z' < rdi
        GoodMaj:
                mov rax, 1
                jmp EndMaj
        ErrorMaj:
                mov rax, 0
        EndMaj:
                ret

_ft_isalpha:
        call _ft_isminus
        cmp rax, 1
        je Good

        call _ft_ismajus
        cmp rax, 1
        je Good

        Error:
                mov rax, 0
                jmp End
        Good:
                mov rax, 1
        End:
                ret
