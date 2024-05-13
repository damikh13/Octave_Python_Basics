# params
n = 4;
m = 5;
a = 100;

# time
t_min = 0;
t_max = 2*m*pi;
dt = 0.01;
t = [t_min:dt:t_max];

# parametric equations
x = (1 + n/m)*cos((n/m)*t) - a*(n/m)*cos((1 + n/m)*t);
y = (1 + n/m)*sin((n/m)*t) - a*(n/m)*sin((1 + n/m)*t);

# plot
plot(x,y);