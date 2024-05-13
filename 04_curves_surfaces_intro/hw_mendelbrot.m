xmin = -2;
xmax = 2;
ymin = -2;
ymax = 2;
width = 400;
height = 400;
max_iter = 100;

x = linspace(xmin, xmax, width);
y = linspace(ymin, ymax, height);
[X, Y] = meshgrid(x, y);
Z = zeros(size(X));
Z0 = X + 1i*Y;

for iter = 1:max_iter
    Z = Z.^2 + Z0;
    mask = abs(Z) > 4;
    Z(mask) = 0;
end

colormap(hot);
% colormap(jet);
imagesc(x, y, abs(Z));
axis xy;
xlabel('Real');
ylabel('Imaginary');
title('Mandelbrot Set');