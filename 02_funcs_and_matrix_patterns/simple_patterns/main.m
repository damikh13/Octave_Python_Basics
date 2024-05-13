matrix_size = input("size: ");
radius = input("rad: ");

for i = 1:radius
    res_matrix = generate_bool_circle(matrix_size, i)
    pause(0.1)
endfor