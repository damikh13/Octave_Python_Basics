A = rand(6, 3);

A_upper_left_3 = A(1:3, 1:3);

disp(A)
disp("------------------------------")
disp(A_upper_left_3)

det_of_block = det(A_upper_left_3);
disp(det_of_block)

if det_of_block != 0
    inv_of_block = inv(A_upper_left_3);
    disp(inv_of_block)

    product = A_upper_left_3 * inv_of_block
    diffirence = abs(eye(3) - product)
    % if abs(eye(3) - product) < 0.0001
    if diffirence < 0.0001
        disp("proved")
    end
end