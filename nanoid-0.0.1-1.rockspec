package = "nanoid"
version = "0.0.1-1"
source = {
   url = "*** please add URL for source tarball, zip or repository here ***"
}
description = {
   detailed = "Single header NanoID implementation in C from https://github.com/NerdyPepper/nanoid",
   homepage = "*** please enter a project homepage ***",
   license = "MIT"
}

   build = {
      type = "make",
      build_variables = {
         CFLAGS="$(CFLAGS)",
         LIBFLAG="$(LIBFLAG)",
         LUA_LIBDIR="$(LUA_LIBDIR)",
         LUA_BINDIR="$(LUA_BINDIR)",
         LUA_INCDIR="$(LUA_INCDIR)",
         LUA="$(LUA)",
      },
      install_variables = {
         INST_PREFIX="$(PREFIX)",
         INST_BINDIR="$(BINDIR)",
         INST_LIBDIR="$(LIBDIR)",
         INST_LUADIR="$(LUADIR)",
         INST_CONFDIR="$(CONFDIR)",
      },
   }
