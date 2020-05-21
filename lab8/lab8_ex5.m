a = 0;
b = pi;

f = @(x) 1 ./ (4+sin(20 .*x));

n1 = 10;
n2 = 30;

approx1 = repsim(f, a, b, n1)
approx2 = repsim(f, a, b, n2)
