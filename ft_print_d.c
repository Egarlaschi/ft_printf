/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_d.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: egarlasc <egarlasc@student.42roma.it>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/06/01 12:01:36 by egarlasc          #+#    #+#             */
/*   Updated: 2026/06/08 14:18:44 by egarlasc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

static int	count_digits(long int n)
{
	int	digits;

	digits = 0;
	if (n == 0)
		return (1);
	if (n < 0)
	{
		n *= -1;
		digits++;
	}
	while (n)
	{
		n /= 10;
		digits++;
	}
	return (digits);
}

int	ft_print_d(int n)
{
	long	nb;
	char	c;

	nb = n;
	if (nb < 0)
	{
		nb = -nb;
		write(1, "-", 1);
	}
	if (nb > 9)
		ft_print_d(nb / 10);
	c = (nb % 10) + '0';
	write(1, &c, 1);
	return (count_digits(n));
}
