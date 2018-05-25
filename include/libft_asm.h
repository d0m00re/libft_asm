/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libft_asm.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: alhelson <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/05/25 03:05:00 by alhelson          #+#    #+#             */
/*   Updated: 2018/05/25 07:05:06 by alhelson         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_ASM_H
# define LIBFT_ASM_H

int				ft_isalnum(int c);
int				ft_isalpha(int c);
int				ft_isascii(int c);
int				ft_isdigit(int c);
int				ft_isprint(int c);
int				ft_ismajus(int c);
int				ft_isminus(int c);

char			*ft_strcat(char *restrict str, char *restrict str2);
char			*ft_strcpy(char *str, const char *str2);
void			*ft_memcpy(void *restrict dst,\
const void *restrict src, size_t n);

int				ft_toupper(int c);

int				ft_tolower(int c);

size_t			ft_strlen(const char *str);

int				ft_puts(const char *s);

void			ft_bzero(void *s, size_t n);

void			*ft_memset(void *b, int c, size_t len);

char			*ft_strdup(const char *s1);

int				ft_cat(int fd);

unsigned int	ft_min(unsigned int a, unsigned int b);
unsigned int	ft_max(unsigned int a, unsigned int b);

void			ft_strreplace(char *str, char target, char new);

char			*ft_strchr(const char *s, int c);

unsigned int	sum_uint_tab(unsigned int *tab, unsigned int size);
unsigned int	moy_uint_tab(unsigned int *tab, unsigned int size);

#endif
