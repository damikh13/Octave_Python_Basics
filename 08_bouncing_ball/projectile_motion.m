function dy = projectile_motion(t, y)
  g = 9.81;
  dy = zeros(4,1);
  dy(1) = y(3);
  dy(2) = y(4);
  dy(3) = 0;
  dy(4) = -g;
end

