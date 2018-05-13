#ifndef LIBFT_ASM_H
# define LIBFT_ASM_H

int ft_isalnum(int c); // test ok
int ft_isalpha(int c); // test ok
int ft_isascii(int c);
int ft_isdigit(int c); // test ok
int ft_isprint(int c);
int ft_ismajus(int c);
int ft_isminus(int c);

int ft_istolower(int c);
int ft_istoupper(int c);

char *ft_strcat(char *str, char *str2);
char *ft_strcpy(char *str, char *str2);
void *ft_memcpy(void *restrict dst, const void *restrict src, size_t n);

/*
** TO DO
*/

// transform min in majuscule
int ft_toupper(int c);

// transform maj in min
int ft_tolower(int c);

size_t ft_strlen(char *str);

int ft_puts(const char *s);

//void
int ft_bzero(void *s, size_t n);

void *ft_memset(void *b, int c, size_t len);

char *ft_strdup(const char *s1);

int ft_cat(int fd);

// fonction supplementaire

int ft_min(int a, int b);
int ft_max(int a, int b);

#endif