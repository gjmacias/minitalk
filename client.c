#include "minitalk.h"

t_mini	*client_initiate(void)
{
	t_mini	*talk;
	
	talk = malloc(sizeof(mini));
	if (!talk)
	{
		ft_putstr("ERROR!, malloc failed :\( !\n");
		exit(EXIT_FAILURE);
	}
	talk->pid_server = 0;
	talk->pid_client = 0;
	return (talk);
}

void	client_send(t_mini *talk, char *message)
{

	}
	return ;
}

int	main(int nword, char *arguments[])
{
	t_mini	*talk;
	
	talk = NULL;
	if (nword != 3)
	{
		ft_putstr("ERROR!, Use \"./server\" with 3 argument please :\)\n");
		exit(EXIT_FAILURE);
	}
	else
	{
		talk = client_initiate();
		talk->pid_client = getpid();
	}
	
	free(talk);
	return (EXIT_SUCCESS);
}
