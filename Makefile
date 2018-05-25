# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: alhelson <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/05/25 07:05:31 by alhelson          #+#    #+#              #
#    Updated: 2018/05/25 07:05:35 by alhelson         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC=nasm -f macho64
CFLAGS = -Wall -Werror
NAME=libfts.a
SRC_PATH=srcs
OBJ_PATH=srcs
INC_PATH=includes
INC=$(INC_PATH)/libft_asm.h

SRC_M_LIBFT_PATH=libft

#################################################
### COLOR
##################################################

COL_BLACK		= \033[1;30m
COL_RED			= \033[1;31m
COL_GREEN		= \033[1;32m
COL_YELLOW		= \033[1;33m
COL_BLUE		= \033[1;34m
COL_PURPLE		= \033[1;35m
COL_WHITE		= \033[1;37m

#################################################
### SOURCES
##################################################

SRC_M_LIBFT = ft_bzero.s   ft_isalnum.s ft_isascii.s ft_isprint.s ft_memset.s  ft_strcat.s  ft_strdup.s  ft_tolower.s\
ft_cat.s     ft_isalpha.s ft_isdigit.s ft_memcpy.s  ft_puts.s    ft_strcpy.s  ft_strlen.s  ft_toupper.s ft_min_max.s\
ft_strreplace.s ft_strchr.s sum_uint_tab.s moy_uint_tab.s

#################################################
### OBJECT
##################################################

OBJ_M_LIBFT=$(patsubst %.s, %.o, $(SRC_M_LIBFT))

#################################################
### FORMAT PATH
##################################################

SRC_M_L=$(addprefix ./$(SRC_M_LIBFT_PATH)/, $(SRC_M_LIBFT))

OBJ_M_L=$(addprefix ./$(OBJ_PATH)/, $(OBJ_M_LIBFT))

#################################################
### RULES
##################################################

.phony: all clean fclean re

all: $(NAME)

$(NAME): $(OBJ_M_L)
	@echo "$(COL_GREEN)COMPILATION DONE"
	@ar rc $(NAME) $(OBJ_M_L)

$(OBJ_M_L): $(OBJ_PATH)%.o : $(SRC_PATH)/$(SRC_M_LIBFT_PATH)%.s include/libft_asm.h
	@echo "$(COL_BLUE)[ COMPILE & ASSEMBLE STEPS : LIB ORI BITCH ] \n"
	@$(CC) $(CFLAGS) $< -o $@ -I $(INC_PATH)

clean:
	@echo "$(COL_YELLOW)[ CLEAN DIRECTORY ]\n"
	@rm -f $(OBJ_M_L)

fclean: clean
	@echo "$(COL_YELLOW)[ CLEAN DIRECTORY AND $(NAME) ]\n"
	rm -f $(NAME)

re: fclean all
