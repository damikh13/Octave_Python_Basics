function normal(f, x0, y0)
    # plot surface
    x = -2:0.1:2;
    y = -2:0.1:2;
    [X, Y] = meshgrid(x, y);
    Z = f(X, Y);
    surf(X, Y, Z);
    shading interp;
    axis equal;

    h = 1e-10;
    z0 = f(x0, y0);
    dx = (f(x0+h, y0) - f(x0, y0)) / h;
    dy = (f(x0, y0+h) - f(x0, y0)) / h;
    dz = 1;

    t = -1:0.1:0;
    hold on;
    n1 = x0 + t*dx;
    n2 = y0 + t*dy;
    n3 = z0 - t*dz;
    plot3(n1, n2, n3, 'r', 'linewidth', 4);
    hold off;
end
