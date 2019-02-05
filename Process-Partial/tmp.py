import numpy as np
import matplotlib.pyplot as plt
import pywt
import soundfile as sf
import matplotlib.pyplot as plt
import plotly.offline as py
import plotly.graph_objs as go
from scipy.interpolate import interp1d
py.init_notebook_mode(connected = True)

print('Hello World')
array = np.array([1, 2, 3, 4, 5, 6, 3, 2, 1])
plt.plot(array)
plt.show()