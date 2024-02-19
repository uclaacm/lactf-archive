# mixed signals
I can't figure out what my friend is trying to tell me. They sent me this recording and told me that the important stuff is at 40 kHz (??? what does that even mean).

 [This may be useful.](https://en.wikipedia.org/wiki/Amplitude_modulation) Flag format is lactf{xxx} with only lower case letters, numbers, and underscores between the braces.


Author Writeup by AVDestroyer

## The challenge
As described in the flavortext, it looks like we have some amplitude-modulated sound in our `message.wav` file. Also, it looks like the signal of our interest is located at 40 kHz. Therefore, this challenge will boil down to recovering a signal that has been amplitude modulated to 40 kHz.

## Solution

The general process of recovering a signal from amplitude modulation is to "demodulate" the signal by multiplying it with a cosine at the carrier frequency, and then apply a low-pass filter to extract the baseband signal, which should be the signal of our interest (this second part is kind of optional, but I will include it to make the extracted sound clearer -- if we don't use it, then we will hear other sound signals overlapping with our sound signal of interest).

We can do this with `numpy` and `scipy`:

```py
import scipy.io.wavfile as wv
import matplotlib.pyplot as plt
import numpy as np
from scipy.signal import butter, lfilter

def demodulate(t, am, rate):
    TWO_PI = 2 * np.pi
    fc = 40000
    carrier = np.cos(t * fc * TWO_PI)
    demod = carrier * am
    demod = demod.astype(np.int16)
    
    cutoff = 5000
    order = 4
    nyquist = 0.5*rate
    normal_cutoff = cutoff/nyquist
    b, a = butter(order,normal_cutoff, btype="low",analog=False)
    filtered = 10*lfilter(b, a, demod)
    
    plt.plot(t,demod,label="demod",color="blue")
    plt.plot(t,filtered,label="original",color="red")
    plt.legend()
    plt.xlabel('time (s)')
    plt.ylabel('signal')
    
    return filtered

rate, signal = wv.read('message.wav')
time = np.arange(0,len(signal)/rate,1/rate)
demod = demodulate(time,signal,rate).astype(np.int16)
wv.write('recovered.wav',rate,demod)
```

After we listed to `recovered.wav`, we can make out the following:

Lima, Alpha, Charlie, Tango, Foxtrot, Open Brace, Charlie, Four, November, Underscore, Yankee, Zero, Uniform, Underscore, Papa, Lima, Zulu, Underscore, Uniform, November, Mike, One, X-ray, Underscore, Mike, Yankee, Underscore, Sierra, One, Golf, November, Four, Lima, Zulu, End Brace.

Since our flag only contains lowercase letters, numbers, and underscores inside of the braces, we can translate this to our flag: `lactf{c4n_y0u_plz_unm1x_my_s1gn4lz}`.

