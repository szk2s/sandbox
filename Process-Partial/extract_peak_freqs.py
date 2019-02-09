#!/usr/bin/env python
# coding: utf-8

# In[1]:
import sys
import os

sys.path.append('./src')
import sklearn.cluster as cl
import numpy as np
import json
import plotly.offline as py
import plotly.graph_objs as go
import matplotlib.pyplot as plt
import convert
from scipy.signal import savgol_filter
import sounddevice as sd
import soundfile as sf
import additive_synth

py.init_notebook_mode(connected=True)
np.set_printoptions(threshold=9999)


# In[2]:

input_filename = 'cricket_pulse_2.json'
file = open('./assets/json/' + input_filename, 'r')
json_obj = json.load(file)

# %%
points = np.array(json_obj['partials'])


# In[12]: Plot Scatter

def setup_fig():
    trace = go.Scatter3d(
        x=points[:, 0],
        y=points[:, 1],
        z=points[:, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
            color=np.log(points[:, 2] * 255)
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

# In[13]: Plot Surface
# # CAUTION: Plotting Surface may take a lot of time
times, freqs, amps = convert.to_matrix(points)


def setup_fig():
    data = [
        go.Surface(
            x=times,
            y=freqs,
            z=amps
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
    return go.Figure(data=data, layout=layout)


py.plot(setup_fig(), filename='./plotly/midi_amplitude_surface.html')
# In[7]:
threshold = -50  # in dB

isSignal = points[:, 2] > 10 ** (threshold / 20)
isSignal
points = points[isSignal]

# In[8]:


# DBSCAN Clustering
x = points[:, 0]
y = points[:, 1]
z = points[:, 2]

spX = x / x.max()
spY = np.log2(y) / np.log2(y).max()
spZ = z / z.max()

specimens = np.column_stack([spX * 10, spY * 10])

clustering = cl.DBSCAN(min_samples=50).fit(specimens)
labels = clustering.labels_

print('<< labels >>')
print(labels)
print('length:', len(labels))
print('types:', np.max(labels) + 1)


# In[9]:


## Plot

def setup_fig():
    trace = go.Scatter3d(
        x=points[:, 0],
        y=points[:, 1],
        z=points[:, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
            color=labels
        )
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        hovermode='closest',
        height=800,
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


py.plot(setup_fig(), filename='./plotly/extracted.html')

# %%
points = points[labels > -1, :]

# %% Crop by frequency range
freq_range = dict(
    low=3800,
    high=4750,
)
condition = np.logical_and(points[:, 1] > freq_range['low'], points[:, 1] < freq_range['high'])
points = points[condition]

# %% Agglomerative Clustering
n_clusters = 15
weight = dict(
    times=0.05,
    freqs=10,
    amps=0.1,
)

x = points[:, 0]
y = points[:, 1]
z = points[:, 2]

spX = x / x.max()
spY = np.log2(y) / np.log2(y).max()
spZ = z / z.max()

specimens = np.column_stack(
    [
        spX * 5 * weight['times'],
        spY * 100 * weight['freqs'],
        spZ * 10 * weight['amps'],
    ]
)

clustering = cl.AgglomerativeClustering(n_clusters).fit(specimens)
labels = clustering.labels_

print('<< labels >>')
print(labels)
print('length:', len(labels))
print('types:', np.max(labels) + 1)


# In[9]:

## Plot


def setup_fig():
    trace = go.Scatter3d(
        x=points[:, 0],
        y=points[:, 1],
        z=points[:, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
            color=labels
        )
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        hovermode='closest',
        height=720,
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


py.plot(setup_fig(), filename='./plotly/extracted.html')

# %%
target_label = 2
target_cluster = points[labels == target_label, :]


## Plot

def setup_fig():
    trace = go.Scatter3d(
        x=target_cluster[:, 0],
        y=target_cluster[:, 1],
        z=target_cluster[:, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
        )
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        hovermode='closest',
        height=720,
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


py.plot(setup_fig(), filename='./plotly/extracted.html')

# %% extract loudest partial in the cluster
extracted_points = np.empty(shape=(0, 3))

for target_label in range(n_clusters):
    # print('target:', target_label)
    target_cluster = points[labels == target_label, :]
    freqs_list = np.unique(target_cluster[:, 1])
    mean_amps = np.empty(shape=freqs_list.size)
    for i, freq in enumerate(freqs_list):
        # print(i, freq)
        target_partial = target_cluster[target_cluster[:, 1] == freq]
        mean_amps[i] = np.mean(target_partial[:, 2])
    loudest_freq = freqs_list[np.where(mean_amps == mean_amps.max())][0]
    # print('loudest:', loudest_freq)
    original_points = np.array(json_obj['partials'])
    points_to_add = original_points[original_points[:, 1] == loudest_freq]
    extracted_points = np.append(extracted_points, points_to_add, axis=0)


# %% Plot

def setup_fig():
    trace = go.Scatter3d(
        x=extracted_points[:, 0],
        y=extracted_points[:, 1],
        z=extracted_points[:, 2],
        mode='markers',
        marker=dict(
            size=2,
            opacity=0.8,
        )
    )

    data = [trace]

    layout = go.Layout(
        title='Partial Data',
        hovermode='closest',
        height=800,
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


py.plot(setup_fig(), filename='./plotly/extracted.html')

# %% Treatment

extracted_points[:, 2] = extracted_points[:, 2] ** 2.5
extracted_points[:, 2] = extracted_points[:, 2]/extracted_points[:, 2].max()

# %% json write
json_obj['extracted_partials'] = extracted_points.tolist()
output_filename = os.path.splitext(input_filename)[0] + '.json'
with open('./output/json/' + output_filename, 'w') as outfile:
    json.dump(json_obj, outfile)
    print('completed')

# %% make reconstructed wav file
sr = 48000
reconstructed = additive_synth.synthesize(extracted_points, sr, smoothing_level=1)

# %% play and export
sd.play(reconstructed, sr)
output_filename = os.path.splitext(input_filename)[0] + '.wav'
sf.write('./output/wav/reconstructed/' + output_filename, reconstructed, sr)
