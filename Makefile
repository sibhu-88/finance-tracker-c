CC      = cc
CFLAGS  = -std=c99 -Wall -Wextra -Wpedantic -g
LDFLAGS =

SRC_DIR = src
OBJ_DIR = build
BIN     = bin/finance

SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(patsubst $(SRC_DIR)/%.c,$(OBJ_DIR)/%.o,$(SRCS))

.PHONY: all run clean

all: $(BIN)

$(BIN): $(OBJS)
	@mkdir -p bin
	$(CC) $(OBJS) -o $@ $(LDFLAGS)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c $(SRC_DIR)/finance.h
	@mkdir -p $(OBJ_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

run: $(BIN)
	./$(BIN)

clean:
	rm -rf $(OBJ_DIR) bin