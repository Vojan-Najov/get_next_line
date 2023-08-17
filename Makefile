# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccartman <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/04/26 18:59:23 by ccartman          #+#    #+#              #
#    Updated: 2021/05/03 20:14:21 by ccartman         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= get_next_line.a
NAME_BONUS	= get_next_line_many_fd.a

SRCS = ./src/get_next_line.c ./src/get_next_line_utils.c

SRCS_BONUS = ./src/get_next_line_bonus.c ./src/get_next_line_utils_bonus.c

OBJS	= $(SRCS:.c=.o)

OBJS_BONUS = $(SRCS_BONUS:.c=.o)

FLAGS	= -Wall -Wextra -Werror -I./include

$(NAME) : $(OBJS)
	ar rcs $(NAME) $?

bonus : $(OBJS_BONUS)
	ar rcs $(NAME_BONUS) $?

.c.o :
	gcc $(FLAGS) -c $< -o $@

all : $(NAME)

clean :
	rm -f $(OBJS)
	rm -f $(OBJS_BONUS)

fclean : clean
	rm -f $(NAME)
	rm -f $(NAME_BONUS)

re : fclean all

.PHONY : all clean fclean re bonus

