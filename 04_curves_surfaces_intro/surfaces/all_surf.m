% 3D Line Plot
t = 0:0.05:9*pi;
x = 2*sin(t);
y = 3*cos(t);
figure(1);
plot3(x, y, t, 'b*') % 3D plot of a helix
title('3D Line Plot')

% 3D Comet Plot
figure(2);
comet3(x, y, t) % 3D comet plot of a helix
grid on
title('3D Comet Plot')

% 3D Mesh Plot
[X, Y] = meshgrid(-pi:0.05:pi);
Z = 20 - X.^2 - Y.^2;
figure(3);
mesh(X, Y, Z) % 3D mesh plot of a paraboloid
title('3D Mesh Plot')

% parametric surface plot
t = 0.5;
phi = -pi/2:0.05:pi/2 + t;
theta = -pi:0.05:pi + t;
[PI, THETA] = meshgrid(phi, theta);
x = cos(PI) .* cos(THETA);
y = cos(PI) .* sin(THETA);
z = sin(PI);
figure(4);
mesh(x, y, z) % 3D mesh plot of a sphere
title('Parametric Surface Plot')

% sphere mesh plot with subplot
[X, Y, Z] = sphere(50);
figure(5);
subplot(1, 2, 1);
mesh(X, Y, Z); % 3D mesh plot of a sphere
title('Sphere Mesh Plot (Hidden)')
hidden off;
subplot(1, 2, 2);
mesh(X, Y, Z); % 3D mesh plot of a sphere
hidden on;
title('Sphere Mesh Plot')

% surface plot of a paraboloid
x = -pi:0.05:pi;
y = -pi:0.05:pi;
[X, Y] = meshgrid(x, y);
Z = 20 - X.^2 - Y.^2;
figure(6);
surf(X, Y, Z); % 3D mesh plot of a paraboloid
title('Surface Plot of a Paraboloid')