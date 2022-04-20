cc		= 	gcc
FLAGS		=	-Wextra -Werror -Wall
RM		=	rm -f

SERVER_SRC      =       server.c
SERVER_OBJ      =       $(SERVER_SRC:.c=.o)

CLIENT_SRC      =       client.c
CLIENT_OBJ      =       $(CLIENT_SRC:.c=.o)

UTILS_SRC       =       utils.c
UTILS_OBJ       =       $(UTILS_SRC:.c=.o)

all: 		$(SERVER) $(CLIENT)
$(SERVER):	$(SERVER_OBJ) $(UTTIL_OBJ)
$(CLIENT):	$(CLIENT_OBJ) $(UTTIL_OBJ)

clean:

fclean:

re:

.PHONY:		(all clean fclean re)??
