NAME = libftprintf.a
AR = ar rc
RM = rm -f
CC = cc
CFLAGS = -Wall -Werror -Wextra

RESET = \033[0m
GREEN = \033[32m
YELLOW = \033[33m
BLUE = \033[34m

SRCS = ft_printf.c \
		ft_print_c.c \
		ft_print_s.c \
		ft_print_ptr.c \
		ft_print_d.c \
		ft_print_u.c \
		ft_print_x.c \
		ft_print_x_up.c

OBJS = $(SRCS:%.c=%.o)

all: $(NAME)

$(NAME): $(LIBFT) $(OBJS)
	cp $(LIBFT) $(NAME)
	$(AR) $(NAME) $(OBJS)
	@echo "$(GREEN)✓ $(NAME) creato con successo!$(RESET)

$(LIBFT):
	make -C $(LIBFT_DIR)

%.o: %.c ft_printf.h
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "$(BLUE)Compilato:$(reset) $<"

clean:
	$(RM) $(OBJS)
	make clean -C $(LIBFT_DIR)
	@echo "$(YELLOW)File oggetto rimossi.$(RESET)"

fclean: clean
	$(RM) $(NAME)
	make fclean -C $(LIBFT_DIR)
	@echo "$(YELLOW)Eseguibile $(NAME) rimosso.$(RESET)

re: fclean all

.PHONY: all clean fclean re
