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


file = open("./assets/json/church2.json", 'r')
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

# %%
output_filename = os.path.splitext(input_filename)[0] + '.json'

with open('./output/json/' + output_filename, 'w') as outfile:
    outobj = dict(partials=points.tolist())
    json.dump(outobj, outfile)

print('Result file is at')
print('./output/json/' + output_filename)
