#include <stdio.h>
#include "libft_asm.h"
#include <string.h>
#include <stdlib.h>
#include <strings.h>
#include <fcntl.h>
#include <ctype.h>

/* 
** first part bitch
*/

int test_bzero();
int test_strcat();
int test_isalpha();
int test_isdigit();
int test_isalnum();
int test_isascii();
int test_isprint();
int test_toupper();
int test_tolower();
int test_puts();

int test_strlen();


int test_memset();
int test_memcpy();
int test_strdup();

int test_min_max();

char *str = "QWERTasdsfdgdfjk64+--+/*-+YUIOPOKJHGFDSXC BNLM:{P{()*&^%$#";

int test_sum_uint_tab();

int main()
{
	/*printf("---> %d\n", test_puts());
	printf("Test is alpha : %d\n", test_isalpha());
	printf("Test is digit : %d\n", test_isdigit());
	printf("Test is alnum : %d\n", test_isalnum());
	printf("Test is ascii : %d\n", test_isascii());
	printf("Test is print : %d\n", test_isprint());
	printf("Test is toupper : %d\n", test_toupper());
	printf("Test is tolower : %d\n", test_tolower());
	printf("Test bzero : %d\n", test_bzero());
	printf("Tets ft_strlen : %d\n", test_strlen());
	printf("Test ft_memset : %d\n", test_memset());
	printf("Test ft_memcpy : %d\n", test_memcpy());*/
	//printf("Test strdup : %d\n", test_strdup());
	//printf("Test min max : %d\n", test_min_max());
/*
	char *test; test = malloc(100); ft_strcpy(test, "Testouille");
	printf("---> %s | %p\n", test, test);
	
	//ft_strreplace(test, 's', 'S');
	char *test2;
	test2 = ft_strchr(test, '8');

	printf("--> %s | %s | %p\n", test, test2, test);
*/
	test_sum_uint_tab();
	return (0);
}

int test_sum_uint_tab()
{
	unsigned int tab[10];
	unsigned int c = 0;

	// 1 + 2 + 3 
	while (c < 10)
	{
		tab[c] = c + 1;
		c++;
	}
	printf("---> sum : %u\n", sum_uint_tab(tab, 10));
	return (1);
}

int test_min_max()
{
	printf("%d < %d\n", ft_min(-100, 200), ft_max(-100, 200));
	//return (ft_min(50, 10) < ft_max(50, 10) &&
	return (ft_min(-100, 200) < ft_max(-100, 200));
}

//void *memset(void *b, int c, size_t len);
int test_memset()
{
	char st[2][100];

	char *s1;
	char *s2;

	s1 = memset(st[0], '*', 90);
	s2 = ft_memset(st[1], '*', 90);

	//memset(0, 0, 100);
	return (!(strncmp(s1, s2, 90)));
}
int test_memcpy()
{
	char st[2][100];
	char rouf[] = "Miaou miaou miaou dsg fdd sad ghg fdx vb gfx o";

	char *s1;
	char *s2;

	s1 = memcpy(st[0], "salopee", 7);
	s2 = ft_memcpy(st[1], "salopee", 7);
	st[0][7] = 0;
	st[1][7] = 0;

	printf("s1 --> %s\n", st[0]);
	printf("s2 --> %s\n", st[1]);

	s1 = memcpy(st[0], "salopee", 7);

	return (!(strncmp(st[0], st[1], 7)));
}

int test_strdup()
{
	char *str;
	char *str2;

	//str = ft_strdup("coucou toi :)\n");
	str2 = ft_strdup("va te faire enculer pd\n");

	//printf("---> %s - %s\n", str, str2);
	printf("--->%s|%d|%d|%p\n", str2, str2[0], str2[0], str2);
	free(str);
	free(str2);
	return (1);
}

int test_bzero()
{
/*
	char test[10];
	char *test2 = "coucou toi :)";
	int ret;

	ret = ft_bzero(test2, 10);*/
	return (1);
}


int test_strlen()
{
	char *coucou = "Salope";
	char *coucou2 = "";

	if (ft_strlen(coucou) != strlen("coucou") || ft_strlen(coucou2) != ft_strlen(coucou2))
		return (0);
	//ft_strlen(0);
	//strlen(0);
	return (1);
}

int test_strcat()
{
	char str[2][100];
	
	char *str2 = "Salope";

	strcpy(str[0], "");
	strcpy(str[1], "");

        ft_strcat(str[0], str2);
        strcat(str[1], str2);
	ft_strcat(str[0], str2);
	strcat(str[1], str2);	
	printf("%s", str[0]);
	printf(" | %s\n", str[1]);
	if (strcmp(str[0], str[1]))
		return (0);
	

	return (1);
}

int test_isalpha()
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

int test_isdigit()
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
int test_isalnum()
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
int test_isascii()
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
#include <ctype.h>
int test_isprint()
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
int test_toupper()
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
int test_tolower()
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
	int ret[10];

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

/*
void test_cat(char *str)
{
	//ft_cat(-1000);
	int fd;

	//fd = open(str, O_RDONLY);
	//printf("----> %d\n", fd);
	fd = ft_cat(1000);
	//printf("----> %d\n", fd);
}
*/
/*
void test_strdup()
{
	char *test = "Salope.\0";
	char *test_dup;

	test_dup = ft_strdup(test);
	//ft_strcpy(test_dup, test);
	printf("---> %p|%p\n", test_dup, test);
	printf("---> %s\n", test_dup);
}
*/
/*
void test_memcpy()
{
	int c;
	void *o;
	void *test;

	test = malloc(100);
	//o = ft_memset(test, 10, 10);
	o = memcpy(test, 0, 4);
	c = 0;
	printf("---> %s\n", o);
}
*/
/*
void test_memset()
{
	//char *coucou = "Salope des montagnes ...";
	int c;
	void *o;
	void *test;

	test = malloc(100);
	o = ft_memset(test, 10, 10);
	c = 0;
	while (c  < 100)
	{
		printf("%d | ", *(unsigned char *)(&o[c]));
		c++;
	}
}*/
/*
void test_strcpy()
{
	char *test;
	int c;

	c = 0;
	test = malloc(100);
	while (c < 100)
	{
		test[c] = 0;
		c++;
	}
	printf("-%p\n", test);
	ft_strcpy(test, "RORrfjkdfgjpsfdjpjhjt");
	printf("-%p\n", test);
	printf("---> %s\n", test);
	return ;
}


void test_strcat()
{
	char *str = "Coucou";
	char *str2;
	int c = 0;

	str2 = malloc(100);
	printf("----> %p | %p\n", str, str2);
	while (c < 100)
	{
		str2[c] = 0;
		c++;
	}
	str2 = ft_strcpy(str2, "Test : \0");
	printf("---> %s\n", str2);
	ft_strcat(str2, "Salope.\0");
	printf("---> %s\n", str2);
	//str = 
	//printf("----> %p | %p\n", str, str2);
	//str2 = ft_strcat(str2, "salope\0");
	//printf("--> %c\n", str[0]);
}
*/
