CC=g++
RM=rm -f
#CPPFLAGS=-g $(shell root-config --cflags)
#LDFLAGS=-g $(shell root-config --ldflags)
#LDLIBS=$(shell root-config --libs)

VPATH=../src:test
SRCS=sum.cpp sum_test.cpp main.cpp
OBJS=$(subst .cpp,.o,$(SRCS))

all: sumtest

sumtest: $(OBJS)
	$(CC) $(LFFLAGS) -pthread -o sumtest $(OBJS) /usr/local/lib/gtest/libgtest.a /usr/local/lib/gtest/libgtest_main.a

sum.o: src/sum.h src/sum.cpp
	$(CC) -c src/sum.cpp

sum_test.o: src/sum.h test/sum_test.cpp
	$(CC) -c test/sum_test.cpp

main.o: test/main.cpp
	$(CC) -c test/main.cpp

clean:
	$(RM) $(OBJS)

