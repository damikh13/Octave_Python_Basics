clc
disp("--------------------------------------------------------------------------------")



disp("rand() and diag() functions")
A = rand(5);
disp("rand(5) =")
disp(A)
y = diag(A);
disp("taking diag() of this matrix =")
disp(y)
disp("--------------------------------------------------------------------------------")

disp("ways to define a matrix")
A = [1 2; 3 4];
disp("A =")
disp(A)
B = [5 6; 7 8];
disp("B =")
disp(B)
x = [1 2];
disp("x =")
disp(x)
disp("--------------------------------------------------------------------------------")

disp("concatenating A and x in different ways")
disp("[A; x] =")
disp([A; x])
disp("[A, x'] =")
disp([A, x'])
disp("cat(1, A, B) =")
disp(cat(1, A, B))
disp("cat(2, A, B) =")
disp(cat(2, A, B))
disp("cat(3, A, B) = <3D matrix>")
disp("--------------------------------------------------------------------------------")

disp("working with vector x and reshaping")
x = 1:12;
disp("x =")
disp(x)
disp("reshape(x, 2, 6) =")
disp(reshape(x, 2, 6))
disp("reshape(x, 2, []) =")
disp(reshape(x, 2, []))
disp("--------------------------------------------------------------------------------")

disp("matrix multiplication and element-wise multiplication")
disp("A * B =")
disp(A * B)
disp("A .* B =")
disp(A .* B)
disp("A .* x = error: product: nonconformant arguments (op1 is 2x2, op2 is 1x12)")
disp("--------------------------------------------------------------------------------")

disp("matrix powers and solving linear equations")
disp("A^2 =")
disp(A^2)
A = [2 3 1; 3 1 -1; 2 -1 3];
b = [11; 2; 9];
x = A \ b;
disp("A \\ b =")
disp(x)
disp("--------------------------------------------------------------------------------")

disp("min(), size(), length() functions")
disp("min(A) =")
disp(min(A))
disp("min(A') =")
disp(min(A'))
disp("size(A) =")
disp(size(A))
disp("length(A) =")
disp(length(A))
disp("--------------------------------------------------------------------------------")

disp("concatenating A with itself along the third dimension and checking size")
cat(3, A, A);
disp("size(ans) =")
disp(size(ans))
disp("--------------------------------------------------------------------------------")

disp("writing matrix A to a file")
A = rand(3);
file1 = fopen("A_matrix.txt", 'w');
fprintf(file1, "%f | %f | %f \n", A');
fclose(file1);
disp("--------------------------------------------------------------------------------")

disp("writing matrix B to a file with a loop")
B = rand(2, 4);
n = size(B);
file2 = fopen("B_matrix.txt", 'w');
for i = 1:n(1)
    fprintf(file2, "%f | ", B(i,1:end-1));
    fprintf(file2, "%f", B(i,end));
    fprintf(file2, "\n");
end
fclose(file2);
disp("--------------------------------------------------------------------------------")

disp("plotting functions")
x = -2:0.1:2;
y1 = x.*(1-x) + 0.5;
y2 = exp(-0.5*x).*sin(x);

plot(x, y1, 'marker', 'p', 'markersize', 8)
hold on
plot(x, y2, 'linewidth', 3, 'color', 'm')
hold off
disp("--------------------------------------------------------------------------------")

disp("plotting functions with labels and title")
Poz = [20 40 620 540];
Fig = figure('Position', Poz, 'NumberTitle', 'on', 'Name', 'Graphics');
plot(x, y1, 'marker', 'p', 'markersize', 8)