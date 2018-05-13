#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

int main()
{
	int fd;
	char buffer[500];

	read(0, buffer, 0);
	return (1);
}	
