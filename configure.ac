AC_INIT([zutty], [0.13])
: ${CXXFLAGS:=-O3}
AC_CONFIG_AUX_DIR([build-aux])
AC_CONFIG_MACRO_DIR([build-aux])
AC_PREFIX_DEFAULT([/usr])
AC_CONFIG_HEADERS([config.h])
AM_INIT_AUTOMAKE([1.10 foreign subdir-objects])
AC_PROG_CXX
my_CPPFLAGS=""
AS_CASE(["$host"],
	[*-linux|*-linux-*], [my_CPPFLAGS="-DLINUX"],
	[*-solaris*], [my_CPPFLAGS="-DSOLARIS"],
	[*-freebsd*], [my_CPPFLAGS="-DBSD -DFREEBSD"],
	[*-openbsd*], [my_CPPFLAGS="-DBSD -DOPENBSD"],
	[*-netbsd*], [my_CPPFLAGS="-DBSD -DNETBSD"],
	[*-apple-*], [my_CPPFLAGS="-DMACOS"]
)
my_CPPFLAGS="$my_CPPFLAGS -DZUTTY_VERSION=PACKAGE_VERSION"
my_CXXFLAGS="-std=c++14 -Wall -Wextra -Wsign-compare -Wno-unused-parameter"
AC_SUBST([my_CPPFLAGS])
AC_SUBST([my_CXXFLAGS])

PKG_PROG_PKG_CONFIG
PKG_CHECK_MODULES([egl], [egl])
PKG_CHECK_MODULES([freetype], [freetype2])
PKG_CHECK_MODULES([gl], [gl])
AC_CHECK_HEADERS([GLES3/gl31.h], [], [AC_MSG_ERROR([You need Mesa-libGLESv3-devel])])
PKG_CHECK_MODULES([x11], [x11])
PKG_CHECK_MODULES([xmu], [xmu])
PKG_CHECK_MODULES([xproto], [xproto])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
