# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marvin <marvin@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/22 22:52:56 by marvin            #+#    #+#              #
#    Updated: 2023/12/22 22:52:56 by marvin           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= libftprintf.a
HEADER 	= ft_printf.h

#Define variables
CC 		= cc
CFLAGS	= -Wall -Wextra -Werror
AR		= ar rcs
RM		= rm -f
INC_DIR	= -I.

# Define colors
DEFAULT_COLOR = \033[0;39m
RED = \033[0;91m
GREEN = \033[0;92m
YELLOW = \033[0;93m

# Source and object file lists
SRCS_FILE =	ft_printf \
			c_str \
			nbr_unbr \
			ptr_hex \

SRCS = ${addsuffix .c, ${SRCS_FILE}}
OBJS = ${addsuffix .o, ${SRCS_FILE}}

# Build rules

${NAME}: ${OBJS}
	@ ${AR} ${NAME} ${OBJS}
	@ echo "${GREEN}Updated libftprintf.a${DEFAULT_COLOR}"
	@ echo "${GREEN}Compiled libftprintf.a successfully!${DEFAULT_COLOR}"

%.o: %.c
	@ echo "${YELLOW}Compiling: $<${DEFAULT_COLOR}"
	@ ${CC} ${CFLAGS} ${INC_DIR} -c $< -o $@
	@ echo "${GREEN}Created object files successfully${DEFAULT_COLOR}"

all: ${NAME}

clean:
	@ ${RM} -rf ${OBJS}
	@ echo "${RED}Removed object files${DEFAULT_COLOR}"

fclean: clean
	@ ${RM} ${NAME}
	@ echo "${RED}Removed 'libftprintf.a' successfully${DEFAULT_COLOR}"

re: fclean all

.PHONY: re fclean clean all




