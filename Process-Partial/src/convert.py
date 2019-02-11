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
        row_idx_in_points = np.logical_and(x == its_time, y == its_freq)
        if np.sum(row_idx_in_points) > 0:
            amp_to_add = z[row_idx_in_points][0]
        if np.sum(row_idx_in_points) == 0:
            amp_to_add = 0
        amps[it.multi_index] = amp_to_add
        it.iternext()
    return times, freqs, amps


def to_points(times, freqs, amps):
    amps_2d = amps

    n_times = amps_2d.shape[1]
    n_freqs = amps_2d.shape[0]

    times_2d = np.empty(shape=(1, n_times))
    times_2d[0, :] = times
    times_2d = np.repeat(times_2d, n_freqs, axis=0)

    freqs_2d = np.empty(shape=(n_freqs, 1))
    freqs_2d[:, 0] = freqs
    freqs_2d = np.repeat(freqs_2d, n_times, axis=1)

    x = times_2d.flatten()
    y = freqs_2d.flatten()
    z = amps_2d.flatten()

    points = np.column_stack([x, y, z])

    return points
