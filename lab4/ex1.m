X = [2.5 3.25];
x = [1, 1.5, 2, 3, 4];
f = [0, 0.17609, 0.30103, 0.47712, 0.60206];

Y = newton(x, f, X);
printf("Approx of lg(2.5) = %f, approx of lg(3.25) = %f \n", Y(1), Y(2));

yi = [10:35] ./10;

max_int_err = max(abs(log10(yi) - newton(x, f, yi)))

