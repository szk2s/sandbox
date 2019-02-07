import numpy as np
from scipy.signal import savgol_filter

def synthesize(points, sr, smoothing_level=10):
    # # make synthesized signal by adding multiple sine waves
    # # smoothing level must be natural number
    freqs = np.unique(points[:, 1])
    sines = np.zeros(shape=(np.ceil(points[:, 0].max() * sr).astype(int), freqs.size))
    for i, freq in enumerate(freqs):
        partial = points[points[:, 1] == freq]
        partial = partial[partial[:, 0].argsort()]
        endtime = partial[:, 0].max()
        times = np.arange(0, endtime, 1 / sr)
        amps = np.interp(times, partial[:, 0], partial[:, 2])
        amps = savgol_filter(amps, np.round(smoothing_level*sr//100+1).astype(int), 3)
        x = times
        y = amps * np.sin(2 * np.pi * freq * x)
        sines[:, i] = y

    synthesized = np.sum(sines, axis=1)
    synthesized = synthesized/abs(synthesized).max()  # normalize
    return synthesized