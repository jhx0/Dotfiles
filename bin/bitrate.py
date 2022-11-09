#!/usr/bin/env python3

#
# data rate / (resolution * frames per second) = BPP
#

import sys

if __name__ == "__main__":
    if len(sys.argv) <= 4:
        print("USAGE: bitrate.py res_x res_y fps bpp")
        sys.exit()

    res_x = float(sys.argv[1])
    res_y = float(sys.argv[2])
    fps = float(sys.argv[3])
    bpp = float(sys.argv[4])

    res_total = res_x * res_y
    bitrate = (res_total * fps * bpp) / 1000

    print("Bitrate: {} kbps".format(int(bitrate)))
