/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gmacias- <gmacias-@student.42barcel>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/04/25 16:27:54 by gmacias-          #+#    #+#             */
/*   Updated: 2022/04/25 18:36:30 by gmacias-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

t_mini	*client_initiate(void)
{
	t_mini	*talk;

	talk = malloc(sizeof(t_mini));
	if (!talk)
	{
		ft_putstr("ERROR!, malloc failed :( !\n");
		exit(EXIT_FAILURE);
	}
	talk->pid_server = 0;
	talk->pid_client = 0;
	return (talk);
}

void	client_send(t_mini *talk, char *message)
{
	int	bit_displacement;
	int	i;
	int	signal;

	i = -1;
	while (++i <= ft_strlen(message))
	{
		bit_displacement = -1;
		signal = 0;
		while (++bit_displacement < 7)
		{
			if ((message[i] >> bit_displacement) & 1)
			{
				signal = SIGUSR2;
			}
			else
				signal = SIGUSR1;
			kill(talk->pid_server, signal);
			usleep(200);
		}
	}
	return ;
}

int	main(int nword, char *arguments[])
{
	t_mini	*talk;

	talk = NULL;
	if (nword != 3)
	{
		ft_putstr("ERROR!, Use \"./server\" with 3 argument please :)\n");
		exit(EXIT_FAILURE);
	}
	else
	{
		talk = client_initiate();
		talk->pid_server = ft_atoi(arguments[1]);
		if (talk->pid_server <= 0)
		{
			ft_putstr("ERROR!, PID is equal or less than 0 x-x!\n");
			free(talk);
			exit(EXIT_FAILURE);
		}
		client_send(talk, arguments[2]);
	}
	free(talk);
	return (EXIT_SUCCESS);
}
