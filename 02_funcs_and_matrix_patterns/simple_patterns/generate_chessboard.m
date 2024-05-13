function chessboard = generate_chessboard(rows, cols)
    chessboard = zeros(rows, cols);     % initialize with zeros
    chessboard(1:2:end, 1:2:end) = 1;   % get all odd rows, then get all odd elements in those rows, put ones
    % [x    x   x   x] <--
    % [x    x   x   x]
    % [x    x   x   x] <--
    % [x    x   x   x]
    %  ^        ^
    chessboard(2:2:end, 2:2:end) = 1;   % 

    % for i = 1 : 1 : rows,
    %     for j = 1 : 1 : cols,
            % if (mod(i, 2) == 0 && mod(j, 2) != 0) || (mod(i, 2) != 0 && mod(j, 2) == 0)
                % chessboard(i, j) = 1;
    %         else
    %             chessboard(i, j) = 0;
    %         endif
    %     endfor
    % endfor

endfunction