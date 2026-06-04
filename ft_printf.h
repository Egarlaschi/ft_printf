/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: egarlasc <egarlasc@student.42roma.it>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/06/04 10:12:40 by egarlasc          #+#    #+#             */
/*   Updated: 2026/06/04 10:21:45 by egarlasc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

#include <stdarg.h>
#include <unistd.h>
#include "libft/libft.h"

int	ft_printf(const char *str, ...);
int	ft_print_x_up(unisgned long nbr);
int	ft_print_x(unisgned long nbr);
int	ft_print_u(unsigned int n);
int	ft_print_s(char *s);
int	ft_print_ptr(void *ptr);
int	ft_print_d(int n);
int	ft_print_c(int n);

#endif
