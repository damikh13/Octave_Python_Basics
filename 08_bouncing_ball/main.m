gravity_factor  = 4;
g               = 9.81 * gravity_factor;
h0              = 10;
y0              = [h0; 0]; % y(0) = 10, y'(0) = 0
time_range_end  = 10;
time_range      = [0 time_range_end];
epsilon         = 1e-6;

f = @(t, y) [y(2); -g]; # y(1) = y, y(2) = y'

trajectory      = [];
max_iterations  = 10; # to avoid while true
for iteration = 1:max_iterations
    options = odeset('Events', @event_touch_ground);
    [t, y, time_of_event, y_of_event, index_of_event] = ode45(f, time_range, y0, options);
    
    trajectory = [trajectory; t, y];    # Add new trajectory to the existing one
    
    if isempty(index_of_event)          # no event was detected (ball didn't touch the ground)
        break;
    else                                # ball touched the ground
        velocity_of_event = y_of_event(2); % 2nd element is y'
        y0 = [0; -0.9 * velocity_of_event]; % y(0) = 0, y'(0) = -0.9 * y'(moment of time when ball touched the ground)

        time_range = [time_of_event, time_range_end]; % continue the simulation from the moment of time when ball touched the ground
    end
    
    % Check if the time range has become too small
    if abs(diff(time_range)) < epsilon
        break;
    end
end

trajectory_time = trajectory(:,1);
trajectory_y    = trajectory(:,2);

plot(trajectory_time, trajectory_y);

xlabel('t');
ylabel('y(t)');
title('the ball be bouncin');