from std/os import commandLineParams, fileExists
from std/strformat import fmt
from std/strutils import replace, parseHexStr

proc main(files: seq[string]; error = true; silent = false): int =
  for file in files:
    if fileExists file:
      if not silent: echo fmt"Reading file '{file}'"
      var res = ""
      for ch in readFile file:
        if ch.int > 0 and ch.int < 255:
          res.add ch
      echo res
    else:
      if not silent: echo fmt"File '{file}' not exists"
      return if error: 1 else: 0

when isMainModule:
  import pkg/cligen
  dispatch main
