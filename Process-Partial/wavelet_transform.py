#!/usr/bin/env python
# coding: utf-8

# In[9]:


import numpy as np
import matplotlib.pyplot as plt
import pywt
import soundfile as sf
import matplotlib.pyplot as plt
import plotly.offline as py
import plotly.graph_objs as go
from scipy.interpolate import interp1d
import scipy.io as sio

py.init_notebook_mode(connected=True)


# In[2]:


def get_envelope(input_signal, repeat=2):
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

        peaks_signal = signal[isPeak]
        peaks_time = t[isPeak]

        f = interp1d(peaks_time, peaks_signal, kind='cubic')
        signal = f(t)

    #         signal = np.interp(t, peaks_time, peaks_signal)
    envelope = signal
    return envelope


# In[3]:

bpm = 120
ppqn = 48

# In[4]:


audio, sr = sf.read('./assets/wav/church2.wav')

n_samples = len(audio)
endtime = len(audio) / sr
print('endtime:', endtime)
t = np.linspace(0, endtime, n_samples)

# sum to mono
if audio.ndim > 1:
    audio = np.sum(audio, axis=1) / 2
plt.plot(audio)
plt.show()

# In[5]:


# Continuous Wavelet Transform
wavelet = pywt.ContinuousWavelet('cmor200-0.1')
scale = np.arange(1, 257)
coefs, freqs = pywt.cwt(audio, scale, wavelet, 1 / sr)

# In[6]:


p = abs(coefs[:, ::100]) ** 2
t = np.linspace(0, endtime, p.shape[1])
p = p / p.max()

# In[7]:


n_ticks = int(endtime / 60 * bpm * ppqn)
ticks = np.linspace(0, endtime, n_ticks)
midi_amplitude = np.empty(shape=[p.shape[0], n_ticks])
for i, p_row in enumerate(p):
    envelope = get_envelope(p_row, 4)
    midi_amplitude[i] = abs(np.interp(ticks, t, envelope))

# %%
mat_contents = sio.loadmat('./mat/bird.mat')

# %%
p = mat_contents['p']
p = p[:, ::100]
t = mat_contents['t']
freqs = mat_contents['f']
freqs = freqs.flatten()
t = t.flatten()
# In[10]:

# Plot

trace = go.Heatmap(
    x=t,
    y=np.log10(freqs),
    z=np.log10(p),
)

data = [trace]

layout = go.Layout(
    title='Partial Data',
    height=800,
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
fig = go.Figure(data, layout)
py.plot(fig, filename='./plotly/spectrogram_midi.html')

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

# In[12]:


# Plot

trace = go.Scatter3d(
    x=points[:, 0],
    y=points[:, 1],
    z=points[:, 2],
    mode='markers',
    marker=dict(
        size=2,
        opacity=0.8
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
fig = go.Figure(data, layout)
py.plot(fig, filename='./plotly/partials.html')

# In[13]:


data = [
    go.Surface(
        x=t,
        y=freqs,
        z=p
    )
]
layout = go.Layout(
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
fig = go.Figure(data=data, layout=layout)
py.plot(fig, filename='./plotly/coefs.html')
