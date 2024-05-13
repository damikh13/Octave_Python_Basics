# params
n = 4;
m = 5;
a = 100;

# time
t_min = 0;
t_max = 2*m*pi;
dt = 0.01;
t = [t_min:dt:t_max];
t0 = 0;

x = a*sin(n*t + t0);
y = b*sin(m*t);
plot(x,y);