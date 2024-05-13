A = rand(3, 5);

A_upper_left_3x3 = A(1:3, 1:3);

det_A_upper_left_3x3 = det(A(1:3, 1:3));

disp(det_A_upper_left_3x3);

A(1, 1:3) = [0, 0, 0];

disp(A);

disp(det_A_upper_left_3x3);