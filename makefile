
SDL_CFLAGS = `sdl-config --cflags`
SDL_LIBS = `sdl-config --libs`

DEFINES = -DSYS_LITTLE_ENDIAN -DBYPASS_PROTECTION -DDINGUX -march=armv5te

CXX = arm-linux-g++
CXXFLAGS:= -O2 -g -std=gnu++98 -fno-rtti -fno-exceptions -Wall -Wno-unknown-pragmas -Wshadow
CXXFLAGS+= -Wundef -Wwrite-strings -Wnon-virtual-dtor -Wno-multichar
CXXFLAGS+= $(SDL_CFLAGS) $(DEFINES)

SRCS = src/bank.cpp src/file.cpp src/engine.cpp src/mixer.cpp src/resource.cpp src/parts.cpp src/vm.cpp \
	src/serializer.cpp src/sfxplayer.cpp src/staticres.cpp src/util.cpp src/video.cpp src/main.cpp src/sysImplementation.cpp


OBJS = $(SRCS:.cpp=.o)
DEPS = $(SRCS:.cpp=.d)

raw.elf: $(OBJS)
	$(CXX) $(LDFLAGS) -o $@ $(OBJS) $(SDL_LIBS) -lz

%.o: %.cpp
	$(CXX) $(CXXFLAGS) -MMD -c $< -o $*.o

clean:
	rm -f src/*.o src/*.d raw.elf

-include $(DEPS)
