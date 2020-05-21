function [a, b] = least_squere(x, y)
    [n, m] = size(x);
    
    d = (m*(x*x')-sum(x)*sum(x));
    a = (m*x*y'-sum(x)*sum(y))/d;
    b = ((x*x')*sum(y)-(x*y')*sum(x))/d;
    
end
