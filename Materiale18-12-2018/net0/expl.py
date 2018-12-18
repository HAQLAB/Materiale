#!/usr/bin/python
from pwn import *

addr = "127.0.0.1"
port = 2999

s = tubes.remote.remote(addr, port)

l = s.recvline()
print l
n =  int(re.search(r'\d+', l).group(0))
print str(n)+" --> "+str(p32(n))
s.sendline(p32(n))
print s.recvall()
