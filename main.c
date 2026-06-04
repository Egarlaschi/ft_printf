#include "ft_printf.h"

int	main (void)
{
	char	*str;
	int		ciao;

	str = "aloha";
	ciao = 42;

	ft_printf("%s come va? %d\n%p", str, ciao, str);
	return (0);
}
