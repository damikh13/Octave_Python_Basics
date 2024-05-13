h = 10;
v0 = 50;
angle = 60;

% Convert angle to radians
angle_rad = angle * pi / 180;

y0 = [0; h; v0*cos(angle_rad); v0*sin(angle_rad)];

tspan = [0 10];

options = odeset('Events', @events);

[t, y] = ode45(@projectile_motion, tspan, y0, options);

% Plot the trajectory
plot(y(:,1), y(:,2));
xlabel('Distance (m)');
ylabel('Height (m)');
title('Projectile trajectory');