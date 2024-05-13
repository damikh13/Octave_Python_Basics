# params
a = 1/4;
b = 1/8;
m = 10;
n = 10;

# time
t_min = 0;
t_max = 2*pi;
dt = 0.01;
t = [t_min:dt:t_max];

# parametric equations
x = cos(t) - a*cos(m*t) + b*sin(n*t);
y = sin(t) + a*sin(m*t) + b*cos(n*t);

# plot
hold on;
for k = 1:0.5:10
    plot (x/k, y/k)
end
hold off;