xplot = -5:0.01:5;

f = @(x) sin(2*x);
df = @(x) 2*cos(2*x);

fplot = f(xplot);

plot(xplot,fplot);
hold on
grid on

nodes = linspace(-5,5,15);
fnodes = f(nodes);
fdnodes = df(nodes);

l = zeros(size(xplot));
len = size(xplot);

for i=1:len
    l(i)=Hermite_interp(nodes,fnodes,fdnodes,xplot(i));
end

plot(xplot,l);
plot(nodes,fnodes,'*');
legend('function','interpolation','nodes')
