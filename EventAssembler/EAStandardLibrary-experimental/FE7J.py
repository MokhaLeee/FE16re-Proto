#!/usr/bin/env python3

import sys

filename = sys.argv[1]

with open(filename) as f_in:
    lines = (line.rstrip() for line in f_in)
    lines = list(line for line in lines if (line and not line.startswith("#"))) # Remove blank lines and comment lines
    for i, l in enumerate(lines):
        if "FE7" in l:
            codes = l.split(',')
            codes[3] = codes[3].replace(":FE7", ":FE7J").replace(":FE6", "").replace(":FE8", "")
            index = int(codes[1].strip(), 16)
            if index == 0xe2:
                index = 0xe4
            elif index > 0xe0:
                index += 5
            elif index > 0xd8:
                index += 4
            elif index > 0xce:
                index += 3
            elif index > 0xa9:
                index += 1
            elif index > 0x19:
                index -= 2
            elif index > 0x17:
                index -= 1
            codes[1] = hex(index)
            s = ","
            print(s.join(codes))
            j = i + 1
            while j < len(lines) and "FE" not in lines[j]:
                print(lines[j])
                j += 1
