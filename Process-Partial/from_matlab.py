#!/usr/bin/env python
# coding: utf-8

# In[9]:


import numpy as np
import plotly.offline as py
import plotly.graph_objs as go
from scipy.interpolate import interp1d
import scipy.io as sio
from random import randint
import json
import os
import sys
import sounddevice as sd
import soundfile as sf

sys.path.append('./src')

import additive_synth
from rescale import rescale

np.set_printoptions(threshold=9999)

# In[3]:

# Initialize

bpm = 120
ppqn = 48
smoothing_level = 0  # from 0 to 2 (int)
input_filename = 'japanese_nightingale_short.mat'


# In[2]:


def get_envelope(input_signal, repeat=1):
    # Taking the absolute value
    t = np.arange(input_signal.shape[-1])

    absolute_signal = abs(input_signal)

    signal = absolute_signal

    for i in range(repeat):
        # Peak detection
        ## Init
        isPeak = np.zeros(signal.shape[-1], dtype=bool)
        last_idx = signal.shape[-1] - 1

        ## Define subfunction
        def find_prev_specimen():
            if sample_idx == 0:
                return 0.
            return signal[sample_idx - 1]

        def find_next_specimen():
            if sample_idx == last_idx:
                return 0.
            return signal[sample_idx + 1]

        ## Main
        for sample_idx, sample in enumerate(signal):
            if sample_idx in [0, last_idx]:
                isPeak[sample_idx] = True
                continue
            prev_specimen = find_prev_specimen()
            next_specimen = find_next_specimen()
            if prev_specimen < sample and sample > next_specimen:
                isPeak[sample_idx] = True

        if np.sum(isPeak) < 6:
            for i in range(6 - np.sum(isPeak)):
                isPeak[randint(0, len(isPeak)) - 1] = True

        peaks_signal = signal[isPeak]
        peaks_time = t[isPeak]

        f = interp1d(peaks_time, peaks_signal, kind='cubic')
        signal = f(t)

    #         signal = np.interp(t, peaks_time, peaks_signal)
    envelope = signal
    return envelope

# %%
with h5py.File('./mat/' + input_filename, 'r') as mat_contents:
    print(mat_contents.keys())
    p = np.array(mat_contents['p']).T[:, ::10]
    t = np.array(mat_contents['t']).flatten()[::10]
    freqs = np.array(mat_contents['f']).flatten()
    endtime = np.array(mat_contents['endtime'])[0][0]


# # %%
# mat_contents = sio.loadmat('./mat/' + input_filename)

# # %%
# p = mat_contents['p']
# p = p[:, ::10]
# t = mat_contents['t']
# t = t.flatten()
# t = t[::10]
# freqs = mat_contents['f']
# endtime = mat_contents['endtime'][0][0]
# freqs = freqs.flatten()


# In[10]: Plot Spectrogram
# # CAUTION: Plotting spectrogram may take a lot of time

def setup_fig():
    trace = go.Heatmap(
        x=t[::10],
        y=np.log10(freqs),
        z=np.log10(p[:, ::10]),
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        height=720,
        scene=dict(
            xaxis=dict(
                title=dict(
                    text='Time',
                ),
            ),
            yaxis=dict(
                title=dict(
                    text='Frequency',
                ),
                autorange=False
            ),
        )
    )
    return go.Figure(data, layout)


py.plot(setup_fig(), filename='./plotly/spectrogram_p.html')

# In[7]:


n_ticks = int(endtime / 60 * bpm * ppqn)
ticks = np.linspace(0., endtime, num=n_ticks)
midi_amplitude = np.empty(shape=[p.shape[0], n_ticks])
for i, p_row in enumerate(p):
    envelope = get_envelope(p_row, smoothing_level + 1)
    midi_amplitude[i] = abs(np.interp(ticks, t, envelope))


# In[10]: Plot Spectrogram
def setup_fig():
    trace = go.Heatmap(
        x=ticks[::10],
        y=np.log10(freqs),
        z=np.log10(midi_amplitude[:, ::10]),
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        height=720,
        scene=dict(
            xaxis=dict(
                title=dict(
                    text='Time',
                ),
            ),
            yaxis=dict(
                title=dict(
                    text='Frequency',
                ),
                autorange=False
            ),
        )
    )
    return go.Figure(data, layout)


py.plot(setup_fig(), filename='./plotly/spectrogram_midi.html')

# In[10]:


amps_2d = midi_amplitude

n_times = amps_2d.shape[1]
n_freqs = amps_2d.shape[0]

times_2d = np.empty(shape=(1, n_times))
times_2d[0, :] = ticks
times_2d = np.repeat(times_2d, n_freqs, axis=0)

freqs_2d = np.empty(shape=(n_freqs, 1))
freqs_2d[:, 0] = freqs
freqs_2d = np.repeat(freqs_2d, n_times, axis=1)

x = times_2d.flatten()
y = freqs_2d.flatten()
z = amps_2d.flatten()

points = np.column_stack([x, y, z])


# In[12]: Plot Scatter

def setup_fig():
    trace = go.Scatter3d(
        x=points[::10, 0],
        y=points[::10, 1],
        z=points[::10, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
            color=np.log(points[::10, 2] * 255)
        )
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        hovermode='closest',
        height=900,
        margin=dict(
            l=0,
            r=0,
            b=0,
            t=0
        ),
        scene=dict(
            xaxis=dict(
                title='Time',
                ticklen=5,
                gridwidth=2,
            ),
            yaxis=dict(
                title='Frequency',
                type='log',
                ticklen=5,
                gridwidth=2,
            ),
            zaxis=dict(
                title='Amplitude',
                ticklen=5,
                gridwidth=2,
            )
        )
    )
    return go.Figure(data, layout)


py.plot(setup_fig(), filename='./plotly/partials.html')

# %%
output_filename = os.path.splitext(input_filename)[0] + '.json'

with open('./output/json/' + output_filename, 'w') as outfile:
    outobj = dict(partials=points.tolist())
    json.dump(outobj, outfile)

print('Result file is at')
print('./output/json/' + output_filename)

# %% make reconstructed wav file
sr = 48000

x = points[::10000, 0]
y = points[::10000, 1]
z = rescale(points[::10000, 2])

points_for_synthesize = np.column_stack([x, y, z])
reconstructed = additive_synth.synthesize(points_for_synthesize, sr, smoothing_level=1)

# %% play and export
sd.play(reconstructed, sr)
output_filename = os.path.splitext(input_filename)[0] + '.wav'
sf.write('./output/wav/' + output_filename, reconstructed, sr)
