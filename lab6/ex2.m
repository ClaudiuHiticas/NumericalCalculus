axis([0 1 0 1]);

[x, y] = ginput(5);

hold on;

plot(x, y, '*');

rng = linspace(0, 1, 5);
rng2 = linspace(0, 1, 500);

xx = spline(rng, x, rng2);
yy = spline(rng, y, rng2);

plot(xx, yy);

legend('interp points', 'cubic spln');