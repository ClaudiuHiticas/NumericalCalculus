t = [0, 10, 20, 30, 40, 60, 80, 100];
p = [0.0061, 0.0123, 0.0234, 0.0424, 0.0738, 0.1992, 0.4736, 1.0133];

p1 = polyfit(t, p, 2);
p2 = polyfit(t, p, 4);

t1 = polyval(p1, 45);
t2 = polyval(p2, 45);
val = 0.095848;

printf("Error for degree 2: %f\n", (val-t1)^2)
printf("Error for degree 4: %f\n", (val-t2)^2)

z = [0:0.1:100];

hold on;
plot(t, p, '*');
plot(z, polyval(p1, z),'Color','r');
plot(z, polyval(p2, z),'Color','b');


