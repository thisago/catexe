# Package

version       = "0.3.0"
author        = "Thiago Navarro"
description   = "Cat alternative for windows"
license       = "MIT"
srcDir        = "src"
bin           = @["catexe"]

binDir = "build"

# Dependencies

requires "nim >= 1.6.4"
requires "cligen"

task buildRelease, "Builds the release version":
  exec "nimble -d:danger build"

task buildWinRelease, "Builds the release version":
  exec "nimble -d:mingw -d:danger build"
