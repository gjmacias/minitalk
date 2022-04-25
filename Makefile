CC		= 	gcc
FLAGS		=	-Wextra -Werror -Wall
RM		=	rm -f

NAME_SERVER     =	server
SERVER_SRC      =       server.c
SERVER_OBJ      =       $(SERVER_SRC:.c=.o)

NAME_CLIENT	=	client
CLIENT_SRC      =       client.c
CLIENT_OBJ      =       $(CLIENT_SRC:.c=.o)

UTILS_SRC       =       utils.c
UTILS_OBJ       =       $(UTILS_SRC:.c=.o)

all: 		$(SERVER) $(CLIENT)

$(SERVER):	$(SERVER_OBJ) $(UTTIL_OBJ)
	@echo "Preparing $(SERVER)...:"
	$(CC) $(FLAGS) $(SERVER_SRC) $(UTIL_SRC) -o $(SERVER)
	@echo "$(SERVER) created :)!"
	
$(CLIENT):	$(CLIENT_OBJ) $(UTTIL_OBJ)
	@echo "Preparing $(CLIENT)...:"
	$(CC) $(FLAGS) $(CLIENT_SRC) $(UTIL_SRC) -o $(CLIENT)
	@echo "$(CLIENT) created :)!"
	
clean:
	@echo "Removing files ***.o:"
	$(RM) $(SERVER_OBJ) $(CLIENT_OBJ) $(UTILS_OBJ)
	@echo "Done :D!"
fclean: clean
	@echo "Removing execute files:"
	$(RM) $(SERVER) $(CLIENT)
	@echo ":Done :D!"
re: fclean all

.PHONY:		all clean fclean re
