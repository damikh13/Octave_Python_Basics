# params
a = 20;
b = 3;
n = 5;
k = 15;

# time
t_min = -pi/2;
t_max = 3*pi/2;
dt = 0.1;
t = [t_min:dt:t_max];

# parametric equations
r = (a ./ (a + (t - pi/2))) .* (b - sin(k*t) - cos(m*t));

# plot
plot(r);