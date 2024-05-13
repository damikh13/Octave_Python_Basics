function [value,isterminal,direction] = events(t,y)
  value = y(2); % Detect height = 0
  isterminal = 1; % Stop the integration
  direction = -1; % Negative direction only
end
