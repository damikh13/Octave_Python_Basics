'''
Plotting packages:
1. Matplotlib
2. Plotly
3. Seaborn
-------------
# Missingno
# Altair
# Bokeh
# Pygal
-------------
# Geoplotlib (maps)
-------------
Folium
'''

import matplotlib.pyplot as plt
import numpy as np

def f(x):
    return np.arctan(-0.0012*x**3 + 0.4*x**2+0.616*x + 6120) + 0.65*np.sin(0.24*x + 1.23) - 0.27*np.cos(0.21*x-0.17) - ( (np.sin(0.34*x + 0.16)) / (1 + 0.03*(x - 370.5) ** 2))

def plot_function(x, y):
    plt.style.use('ggplot')
    plt.plot(x, y)

def find_and_plot_first_point_below_threshold(x, threshold):
    for x_i in x:
        if f(x_i) < threshold:
            plt.scatter(x_i, f(x_i))
            print(x_i, f(x_i))
            break

x = np.linspace(0, 1000, int(1e6))
y = f(x)

plot_function(x, y)
find_and_plot_first_point_below_threshold(x, 0.2)

plt.show()