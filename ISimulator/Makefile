# CC=g++
# CFLAGS=-Iinclude
# BUILD_PATH=build
# SRC_PATH=src
# TARGET=ISimulator
# OBJS=Read_Elf Simulation

# all: $(BUILD_PATH)/$(TARGET)

# $(BUILD_PATH)/$(TARGET): $(SRC_PATH)/$(OBJS).cpp
# 	$(CC) $(CFLAGS) -o $(BUILD_PATH)/$(TARGET) $(SRC_PATH)/$(OBJS).cpp

# # $(BUILD_PATH)/%.o: $(SRC_PATH)/%.cpp
# # 	$(CC) $(CFLAGS) -c -o $@ $<

# .PHONY: clean
# clean: 
# 	$(RM) $(BUILD_PATH)/*.o $(BUILD_PATH)/$(TARGET) *~ core

all: src/*.cpp
	g++ -Iinclude -I../CSimulator/include -o build/ISimulator src/*.cpp ../CSimulator/src/cache.cpp

