##
## EPITECH PROJECT, 2022
## Makefile
## File description:
## Makefile
##

SRC =    src/test.c

MAIN =    src/main.c

OBJ =	 $(SRC:.c=.o) \
         $(MAIN:.c=.o)

NAME =	   project
INC = 	 include/

CC =	 gcc
CFLAGS =	 -Wall -Wextra -Wpedantic
CPPFLAGS = -I include/

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) -o $(NAME) $(OBJ)

clean:
	$(RM) $(OBJ)
	$(RM) .gcda
	$(RM) .gcno

fclean:	clean
	$(RM) $(NAME)
	$(RM) *.o

re:    fclean all
