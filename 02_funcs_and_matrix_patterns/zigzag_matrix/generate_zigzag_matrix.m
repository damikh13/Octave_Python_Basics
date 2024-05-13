function result_matrix = generate_zigzag_matrix(n)
    result_matrix = zeros(n);
    i = 1;
    j = 1;
    for k = 1:n*n
        result_matrix(i, j) = k;

        if mod(i+j, 2) == 0
            if j < n
                j = j + 1;  % move right
            else
                i = i + 1;  % if we reached right side, move down
                continue;
            end

            if i > 1
                i = i - 1;  % and move up
            end
        else
            if i < n
                i = i + 1;  % move down
            else
                j = j + 1;  % if we reached bottom, move right
                continue;
            end

            if j > 1
                j = j - 1;  % and move left
            end
        end
        % disp(result_matrix)
        printf("[i, j] = [%d, %d]\n", i, j)
        disp('-------------------------------------')
    end
end