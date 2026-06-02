/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_d.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: egarlasc <egarlasc@student.42roma.it>      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/06/01 12:01:36 by egarlasc          #+#    #+#             */
/*   Updated: 2026/06/01 12:10:16 by egarlasc         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

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
	ft_putnbr_fd(n, 1);
	return (count_digits(n));
}
