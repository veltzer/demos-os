#!/bin/bash -e
qemu-system-i386 -drive file=build/main_floppy.img,format=raw,if=floppy,index=0
