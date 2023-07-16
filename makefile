CC = clang15
File1 = rectangle.c
File2 = triangle.c
Out_File1 = -o build/rectangle
Out_File2 = -o build/triangle

LIBS1 = -I/usr/local/include -L/usr/local/lib
LDFLAGS = -lglut -lGL

BUILD_DIR := build

OPT1 = -O3 -fstack-protector-strong -flto -fslp-vectorize -fvectorize -pthread
OPT2 = -target x86_64-pc-freebsd13.2 -std=c2x -v

Compile1 = $(CC) $(File1) $(Out_File1) $(LIBS1) $(LIBS2) $(LDFLAGS) $(OPT1) $(OPT2)
Compile2 = $(CC) $(File2) $(Out_File2) $(LIBS1) $(LIBS2) $(LDFLAGS) $(OPT1) $(OPT2)

.PHONY: all check_dir

all: check_dir
	@echo "Compiling...."
	$(Compile1)
	$(Compile2)
	@echo "...."
	@echo "Success !"

check_dir:
	@if [ ! -d "$(BUILD_DIR)" ]; then mkdir -p $(BUILD_DIR); fi