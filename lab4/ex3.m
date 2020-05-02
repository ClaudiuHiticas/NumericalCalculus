x = [0:6];
f = @(x) exp(sin(x));
y = f(x);

X = 0:0.1:6;
Y = newton(x, y, X);

clf('reset');
grid on;
plot(x, y, "o")
hold on;
plot(X, Y, "x")
