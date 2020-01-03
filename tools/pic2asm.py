#!/usr/bin/env python3
import os
from sys import argv
from PIL import Image
from asmlib import *

# taken from 40years/tools/get_pfcolors.py
def best_palette_match(palette, col):
    best_c = None
    best_d = None
    for p in palette.keys():
        dist = 0
        for i in range(3):
            dist += (p[i] - col[i])**2
        if best_d is None or dist < best_d:
            best_c = p
            best_d = dist
    return palette[best_c]

def get_colors(line):
    cols = sorted(set(line))
    bg = cols[0]
    fg = cols[1] if len(cols)>1 else None
    return (bg, fg)

def get_playfields(bits):
    """
    bits is a list of pixels on one line, 1 bool per pixel.
    Code taken from m/tools/png2logo.py
    """
    b_pfs = []
    b_pfs.append(list(reversed(bits[0:4])) + 4*[False])
    b_pfs.append(bits[4:12])
    b_pfs.append(list(reversed(bits[12:20])))
    b_pfs.append(list(reversed(bits[20:24])) + 4*[False])
    b_pfs.append(bits[24:32])
    b_pfs.append(list(reversed(bits[32:40])))
    i_pfs = [lbool2int(p) for p in b_pfs]
    return i_pfs

def get_palette():
    """
    Return the palette as a hash (rgb_color: VCS color)
    Palette from:
    http://denilson.sa.nom.br/gimp-palettes/
    https://raw.githubusercontent.com/denilsonsa/gimp-palettes/master/palettes/HW-Atari-2600-PAL.gpl
    """
    fname = "HW-Atari-2600-PAL.gpl"
    palette = {}
    with open(fname) as fd:
        # Drop first 4 lines
        for i in range(4):
            fd.readline()
        # Process palette file
        l = fd.readline()
        while l:
            # Special case for white n black color
            r, g, b, c, l = [int(c.strip(',')) if '+' not in c else 0 for c in l.strip().split()]
            palette[(r, g, b)] = (c << 4) + l
            l = fd.readline()
    return palette

def main():
    fname = argv[1]
    palette = get_palette()

    image = Image.open(fname)
    width, height = image.size

    if width != 40 or height != 40:
        print("Error: image size expected to be 40x40, but found {}x{}".format(width, height))
        exit(1)

    # Drop alpha channel
    data = [p[0:3] for p in image.getdata()]

    l_bg = []
    l_fg = []
    l_pfss = [[],[],[],[],[],[]]

    for i in range(40): # 40 lines
        ln = data[i*40 : (i+1)*40] # 40 pixels per line
        bg, fg = get_colors(ln)
        bits = [c == fg for c in ln]
        pfs = get_playfields(bits)
        vcs_bg = best_palette_match(palette, bg)
        vcs_fg = best_palette_match(palette, fg) if fg != None else 0x00

        l_bg.append(vcs_bg)
        l_fg.append(vcs_fg)
        for i in range(6):
            l_pfss[i].append(pfs[i])

    gfx_name, _ = os.path.splitext(os.path.basename(fname))
    gfx_name = gfx_name.replace('-','_')

    print("slideshow_{}_ptr:".format(gfx_name))
    print("\tdc.w slideshow_{}_colbg".format(gfx_name))
    print("\tdc.w slideshow_{}_colpf".format(gfx_name))
    for i  in range(6):
        print("\tdc.w slideshow_{}_p{}".format(gfx_name, i))

    print()
    print("\tALIGN 256")
    print("slideshow_{}_colbg:".format(gfx_name))
    print(lst2asm(reversed(l_bg)))
    print()
    print("slideshow_{}_colpf:".format(gfx_name))
    print(lst2asm(reversed(l_fg)))
    print()
    print("\tALIGN 256")
    for i,pfs in enumerate(l_pfss):
        print("")
        print("slideshow_{}_p{}:".format(gfx_name, i))
        print(lst2asm(reversed(pfs)))

main()
