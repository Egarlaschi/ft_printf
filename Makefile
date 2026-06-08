NAME        = libftprintf.a
AR          = ar rcs
RM          = rm -f
CC          = cc
CFLAGS      = -Wall -Werror -Wextra -I.

RESET       = \033[0m
GREEN       = \033[32m
YELLOW      = \033[33m
BLUE        = \033[34m

SRCS        = ft_printf.c \
              ft_print_c.c \
              ft_print_s.c \
              ft_print_ptr.c \
              ft_print_d.c \
              ft_print_u.c \
              ft_print_x.c \
              ft_print_x_up.c

OBJS        = $(SRCS:%.c=%.o)

all: $(NAME)

$(NAME): $(OBJS)
	@$(AR) $(NAME) $(OBJS)
	@printf "$(GREEN)▐▘▗       ▘  ▗ ▐▘$(RESET)\n"
	@printf "$(GREEN)▜▘▜▘  ▛▌▛▘▌▛▌▜▘▜▘$(RESET)\n"
	@printf "$(GREEN)▐ ▐▖▄▖▙▌▌ ▌▌▌▐▖▐ $(RESET)\n"
	@printf "$(GREEN)      ▌          $(RESET)\n"
	@printf "$(GREEN)✓ %s creato con successo!$(RESET)\n" "$(NAME)"

$(LIBFT):
	@make -C $(LIBFT_DIR)

%.o: %.c ft_printf.h
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "$(BLUE)Compilato:$(RESET) %s\n" "$<"

clean:
	@$(RM) $(OBJS)
	@printf "$(YELLOW)File oggetto di ft_printf rimossi.$(RESET)\n"

fclean: clean
	@$(RM) $(NAME)
	@printf "$(YELLOW)Eseguibile %s rimosso.$(RESET)\n" "$(NAME)"

re: fclean all

.PHONY: all clean fclean re
