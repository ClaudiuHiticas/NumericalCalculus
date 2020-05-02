x = [1 2 3 4 5];
y = [22 23 25 30 28];

fprintf("Newton interpolation at 2.5 pounds = %d\n", newton(x, y, 2.5)) 
X = 1:0.1:5;
Y = newton(x, y, X);

plot(x, y, "o")
hold on;
plot(X, Y, "+")

