import imageio.v2 as imageio
import sys
import numpy as np
import os
import atexit
import matplotlib.pyplot as plt
from tqdm import tqdm
import webbrowser
from contextlib import suppress

difference_file = sys.argv[1] if len(sys.argv) > 1 else "difference.png"

def find_offsetnum(difference_file):
    diff = np.asarray(imageio.imread(difference_file))
    for i, px in enumerate(diff[0, :1000]):
        if px[0] / px[1] > 3:
            return i

@atexit.register
def cleanup():
    os.system("rm -f msg.gif stegg.png diff.png")

def create_msg():
    os.system('magick -gravity center -size 5x5 label:"OwoUwu" msg.gif')

def create_diff():
    os.system("magick compare -metric PAE mikumikubeam.png mikumikusteg.png difference.png &> /dev/null")

def map_offset_to_num(offset: int) -> int:
    os.system(f'magick composite msg.gif mikumikubeam.png -stegano +{offset}+0 stegg.png')
    os.system(f"magick compare -metric PAE mikumikubeam.png stegg.png diff.png &> /dev/null")
    return find_offsetnum("diff.png")

def verify_offset(offnum):
    recover(50, 50, offnum)
    diff = np.asarray(imageio.imread("rec.gif"))
    pxsums = []
    for i in range(len(diff)):
        for j in range(len(diff[0])):
            px = [*map(float, diff[i, j])]
            pxsums.append((px[0] + px[1] + px[2]) / 3)
    iqr = np.subtract(*np.percentile(pxsums, [75, 25]))
    return iqr < 20

def fft(difference_file=difference_file):
    diff = np.asarray(imageio.imread(difference_file))
    res = []
    for j in range(len(diff[0])):
        for i in range(len(diff)):
            px = diff[i, j]
            res.append(px[0])
    res = np.array(res)[200:]
    X = np.fft.fft(res)
    X = np.abs(X)
    return X
    # plt.plot([*range(len(res))], X)
    # plt.show()

def find_redrange(difference_file=difference_file):
    diff = np.asarray(imageio.imread(difference_file))
    m = len(diff)
    n = len(diff[0])
    start = float("inf")
    end = -1
    for i in range(m):
        for j in range(n):
            px = diff[i, j]
            if px[0] / px[1] > 3:
                idx = i * n + j
                start = min(start, idx)
                end = max(end, idx)
    return end - start

def recover(xdim, ydim, offset):
    os.system(f'magick -size "{xdim}x{ydim}+{offset}+0" stegano:mikumikusteg.png rec.gif')

def find_size(offset, difference_file=difference_file):
    rr = find_redrange(difference_file)
    prod = int(rr / 16)
    xdims = []
    xpeaks = []
    ydims = []
    ypeaks = []

    print("searching for image width/height - %dx%d" % (prod ** 0.5, prod ** 0.5))
    for dxdim in tqdm(range(100)):
        xdim = max(1, int(prod ** 0.5) - dxdim)
        ydim = max(1, prod // xdim)

        dft = 5
        # below is if image is taller than wide, if you analyze, it is not
        # recover(xdim, ydim, offset)
        # X = fft("rec.gif")
        # with suppress(ValueError):
        #     xpeaks.append(np.max(X[xdim - dft:xdim + dft]))
        #     xdims.append(xdim)

        recover(ydim, xdim, offset)
        X = fft("rec.gif")
        with suppress(ValueError):
            ypeaks.append(np.max(X[ydim - dft:ydim + dft]))
            ydims.append(ydim)
    _, candidate_width = max(zip(ypeaks, ydims))

    opt_height = prod // candidate_width
    recover(candidate_width, opt_height, offset)
    os.system("cp rec.gif candidate1.gif")
    webbrowser.open("candidate1.gif")

    print("fine-searching on width - %dx%d" % (candidate_width, opt_height))
    widths = []
    wpeaks = []
    for w in tqdm(range(candidate_width, candidate_width + 20)):
        recover(w, opt_height, offset)
        X = fft("rec.gif")
        with suppress(ValueError):
            wpeaks.append(np.max(X[w - dft:w + dft]))
            widths.append(w)

    _, opt_width = max(zip(wpeaks, widths))
    print("converging on %dx%d" % (opt_width, opt_height))
    recover(opt_width, opt_height, offset)
    os.system("cp rec.gif candidate2.gif")
    webbrowser.open("candidate2.gif")

    opt_width = candidate_width
    candidate_height = prod // candidate_width
    print("fine-searching on height - %dx%d" % (opt_width, candidate_height))
    heights = []
    hpeaks = []
    for h in tqdm(range(candidate_height, candidate_height + 20)):
        recover(opt_width, h, offset)
        X = fft("rec.gif")
        with suppress(ValueError):
            hpeaks.append(np.max(X[h - dft:h + dft]))
            heights.append(h)

    _, opt_height = max(zip(hpeaks, heights))
    print("converging on %dx%d" % (opt_width, opt_height))
    recover(opt_width, opt_height, offset)
    os.system("mv rec.gif candidate3.gif")
    webbrowser.open("candidate3.gif")

    # finetune further
    # if its skewed horizontally, try a lower/heigher width in increments of 1 until focused
    while 1:
        r = input("width height? ")
        if r == "q":
            break
        with suppress(Exception):
            w, h = map(int, r.split())
            recover(w, h, offset)
            webbrowser.open("rec.gif")


    # plt.plot(widths, wpeaks)
    # plt.show()
    # plt.plot(xdims, xpeaks)
    # plt.show()
    # plt.plot(ydims, ypeaks)
    # plt.show()

create_diff()
cleanup()
create_msg()
target = find_offsetnum("difference.png")
print("searching for valid offsetnum")
for i in range(target - 30, target + 5):
    offnum = map_offset_to_num(i)
    if offnum == target:
        print(i, "=>", offnum, verif := verify_offset(i))
        if verif:
            print("offset found!")
            find_size(i)
            exit()
