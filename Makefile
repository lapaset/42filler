# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: llahti <llahti@student.hive.fi>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/06 13:50:29 by llahti            #+#    #+#              #
#    Updated: 2020/04/03 14:09:54 by llahti           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = llahti.filler
ODIR = objs
SDIR = srcs
INC = includes/
LIB = libft/libft.a
LIBDIR = libft
LIBINCDIR = libft/srcs/libft
_OBJS = $(_OBJS_STACKS) main.o
OBJS = $(patsubst %, $(ODIR)/%, $(_OBJS))
GREEN = \033[1;32m
EOC = \033[1;0m

all: $(NAME)

$(ODIR)/%.o: $(SDIR)/%.c $(INC)*
	@[ -d $(ODIR) ] || mkdir $(ODIR)
	@gcc -Wall -Wextra -Werror -c -I $(INC) -I $(LIBINCDIR) \
	-o $@ $<

$(NAME): $(OBJS)
	@make -C $(LIBDIR)
	@gcc -o $(NAME) $(OBJS) $(LIB)
	@echo "$(GREEN)Filler created$(EOC)"

clean:
	@rm -Rf -r $(ODIR)
	@echo "$(GREEN)Filler objects removed$(EOC)"
	@make -C $(LIBDIR) clean

fclean: clean
	@rm -Rf -r $(NAME)
	@echo "$(GREEN)Filler removed$(EOC)"
	@make -C $(LIBDIR) libclean

re: fclean all

.PHONY: all clean fclean re