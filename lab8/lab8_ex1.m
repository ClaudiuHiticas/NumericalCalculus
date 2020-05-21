a = 0;
b = 1;

%a
f = @(x) 2./(1+x.^2);
val = trapezium(a, b, f)

%b
x = [a : 0.001 : b];
hold on;
plot(x, f(x),'Color','r');
coords = [[0, 0]; [0, f(0)]; [1, f(1)]; [1, 0]];
fill(coords(:, 1), coords(:, 2), 'b');

legend('f(x)', 'trapezium');

%c
simpson = repsim(f, a, b, 10)
