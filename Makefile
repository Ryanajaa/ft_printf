# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jarunota <jarunota@student.42bangkok.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/05/09 15:13:43 by jarunota          #+#    #+#              #
#    Updated: 2024/05/09 15:13:43 by jarunota         ###   ########.fr        #
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
OBJS_DIR = obj
SRCS_DIR = src

# Define colors
DEFAULT_COLOR 	= \033[0;39m
RED 			= \033[0;91m
GREEN 			= \033[0;92m
YELLOW 			= \033[0;93m

# Source and object file lists
SRCS_FILE =	ft_printf \
			c_str \
			nbr_unbr \
			ptr_hex \

SRCS = ${addprefix ${SRCS_DIR}/, ${addsuffix .c, ${SRCS_FILE}}}
OBJS = ${addprefix ${OBJS_DIR}/, ${addsuffix .o, ${SRCS_FILE}}}

# Build rules

${NAME}: ${OBJS}
	@ ${AR} ${NAME} ${OBJS}
	@ echo "${GREEN}Updated libftprintf.a${DEFAULT_COLOR}"
	@ echo "${GREEN}Compiled libftprintf.a successfully!${DEFAULT_COLOR}"

${OBJS_DIR}/%.o: ${SRCS_DIR}/%.c | ${OBJS_DIR}
	@ echo "${YELLOW}Compiling: $<${DEFAULT_COLOR}"
	@ ${CC} ${CFLAGS} ${INC_DIR} -c $< -o $@
	@ echo "${GREEN}Created object files successfully${DEFAULT_COLOR}"
	@ echo ""

${OBJS_DIR}:
	@ mkdir -p ${OBJS_DIR}

all: ${NAME}

clean:
	@ ${RM} -rf ${OBJS_DIR}
	@ echo "${RED}Removed object files${DEFAULT_COLOR}"

fclean: clean
	@ ${RM} ${NAME}
	@ echo "${RED}Removed 'libftprintf.a' successfully${DEFAULT_COLOR}"
	@ echo ""

re: fclean all

.PHONY: re fclean clean all




