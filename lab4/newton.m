function N = newton(x, f, X)
    A = div_diff(x, f);
    A = A(1,3:end);
    C = [ones(size(X')), cumprod(X' - x(1:end-1), dim=2)];
    N = A * C';
end
