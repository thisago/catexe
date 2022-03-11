from std/os import commandLineParams, fileExists
from std/strformat import fmt


proc main(files: seq[string]; error = true): int =
  for file in files:
    if fileExists file:
      echo fmt"Reading file '{file}'"
      echo readFile file
    else:
      echo fmt"File '{file}' not exists"
      return if error: 1 else: 0

when isMainModule:
  import pkg/cligen
  dispatch main
