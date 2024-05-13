function root = newton_method(f, df, x0, tol, num_of_iter)
    root = x0;
    for i = 1:num_of_iter
        root = root - f(root)./df(root);
        approx_error = abs(f(root));
        if approx_error < tol
            break;
        end
    end
end