CC = clang
ASM = nasm

OBJDIR = build
TARGET = subnetaddr
INCDIR = .

CCOPTS = -m64 -mavx -O3 -Wall -Wextra -c -save-temps=obj
LINKOPTS = -m64 -mavx
ASMOPTS = -f elf64 -g

C_SRC = $(wildcard *.c)
C_OBJ = $(C_SRC:.c=.o)

ASM_SRC = $(wildcard *.s)
ASM_OBJ = $(ASM_SRC:.s=.o)

.PHONY: clean

$(TARGET): $(C_OBJ) $(ASM_OBJ)
	$(CC) $(LINKOPTS) -o $@ $(addprefix $(OBJDIR)/, $^)

%.o: %.c
	mkdir -p $(OBJDIR)
	$(CC) $(CCOPTS) -o $(addprefix $(OBJDIR)/, $@) $<

%.o: %.s
	mkdir -p $(OBJDIR)
	$(ASM) $(ASMOPTS) -o $(addprefix $(OBJDIR)/, $@) $<

clean:
	rm -rf $(OBJDIR)
