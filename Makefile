CXX = g++
CXXFLAGS = -Wall -O2
LDFLAGS = -lsndfile
INCLUDES = -I/usr/local/Cellar/libsndfile/1.0.25/include/ 
LIBS = -L/usr/local/Cellar/libsndfile/1.0.25/lib/
SRCS = $(wildcard *.cc)
OBJS := $(SRCS:.cc=.o) 
TARGET = test

.PHONY: all clean
.SUFFIXES: .c .cc .o


$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $(INCLUDES) $(LIBS) $(LDFLAGS) -o $@ $^

.cc.o:
	$(CXX) $(CXXFLAGS) $(INCLUDES) -o $@ -c $<


all: $(TARGET)

clean: 
	$(RM) $(TARGET) $(OBJS)

