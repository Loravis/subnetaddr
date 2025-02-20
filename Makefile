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

$(C_OBJ): $(C_SRC)
	mkdir -p $(OBJDIR)
	$(CC) -I $(INCDIR) $(CCOPTS) -o $(OBJDIR)/$@ $^

%.o: %.s
	$(ASM) $(ASMOPTS) -o $(addprefix $(OBJDIR)/, $@) $<

clean:
	rm -rf $(OBJDIR)
