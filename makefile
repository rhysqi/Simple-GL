CC = clang15
Main_File = *.c -o
Out_File = build/Program

LIBS1 = -I/usr/local/include -L/usr/local/lib
LDFLAGS = -lglut -lGL

BUILD_DIR := build

OPT1 = -O3 -fstack-protector-strong -flto -fslp-vectorize -fvectorize -pthread
OPT2 = -target x86_64-pc-freebsd13.2 -std=c2x -v

Compile = $(CC) $(Main_File) $(Out_File) $(LIBS1) $(LIBS2) $(LDFLAGS) $(OPT1) $(OPT2)

.PHONY: all check_dir

all: check_dir
	@echo "Compiling...."
	$(Compile)
	@echo "...."
	@echo "Success !"

check_dir:
	@if [ ! -d "$(BUILD_DIR)" ]; then mkdir -p $(BUILD_DIR); fi