#include "minitalk.h"

int	ft_strlen(char *str)
{
	int	len;
	
	len = 0;
	while (str[len] != '\0')
		len++;
	return (len);
}

int	ft_atoi(char *str)
{
	int	num;
	int	neg;
	
	num = 0;
	neg = 1;
	while (*str == ' ' || *str == '\t' || *str == '\n' || *str == '\v' || *str == '\f' || *str == '\r')
		str++;
	if (*str == '-' || *str == '+')
	{
		if (*str == '-')
			neg = -1;
		str++;
	}
	while (*str >= '0' || *str <= '9')
	{
		num = (num * 10) + (*str - '0');
		str++;
	}
	return (neg * num);
}
