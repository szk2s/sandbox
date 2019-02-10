# In[1]:
import sys
import os

sys.path.append('./src')
import numpy as np
import json
import plotly.offline as py
import plotly.graph_objs as go
import convert
import sounddevice as sd
import soundfile as sf
import additive_synth
import scipy.io as sio

np.set_printoptions(threshold=9999)


# %%
def rescale(x, out_range=(-1, 1), axis=None):
    domain = np.min(x, axis), np.max(x, axis)
    y = (x - (domain[1] + domain[0]) / 2) / (domain[1] - domain[0])
    return y * (out_range[1] - out_range[0]) + (out_range[1] + out_range[0]) / 2

# In[2]:

input_filename = 'cricket_pulse_2.json'
file = open('./assets/json/' + input_filename, 'r')
json_obj = json.load(file)

# %%
mat_contents = sio.loadmat('./mat/pulse_of_cricket_pulse_2')

# %%
pulses = mat_contents['pulses']
soundname = mat_contents['soundname'][0]

# %%
times, freqs, amps = convert.to_matrix(pulses)

# %% Plot


def setup_fig():
    trace = go.Scatter3d(
        x=pulses[:, 0],
        y=pulses[:, 1],
        z=pulses[:, 2],
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


py.plot(setup_fig(), filename='./plotly/pulses.html')

# %%
json_obj['pulses'] = dict(
    times=times.tolist(),
    freqs=freqs.tolist(),
    amps=amps.tolist(),
)
json_obj['soundname'] = soundname,
output_filename = soundname + '.json'
with open('./output/json/' + output_filename, 'w+') as jsonFile:
    json.dump(json_obj, jsonFile)
    print('Result is at')
    print('./output/json/' + output_filename)
# %% make reconstructed wav file
sr = 48000
reconstructed = additive_synth.synthesize(pulses, sr, smoothing_level=1)

# %% play and export
sd.play(reconstructed, sr)
output_filename = soundname + '.wav'
sf.write('./output/wav/' + 'pulse_of_'+ output_filename, reconstructed, sr)