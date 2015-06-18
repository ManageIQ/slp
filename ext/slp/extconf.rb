require 'mkmf'

dir_config('slp')

if Gem.win_platform?
  $INCFLAGS << " -Iwin32 "
  $CFLAGS.sub! /-MD/, "-MT"

  slp_lib = "win32/slp"
else
  slp_lib = "slp"
end

unless have_header("slp.h")
  puts "Could not find slp.h"
  exit 1
end

unless have_library(slp_lib)
  puts "Could not find library: #{slp_lib}"
  exit 1
end

create_makefile("slp/slp")
