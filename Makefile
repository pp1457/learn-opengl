BIN = play
CC = clang++
FLAGS = -Wall 
LOC_LIB = -lGLEW -lglfw
FRAMEWORKS = -framework Cocoa -framework OpenGL -framework IOKit
SRC = main.cpp

all: shader
	${CC} ${FLAGS} ${FRAMEWORKS} ../tools/shader.o -o ${BIN} ${SRC} ${LOC_LIB}
shader:
	${CC} ${FLAGS} -c -o ../tools/shader.o ../tools/shader.cpp 

