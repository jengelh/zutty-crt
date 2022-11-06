# -*- Makefile -*-

AM_CPPFLAGS = ${my_CPPFLAGS} ${egl_CFLAGS} ${freetype_CFLAGS} ${x11_CFLAGS} ${xmu_CFLAGS} ${xproto_CFLAGS}
AM_CXXFLAGS = ${my_CXXFLAGS}
bin_PROGRAMS = zutty
zutty_SOURCES = src/charvdev.cc src/font.cc src/fontpack.cc src/frame.cc src/gl.cc src/log.cc src/main.cc src/options.cc src/pty.cc src/renderer.cc src/selmgr.cc src/vterm.cc
zutty_LDADD = ${egl_LIBS} ${freetype_LIBS} ${gl_LIBS} ${x11_LIBS} ${xmu_LIBS} ${xproto_LIBS}
BUILT_SOURCES = src/compute.glsl.h src/fragment.glsl.h src/vertex.glsl.h
GLSL_WRAP = perl -lpe 's{^}{"}g;s{$$}{\\n"}g' <$< >$@

src/compute.glsl.h: src/shader/compute.glsl
	${GLSL_WRAP}
src/fragment.glsl.h: src/shader/fragment.glsl
	${GLSL_WRAP}
src/vertex.glsl.h: src/shader/vertex.glsl
	${GLSL_WRAP}
