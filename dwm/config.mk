# dwm version
VERSION = 6.0

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

#X11INC = /usr/X11R6/include
#X11LIB = /usr/X11R6/lib
X11INC = /usr/include/X11
X11LIB = /usr/lib/X11

# Xinerama
XINERAMALIBS = -L${X11LIB} -lXinerama
XINERAMAFLAGS = -DXINERAMA

# Xft, comment if you don't want it
XFTINC = $(shell pkg-config --cflags xft)
XFTLIBS = $(shell pkg-config --libs xft)

# includes and libs
INCS = -I. -I${X11INC} ${XFTINC}
LIBS = -lc -L${X11LIB} -lX11 ${XINERAMALIBS} -lXft ${XFTLIBS}

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\" ${XINERAMAFLAGS}
#CFLAGS = -g -std=c99 -pedantic -Wall -O0 ${INCS} ${CPPFLAGS}
CFLAGS = -std=c99 -pedantic -Wall -Os ${INCS} ${CPPFLAGS}
#LDFLAGS = -g ${LIBS}
LDFLAGS = -s ${LIBS}

# Solaris
#CFLAGS = -fast ${INCS} -DVERSION=\"${VERSION}\"
#LDFLAGS = ${LIBS}

# compiler and linker
CC = gcc
