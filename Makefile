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

SRCS = ft_printf.c \
				c_str.c \
				nbr_unbr.c \
				ptr_hex.c \

OBJS= ${SRCS:.c=.o}

FLAGS = -Wall -Wextra -Werror

all: ${NAME}

%.o: %.c ${HEADER}
	cc ${FLAGS} -c $< -o $@

${NAME}: ${OBJS}
	ar -rc ${NAME} ${OBJS}

clean:
	rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

.PHONY: re fclean clean all .c.o




