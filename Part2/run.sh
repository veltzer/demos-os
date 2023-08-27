#!/bin/bash -e
# this works
# qemu-system-i386 -fda build/main_floppy.img
qemu-system-i386 -drive file=build/main_floppy.img,format=raw,if=floppy,index=0
