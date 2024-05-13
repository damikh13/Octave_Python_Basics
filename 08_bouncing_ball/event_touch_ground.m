function [value,isterminal,direction] = event_touch_ground(t, y)
    value       = y(1); # stop when y = 0
    isterminal  = 1;    # stop the integration
    direction   = -1;   # height is decreasing
end