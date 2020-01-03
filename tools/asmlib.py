def lst2asm(lst):
    """lst is a list of bytes to dump
    """
    res = []
    for i,v in enumerate(lst):
        if i%8 == 0:
            if i != 0:
                res.append('\n')
            res.append('\tdc.b ')
        else:
            res.append(', ')
        res.append("${:02x}".format(v))
    return ''.join(res)

def lbool2int(lst):
    """Converts a list of boolean to an integer.
    The list usually contains 8 items for a corresponding an 8 bits integer.
    """
    r = 0
    for b in lst:
        r <<= 1
        r |= b
    return r
