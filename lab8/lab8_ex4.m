a=1; b = 2;
f = @(x) x .* log(x);
n = 1;
true_value = 0.636294368858383;
err = 1e-4;

while abs(reptrap(f, a, b, n) - true_value) > err
    n = n + 1;
endwhile

disp(n);
disp(reptrap(f, a, b, n));
