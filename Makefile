CC				=	 	gcc
FLAGS			=		-Wextra -Werror -Wall
RM				=		rm -f

NAME_SERVER     =		server
SERVER_SRC      =       server.c
SERVER_OBJ      =       $(SERVER_SRC:.c=.o)

NAME_CLIENT		=		client
CLIENT_SRC      =       client.c
CLIENT_OBJ      =       $(CLIENT_SRC:.c=.o)

UTILS_SRC       =       utils.c
UTILS_OBJ       =       $(UTILS_SRC:.c=.o)

all: 		$(NAME_SERVER) $(NAME_CLIENT)

$(NAME_SERVER):	$(SERVER_OBJ) $(UTILS_OBJ)
	@echo "Preparing $(NAME_SERVER)...:"
	$(CC) $(FLAGS) $(SERVER_SRC) $(UTILS_SRC) -o $(NAME_SERVER)
	@echo "$(NAME_SERVER) created :)!"
	
$(NAME_CLIENT):	$(CLIENT_OBJ) $(UTILS_OBJ)
	@echo "Preparing $(NAME_CLIENT)...:"
	$(CC) $(FLAGS) $(CLIENT_SRC) $(UTILS_SRC) -o $(NAME_CLIENT)
	@echo "$(NAME_CLIENT) created :)!"
	
clean:
	@echo "Removing files ***.o:"
	$(RM) $(SERVER_OBJ) $(CLIENT_OBJ) $(UTILS_OBJ)
	@echo "Done :D!"
fclean: clean
	@echo "Removing execute files:"
	$(RM) $(NAME_SERVER) $(NAME_CLIENT)
	@echo ":Done :D!"
re: fclean all

.PHONY:		all clean fclean re
