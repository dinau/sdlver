import sdl2,sdl
import std/[strutils]

var ver1:sdl.Version
var ver2:sdl2.SDL_Version

template showVersion(sKind:string,ver:untyped) =
  echo "$# ver.$#.$#.$#" % [sKind,$ver.major,$ver.minor,$ver.patch]

echo ""
try:
# SDL1
  sdl.version(ver1)
  showVersion("SDL1",ver1)
except:
  echo "Not found  SDL1"
finally:
  discard

# SDL2
try:
  getVersion(ver2)
  showVersion("SDL2",ver2)
except:
  echo "Not found SDL2"
finally:
  discard

