function res_matrix = generate_bool_circle(matrix_size, radius)
    res_matrix = zeros(matrix_size);

    matrix_center = (matrix_size+1)/2;
    for i = 1 : matrix_size
        for j = 1 : matrix_size
            distance_to_center = sqrt((i - matrix_center)^2 + (j - matrix_center)^2);
            if distance_to_center <= radius
                res_matrix(i, j) = 1;
            endif
        endfor
    endfor

endfunction