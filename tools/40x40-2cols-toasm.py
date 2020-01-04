#!/usr/bin/env python3
import os
from sys import argv
from PIL import Image
from asmlib import *

class TooManyColorsException(Exception):
    pass

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
    if len(cols) > 2:
        raise TooManyColorsException("More than 2 colors found on a line: {}".format(cols))
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

class Slide:
    """
    Fields:
    * self.colbg
    * self.colfg
    * self.pfs
    * self.prefix
    """

    def __init__(self, palette, filename):
        self.palette = palette

        image = Image.open(filename)
        width, height = image.size

        if width != 40 or height != 40:
            print("Error: image size expected to be 40x40, but found {}x{}".format(width, height))
            exit(1)

        # Drop alpha channel
        data = [p[0:3] for p in image.getdata()]

        self.colbg = []
        self.colfg = []
        self.pfs = [[],[],[],[],[],[]]

        for i in range(40): # 40 lines
            ln = data[i*40 : (i+1)*40] # 40 pixels per line
            bg, fg = get_colors(ln)
            bits = [c == fg for c in ln]
            pfs = get_playfields(bits)
            vcs_bg = best_palette_match(palette, bg)
            vcs_fg = best_palette_match(palette, fg) if fg != None else 0x00

            self.colbg.append(vcs_bg)
            self.colfg.append(vcs_fg)
            for i in range(6):
                self.pfs[i].append(pfs[i])

        gfx_name, _ = os.path.splitext(os.path.basename(filename))
        gfx_name = gfx_name.replace('-','_').replace(' ','').lower()
        self.prefix = "slideshow_{}".format(gfx_name)

    def dump_colbg(self):
        print("{}_colbg:".format(self.prefix))
        print(lst2asm(reversed(self.colbg)))

    def dump_colfg(self):
        print("{}_colfg:".format(self.prefix))
        print(lst2asm(reversed(self.colfg)))

    def dump_pfs_i(self, i):
        print("{}_p{}:".format(self.prefix, i))
        print(lst2asm(reversed(self.pfs[i])))

    def dump_pfs_all(self):
        for i in range(6):
            self.dump_pfs_i(i)

    def dump_ptr(self):
        print("{}_ptr:".format(self.prefix))
        print("\tdc.w {}_colbg".format(self.prefix))
        print("\tdc.w {}_colfg".format(self.prefix))
        for i  in range(6):
            print("\tdc.w {}_p{}".format(self.prefix, i))


def main():
    # Each pic is made of:
    # * 8 times 40 Bytes - i.e 320 Bytes
    # * 16 bytes for the pointers
    # Each 40 Bytes block can't cross 256 Bytes pages
    #
    # We can put 6 blocks + the pointers in one page:
    # 6 * 40 bytes = 240 bytes + 16 bytes = 256 bytes
    #
    # An approach could be to put the PF0-PF5 + pointers of each GFX in a page
    # Then put colors of 3 GFX per page.
    #
    # For instance, let's suppose 11 GFXs. We split them in:
    # * 11 x 256Bytes pages for playfields + pointers
    # * 4 pages (3, 3, 3, 2) for the colors (Here we loose 16*3=48 bytes)
    # * Then the engine

    fnames = argv[1:]
    palette = get_palette()

    slides=[]
    for fn in fnames:
        try:
            slides.append( Slide(palette, fn) )
        except TooManyColorsException as e:
            print("*Error* while processing: {}".format(fn))
            print(e)

    print("\tALIGN 256 ; In case, but file should be included at the begining of a bank")
    for s in slides:
        s.dump_pfs_all()
        s.dump_ptr()
        print()

    for i,s in enumerate(slides):
        if (i%3) == 0:
            print("\tALIGN 256")
        s.dump_colbg()
        s.dump_colfg()
        print()

main()
