x = [1:7];
y = [13, 15, 20, 14, 15, 13, 10];

plot(x, y, '*');
hold on;

z = [1:0.01:10];
[a, b] = least_squere(x, y)

plot(z, a*z + b);
for i = 1:7
    plot([x(i), x(i)], [y(i), x(i)*a+b]);
end

E = norm(y-a*x-b)^2
xlabel('time');
ylabel('temp');


