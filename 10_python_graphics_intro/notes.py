import matplotlib.pyplot as plt
import numpy as np

# fig, ax = plt.subplots(projection = '3d')
fig, ax = plt.subplots(subplot_kw = {'projection': '3d'})

x = np.arange(-1, 1, 0.01)
y = np.arange(-1, 1, 0.01)
X,Y = np.meshgrid(x,y)

Z = X**2 - Y**2

s = ax.plot_wireframe(X, Y, Z, rstride = 10, cstride = 10)

plt.show()