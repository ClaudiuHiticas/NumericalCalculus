r = 110;
p = 75;
a = 0;
b = 2*pi;
n1 = 5;
n2 = 10;

eq = 60*r/(r*r - p*p);

f =  @(x) sqrt(1-(p/r)^2*sin(x));

integ1 = reptrap(f, a, b, n1);
integ2 = reptrap(f, a, b, n2);

integ_val1 = eq * integ1
integ_val2 = eq * integ2

