f = @(x,y) 20 + x.^2 - y.^2;
g = @(x,y) -20 - x.^2 - y.^2;
% normal_parametr(f, 0, -1)
normal(f, 0, -1)