function func(R)
    f1 = @(x, y) (x - 2) ^ 2 + (y - 4) ^ 2 - R^2;
    f2 = @(x, y) y - (x / 2) - 1;

    x0 = [2; 4];

    F = @(x) [f1(x(1), x(2)); f2(x(1), x(2))];

    solution = fsolve(F, x0);

    disp('Solution:')
    disp(['x = ', num2str(solution(1))])
    disp(['y = ', num2str(solution(2))])
end