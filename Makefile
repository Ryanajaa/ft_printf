# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: jarunota <jarunota@student.42bangkok.co    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/23 22:17:24 by jarunota          #+#    #+#              #
#    Updated: 2023/12/23 22:17:24 by jarunota         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME 	= ft_printf.a

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




