BIN = play
CC = clang++
FLAGS = -Wall 
LOC_LIB = -lGLEW -lglfw
FRAMEWORKS = -framework Cocoa -framework OpenGL -framework IOKit
SRC = main.cpp

all: shader
	${CC} ${FLAGS} ${FRAMEWORKS} ../opengl-tools/shader.o  -o ${BIN} ${SRC} ${LOC_LIB}
shader:
	${CC} ${FLAGS} -c -o ../opengl-tools/shader.o ../opengl-tools/shader.cpp 

