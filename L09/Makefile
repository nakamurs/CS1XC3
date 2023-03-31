#variables
CC = gcc
CFLAGS = -Wall
BUILD_DIR = build
SRC_DIR = src
DOCS_DIR = documentation/docs

default: $(BUILD_DIR)/main

$(BUILD_DIR):
	mkdir -p $@

$(DOCS_DIR):
	mkdir -p $@

$(BUILD_DIR)/student.o : $(SRC_DIR)/student.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $^ -o $@

$(BUILD_DIR)/course.o : $(SRC_DIR)/course.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $^ -o $@

Doxyfile :
	doxygen -g $@

docs : | Doxyfile
	doxygen Doxyfile

$(BUILD_DIR)/main : $(SRC_DIR)/main.c $(BUILD_DIR)/student.o $(BUILD_DIR)/course.o docs | $(DOCS_DIR)
	$(CC) $(CFLAGS) $(SRC_DIR)/main.c $(BUILD_DIR)/student.o $(BUILD_DIR)/course.o -o $@

clean :
	rm -rf $(BUILD_DIR)
