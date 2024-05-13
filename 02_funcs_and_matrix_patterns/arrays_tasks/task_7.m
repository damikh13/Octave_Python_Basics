A = rand(8, 8);

max_in_rows = max(A, [], 2);
                   % [] is a placeholder for the dimension
                   %     2 means the second dimension
max_in_cols = max(A, [], 1);
                   % [] is a placeholder for the dimension
                   %     1 means the first dimension
max_all = max(max_in_rows);

disp(A);
disp(max_in_rows);
disp(max_in_cols);
disp(max_all);