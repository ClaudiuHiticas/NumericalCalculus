x = 1:2:115;
y = sqrt(x);

[n, m] = size(x);

X = 115;

approx = aitken(x, y, X);

printf("Approximation of sqrt(115) using Aitken's algorithm = %f \n",
approx(m, m));
