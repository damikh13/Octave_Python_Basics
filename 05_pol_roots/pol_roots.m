f = @(z) z.^3 - 1;
df = @(z) 3*z.^2;

x = linspace(-2, 2, 50);
y = linspace(-2, 2, 50);
[real_part, imag_part] = meshgrid(x, y);

z = real_part + imag_part * 1i;

tol = 1e-5;
num_of_iter = 100;

all_roots = [];
for r = 1:50
    for c = 1:50
        initial_guess = z(r, c);
        curr_root = newton_method(f, df, initial_guess, tol, num_of_iter);

        rounded_real_part = round(real(curr_root) * 1e4) / 1e4;
        rounded_imag_part = round(imag(curr_root) * 1e4) / 1e4;
        rounded_root = rounded_real_part + rounded_imag_part * 1i;
        all_roots = [all_roots, rounded_root];
    end
end

unique_roots = unique(all_roots);
disp(unique_roots);