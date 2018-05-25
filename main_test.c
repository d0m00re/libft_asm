#include <stdio.h>
#include "libft_asm.h"
#include <string.h>
#include <stdlib.h>
#include <strings.h>
#include <fcntl.h>
#include <ctype.h>
#include <unistd.h>


int test_bzero(void);
int test_strcat(void);
int test_isalpha(void);
int test_isdigit(void);
int test_isalnum(void);
int test_isascii(void);
int test_isprint(void);
int test_toupper(void);
int test_tolower(void);
int test_puts(void);

int test_strlen(void);


int test_memset(void);
int test_memcpy(void);
int test_strdup(void);

int test_min_max(void);

char *str = "QWERTasdsfdgdfjk64+--+/*-+YUIOPOKJHGFDSXC BNLM:{P{()*&^%$#";

int test_sum_uint_tab(void);
int test_moy_uint_tab(void);

int test_ft_strreplace(void);
int test_ft_strchr(void);

int main2(int ac, char **av)
{
	int c;
	int fd;

	c = 1;
	if (ac < 2)
		return (1);
	while (c < ac)
	{
		fd = open(av[c], O_RDONLY);
		if (fd > -1)
		{
			ft_cat(fd);
			close(fd);
		}
		c++;
	}
	return (1);
}

int main(void)
{
	int fd;

	ft_puts("LIBFT ASM :)");
	puts("LIBFT ASM :)\n");
	ft_puts(0);
	puts(0);
	    puts("---------------------------FIN DE TEST DE PUTS ---------------------------");	
	puts("\n\n --------------------------PART ONE-------------------------------");
	printf("1) Test bzero : %d\n", test_bzero());
	printf("2) Test ft_strcat : %d\n", test_strcat());
	printf("1) Test is alpha : %d\n", test_isalpha());
	printf("4) Test is digit : %d\n", test_isdigit());
	printf("5) Test is alnum : %d\n", test_isalnum());
	printf("6) Test is ascii : %d\n", test_isascii());
	printf("7) Test is print : %d\n", test_isprint());
	printf("8) Test is toupper : %d\n", test_toupper());
	printf("9) Test is tolower : %d\n", test_tolower());

	puts("\n\n --------------------------PART TWO-------------------------------");
	printf("1) Test ft_strlen : %d\n", test_strlen());
	printf("2) Test ft_memset : %d\n", test_memset());
	printf("3) Test ft_memcpy : %d\n", test_memcpy());
	printf("4) Test strdup : %d\n", test_strdup());

	puts("\n\n --------------------------PART TWO-------------------------------");
	printf("1-2) Test min max : %d\n", test_min_max());
        printf("4) Test is majus : %d\n", ft_ismajus('a') == 0 && ft_ismajus('A') == 1 && ft_ismajus(' ') == 0);
        printf("5) Test is minus : %d\n", ft_isminus('a') == 1 && ft_isminus('A') == 0 && ft_isminus(' ') == 0);	
	printf("6-7) Test somme/moyenne tab de int : %d\n", test_sum_uint_tab());
	printf("8) Test ft_strreplace : %d\n", test_ft_strreplace());
	printf("9) Test strchr : %d\n", test_ft_strchr());
	return (0);
}

int test_ft_strreplace(void)
{
	char str[4][20];

	strcpy(str[0], "coucou toi");

	ft_strreplace(str[0], 'c', 'C');
	ft_strreplace(0, 'c', 'C');
	return (strcmp(str[0], "CouCou toi") == 0);
}

int test_ft_strchr(void)
{
	char *str1 = "Coucou john";
	char *str2 = "";

	if (ft_strchr(str1, 'j') !=strchr(str1, 'j'))
		return (0);
        if (ft_strchr(str1, 0) !=strchr(str1, 0))
                return (0);
	return (1);
}

int test_bzero(void)
{
	char test[10];
	char test2[10];
	int ret = 0;

	strcpy(test, "012345678");
	strcpy(test2, "012345678");
	bzero(test, 4);
	ft_bzero(test2, 4);
	ret |= strncmp(test, test2, 10);

	bzero(test, 10);
        ft_bzero(test2, 10);

	
	ret |= strncmp(test, test2, 10);
	return (ret == 0);
}

int test_sum_uint_tab(void)
{
	unsigned int tab[10];
	unsigned int c = 0;
	
	while (c < 10)
	{
		tab[c] = c + 1;
		c++;
	}
	return (sum_uint_tab(tab, 10) == 55 && moy_uint_tab(tab, 10) == 10 && moy_uint_tab(0, 0) == 0 && sum_uint_tab(0, 0) == 0 &&\
		moy_uint_tab(tab, 0) == 0 && sum_uint_tab(tab, 0) == 0 && moy_uint_tab(0, 10) == 0 && sum_uint_tab(0, 10) == 0);
}

int test_min_max(void)
{
	return (ft_min(100, 200) < ft_max(100, 200) && ft_min(100000000, 200000000) > ft_max(1000, 200000));
}

int test_memset(void)
{
	int ret = 0;
	char st[2][100];
	char *goo = "coucou";

	char *s1;
	char *s2;

        s1 = memset(st[0], '*', 20);
        s2 = ft_memset(st[1], '*', 20);

	ret |= (strncmp(s1, s2, 20) != 0 && strncmp(st[0], st[1], 20));

	s1 = memset(st[0], '*', 90);
	s2 = ft_memset(st[1], '*', 90);

	ret |= (strncmp(s1, s2, 90) != 0 && strncmp(st[0], st[1], 90));
	return (ret == 0);
}

int test_memcpy(void)
{
	char st[2][100];
	char rouf[] = "Miaou miaou miaou dsg fdd sad ghg fdx vb gfx o";

	char *s1;
	char *s2;

	s1 = memcpy(st[0], "salopee", 7);
	s2 = ft_memcpy(st[1], "salopee", 7);
	st[0][7] = 0;
	st[1][7] = 0;

	s1 = memcpy(st[0], "salopee", 7);

	return (!(strncmp(st[0], st[1], 7)));
}

int test_strdup(void)
{
	char *str;
	char *str2;
	int ret;

	ret = 0;
	str =  strdup("ee");
	str2 = ft_strdup("ee");
	ret |= strcmp(str, str2);
	free(str);
	free(str2);
	str = 0;
	str2 = 0;
        str =  strdup("yo man");
        str2 = ft_strdup("yo man");
        ret |= strcmp(str, str2);
        free(str);
        free(str2);
        str = 0;
        str2 = 0;
        str =  strdup("");
        str2 = ft_strdup("");
        ret |= strcmp(str, str2);
        free(str);
        free(str2);
	return (!ret);
}

int test_strlen(void)
{
	char *coucou = "Salope";
	char *coucou2 = "";

	if (ft_strlen(coucou) != strlen("coucou") || ft_strlen(coucou2) != ft_strlen(coucou2)) //|| ft_strlen(0) != ft_strlen(0))
		return (0);
	return (1);
}

int test_strcat(void)
{
	char str[2][100];
	char *s1;
	char *s2;
	int ret;

	ret = 0;
	strcpy(str[0], "a string ");
	strcpy(str[1], "a string ");
	s1 = ft_strcat(str[0], "This is");
	s2 = strcat(str[1],    "This is");	
	ret |= (strcmp(str[0], str[1]) == 0 && strcmp(s1, s2) == 0);
	if (!ret)
		return (0);
	s1 = ft_strcat(str[0], "yo");
	s2 = strcat(str[1],    "yo");
	ret |= (strcmp(str[0], str[1]) == 0 && strcmp(s1, s2) == 0);

	return (ret);
}

int test_isalpha(void)
{
	unsigned int c = 0;

	while (c < strlen(str))
	{
		if (isalpha(str[c]) != ft_isalpha(str[c]))
			return (0);
		c++;
	}
	return (1);
}

int test_isdigit(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (isdigit(str[c]) != ft_isdigit(str[c]))
                        return (0);
                c++;
        }
        return (1);
}
int test_isalnum(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (isalnum(str[c]) != ft_isalnum(str[c]))
                        return (0);
                c++;
        }
        return (1);
}
int test_isascii(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (isascii(str[c]) != ft_isascii(str[c]))
                        return (0);
                c++;
        }
        return (1);
}

int test_isprint(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (isprint(str[c]) != ft_isprint(str[c]))
                        return (0);
                c++;
        }
        return (1);
}
int test_toupper(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (toupper(str[c]) != ft_toupper(str[c]))
                        return (0);
                c++;
        }
        return (1);
}
int test_tolower(void)
{
        unsigned int c = 0;

        while (c < strlen(str))
        {
                if (tolower(str[c]) != ft_tolower(str[c]))
                        return (0);
                c++;
        }
        return (1);
}
int test_puts(void)
{
	int ret[6];

	ret[0] = ft_puts("Coucouxxx\nx");
	ret[1] = ft_puts("");
	ret[2] = ft_puts(0);

        ret[3] = puts("Coucouxxx\nx");
        ret[4] = puts("");
        ret[5] = puts(0);

	printf("ft_puts : %d %d %d\n", ret[0], ret[1], ret[2]);
	printf("puts : %d %d %d\n", ret[3], ret[4], ret[5]);
	return (ret[0] == ret[3] && ret[1] == ret[4] && ret[2] == ret[5]);
}
