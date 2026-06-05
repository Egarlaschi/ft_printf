NAME        = libftprintf.a
AR          = ar rcs
RM          = rm -f
CC          = cc
CFLAGS      = -Wall -Werror -Wextra -I. -I$(LIBFT_DIR)

LIBFT_DIR   = ./libft
LIBFT       = $(LIBFT_DIR)/libft.a

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

$(NAME): $(LIBFT) $(OBJS)
	@cp $(LIBFT) $(NAME)
	@$(AR) $(NAME) $(OBJS)
	@printf "$(GREEN)✓ %s creato con successo!$(RESET)\n" "$(NAME)"

$(LIBFT):
	@make -C $(LIBFT_DIR)

%.o: %.c ft_printf.h
	@$(CC) $(CFLAGS) -c $< -o $@
	@printf "$(BLUE)Compilato:$(RESET) %s\n" "$<"

clean:
	@$(RM) $(OBJS)
	@make clean -C $(LIBFT_DIR)
	@printf "$(YELLOW)File oggetto di ft_printf rimossi.$(RESET)\n"

fclean: clean
	@$(RM) $(NAME)
	@make fclean -C $(LIBFT_DIR)
	@printf "$(YELLOW)Eseguibile %s rimosso.$(RESET)\n" "$(NAME)"

re: fclean all

.PHONY: all clean fclean re
