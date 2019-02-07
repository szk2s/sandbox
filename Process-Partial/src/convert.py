import numpy as np

def to_matrix(points):
    x = points[:, 0].flatten()
    y = points[:, 1].flatten()
    z = points[:, 2].flatten()
    times = np.sort(np.unique(x))
    freqs = np.sort(np.unique(y))
    amps = np.empty(shape=(freqs.size, times.size))
    it = np.nditer(amps, flags=['multi_index'])
    while not it.finished:
        its_time = times[it.multi_index[1]]
        its_freq = freqs[it.multi_index[0]]
        idx_in_z = np.logical_and(x == its_time, y == its_freq)
        amps[it.multi_index] = z[idx_in_z][0]
        it.iternext()
    return times, freqs, amps
