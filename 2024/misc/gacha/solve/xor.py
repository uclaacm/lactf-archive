import imageio
import sys
import numpy as np

img1 = np.asarray(imageio.imread(sys.argv[1]))
img2 = np.asarray(imageio.imread(sys.argv[2]))

imageio.imwrite(sys.argv[3], img1 ^ img2)
