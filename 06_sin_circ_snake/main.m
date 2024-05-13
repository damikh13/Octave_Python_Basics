# 0. Initialize the environment
clear
clc
num_circles = 10;
phi = 0:0.01:2*pi;
r = 1/2;
n = 200;
x_start = -4*pi;
x_end = 4*pi;
dx = 0.01;
u = @(phi) r .* cos(phi);
v = @(phi) r .* sin(phi);
x0 = x_start;

# 1. Plot the function sin(x) from -4*pi to 4*pi
f = @(t) sin(t);
x = x_start:dx:x_end;
y = f(x);
figure
plot(x, y)
hold on
axis equal

# 2. Generate the snake (as 5 plot-circles)
snake_handles = [];
for i = 1:num_circles
  snake_handles(i) = plot(0, 0);
end
hold off

# 3. Animate the snake
for i = 1:n
    xt = x0;

    for k = 1:num_circles
        yt = f(xt);
        set(snake_handles(k), 'XData', u(phi) + xt, 'YData', v(phi) + yt);
        xt += 1.6 * r;
    end

    x0 += r/4;
    pause(0.01)
end