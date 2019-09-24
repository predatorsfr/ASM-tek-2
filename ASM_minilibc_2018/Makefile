##
## EPITECH PROJECT, 2019
## makefile
## File description:
## makefile
##

NAME		=	libasm.so

SRCS		=	src/strlen.asm		\
				src/strcmp.asm		\
				src/strncmp.asm		\
				src/memcpy.asm		\
				src/memset.asm		\
				src/strchr.asm		\
				src/memmove.asm		\

ASMFLAGS	=	-f elf64

LDFLAGS		=	-shared

ASM		=	nasm

LD		=	gcc

RM		=	rm -f

OBJS		=	$(SRCS:.asm=.o)

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

all:		$(NAME)

$(NAME):	$(OBJS)
		ld $(LDFLAGS) -o $(NAME) $(OBJS)

clean:
		@$(RM) $(OBJS)

fclean:		clean
		@$(RM) $(NAME)

re:		fclean all

.PHONY:		all clean fclean re
