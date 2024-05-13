function res_matrix = generate_bool_cols(rows, cols)
    res_matrix = zeros(rows, cols);
    res_matrix(1:end, 1:2:end) = 1
endfunction