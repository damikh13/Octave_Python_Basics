figure;
axes('position',[0.1, 0.3, 0.8, 0.6]);
% global t;
% t = linspace(0, 8*pi, 20);
% x = t .* cos(t);
% y = t .* sin(t);
% plot(x,y);
axis([-100, 100, -100, 100]);

hslider = uicontrol('style', 'slider',
                    'Units', 'normalized',
                    'position',[0.1, 0.3, 0.8, 0.05],
                    'min', 1,
                    'max', 50,
                    'value', 10,
                    'callback', {@plotstuff});

function plotstuff(h, event)
    % global t;
    t = linspace(0, 8*pi, 100);
    n = get(h, 'value');
    x = n * t .* cos(t);
    y = n * t .* sin(t);
    plot(x,y);
    axis([-100, 100, -100, 100]);
end

% figure;
% hslider = uicontrol('style', 'slider',
%                     'Units', 'normalized',
%                     'position',[0.1, 0.1, 0.8, 0.05],
%                     'min', 1,
%                     'max', 10,
%                     'value', 3,
%                     'callback', {@plotstuff});

% function plotstuff(h, event)
%     R = get(h, 'value');
%     % pkg load symbolic;
%     syms x y;
%     [X, Y] = solve(y == x/2 + 1, (x - 2).^2 + (y - 4).^2 == R.^2, x, y);
%     X = double(X);
%     disp(X);
%     Y = double(Y);

%     t = linspace(0, 2*pi, 100);
%     x_circ = R * sin(t) + 2;
%     y_circ = R * cos(t) + 4;

%     x_line = -20:0.1:20;
%     y_line = x_line ./2 + 1;

%     plot(x_circ, y_circ, 'r');
%     hold on;
%     plot(X, Y, 'o');
%     plot(x_line, y_line, 'g');
    
%     axis([-20, 20, -20, 20]);
%     grid on;
%     axis equal;
%     hold off;
% end