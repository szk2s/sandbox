#!/usr/bin/env python
# coding: utf-8

# In[1]:

import sklearn.cluster as cl
import numpy as np
import json
import matplotlib.pyplot as plt
import plotly.offline as py
import plotly.graph_objs as go
from scipy.signal import hilbert

py.init_notebook_mode(connected=True)

# In[2]:


file = open("./assets/json/bird.json", 'r')
matlab_obj = json.load(file)
soundname = matlab_obj.get('soundname')
print('soundname:', soundname)

# In[3]:


# # Mock Input
# mat_times = np.array([0, 0.3, 0.6, 0.9])
# mat_freqs = np.array([440, 880])
# mat_amps = np.array([[1,2,3,4],[5,6,7,8]])


# In[4]:


# Input
mat_times = np.array(matlab_obj.get('times'))
mat_freqs = np.array(matlab_obj.get('freqs'))
mat_amps = np.array(matlab_obj.get('amps'))

# In[5]:


# Make 2d Matrix

amps_2d = mat_amps

n_times = mat_amps.shape[1]
n_freqs = mat_amps.shape[0]

times_2d = np.empty(shape=(1, n_times))
times_2d[0, :] = mat_times
times_2d = np.repeat(times_2d, n_freqs, axis=0)

freqs_2d = np.empty(shape=(n_freqs, 1))
freqs_2d[:, 0] = mat_freqs
freqs_2d = np.repeat(freqs_2d, n_times, axis=1)

# tmp = np.array(matlab_obj.get('freqs'))
# mat_freqs = mat_freqs.T
# mat_times = np.array(matlab_obj.get('times'))


# In[6]:


x = times_2d.flatten()
y = freqs_2d.flatten()
z = amps_2d.flatten()

points = np.column_stack([x, y, z]);

# In[7]:


isSignal = z > 0.04
isSignal
points = points[isSignal]
x = points[:, 0]
y = points[:, 1]
z = points[:, 2]

# In[8]:


# Clustering
n_clusters = 4

# specimens = points
# specimens = np.column_stack([x, np.log2(y), np.log2(z)])
spX = x / x.max()
spY = np.log2(y) / np.log2(y).max()
spZ = z / z.max()
# specimens = np.column_stack([spX*10, spY*10, spZ*10])
specimens = np.column_stack([spX * 10, spY * 10])
print(specimens)
print([spX.min(), spY.min(), spZ.min()])
print([spX.max(), spY.max(), spZ.max()])

# clustering = cl.AgglomerativeClustering(n_clusters).fit(specimens)
# print(clustering) 

clustering = cl.DBSCAN(min_samples=7).fit(specimens)
labels = clustering.labels_

print('<< labels >>')
print(labels)
print('length:', len(labels))
print('types:', np.max(labels) + 1)

# In[9]:


## Plot

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
fig = go.Figure(data, layout)
py.plot(fig, filename='./plotly/extracted.html')

# In[ ]:
