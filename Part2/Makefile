ASM=nasm
SRC_DIR=src
BUILD_DIR=build

.PHONY: all
all: $(BUILD_DIR)/main_floppy.img
	@true

$(BUILD_DIR)/main_floppy.img: $(BUILD_DIR)/main.bin
	@$(info doing [$@])
	@cp $(BUILD_DIR)/main.bin $(BUILD_DIR)/main_floppy.img
	@truncate -s 1440k $(BUILD_DIR)/main_floppy.img

$(BUILD_DIR)/main.bin: $(SRC_DIR)/main.asm
	@$(info doing [$@])
	@mkdir -p build
	@$(ASM) $(SRC_DIR)/main.asm -f bin -o $(BUILD_DIR)/main.bin

.PHONY: clean
clean:
	@$(info doing [$@])
	@rm -rf build
