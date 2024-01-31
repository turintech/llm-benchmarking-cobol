# Makefile to compile COBOL programs

# Compiler
COBC := cobc

# Compiler flags
# -x for generating executable
COBFLAGS := -x

# Source files directory
SRC_DIR := src

# Build directory for output
BUILD_DIR := build

# Source file extension
SRC_EXT := .cob

# Target programs (list your program names without extension)
TARGETS := maxarray summodulus sumrange

# Default target
all: $(TARGETS)

# Rule for building each target
$(TARGETS):
	$(COBC) $(COBFLAGS) $(SRC_DIR)/control/single/$@$(SRC_EXT) -o $(BUILD_DIR)/$@

# Create build directory if it doesn't exist
$(shell mkdir -p $(BUILD_DIR))

# Clean build artifacts
clean:
	rm -f $(BUILD_DIR)/*