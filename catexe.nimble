# Package

version       = "0.1.0"
author        = "Thiago Navarro"
description   = "Cat alternative for windows"
license       = "MIT"
srcDir        = "src"
bin           = @["catexe"]

binDir = "build"

# Dependencies

requires "nim >= 1.7.1"
requires "cligen"

task buildRelease, "Builds the release version":
  exec "nimble -d:danger build"

task buildWinRelease, "Builds the release version":
  exec "nimble -d:mingw -d:danger build"
