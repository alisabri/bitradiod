local inspect = require('inspect')
local posix = require('posix')

--lake.set_flags { sysroot = '/home/work/pi/raspbian'}
CC = 'arm-linux-gnueabihf-gcc'

local sysroot = '/home/work/pi/raspbian'
posix.setenv('PKG_CONFIG_DIR', '')
posix.setenv('PKG_CONFIG_LIBDIR', sysroot ..'/usr/lib/pkgconfig:'.. sysroot..'/usr/share/pkgconfig')
posix.setenv('PKG_CONFIG_SYSROOT_DIR', sysroot)

--lake.define_need('hamlib', mypkg)
c.program {'bitradiod',
    src='srv',
    odir=true,
    optimize=false,
    flags='--sysroot=/home/work/pi/raspbian',
    libdir='/home/work/pi/raspbian/opt/hamlib/lib',
    incdir='/home/work/pi/raspbian/opt/hamlib/include',
   	needs='hamlib'
}