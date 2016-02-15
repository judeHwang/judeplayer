CC = g++
OBJS = test.o ./3rdparty/FileUtils.o
TARGET = test

.SUFFIXES:.cpp .o

IFLAGS = #-I./3rdparty/FileUtils.h

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS) $(IFLAGS)
clean:
	rm -f $(OBJS) $(TARGET)
