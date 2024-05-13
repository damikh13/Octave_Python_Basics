n = input("[n x n]: ");

# Diagonal
diag_vec = -2 * ones(n,1);
diag_surr = ones(n-1,1);
res = diag(diag_vec);   # all other elements are 0

res = res + diag(diag_surr,1) + diag(diag_surr,-1);


# Corners
res(n, 1) = 1;
res(1, n) = 1;

disp(res);