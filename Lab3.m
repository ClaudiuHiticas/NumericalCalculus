function res = barycentric(x)
    m = length(x);
    res = [];
    for i = 1:m
        p = 1;
        for j = 1:m
            if j ~= i
                p =  p .* (x(i) - x(j));
                
            end
        end
        res = [res, 1 / p];
    end
    

function res = Lmf(x, f, X)
    res = [];
    a = barycentric(x);
    for j = 1 : length(X)
        up = 0;
        down = 0;
        for i = 1 : length(x)
            up = up + ((a(i) .* f(i)) ./ (X(j) - x(i)));
            down = down + (a(i) ./ (X(j) - x(i)));
        end
    end
    
%     res = up / down;
%     plot([x, X], [f, res]);
    res = [res, up / down];
end


clf;
hold on;
x = [1930, 1940, 1950, 1960, 1970, 1980];
f = [123203, 131669, 150697, 179323, 203212, 226505];
L = @(X) Lmf(X);
fplot(L, [1920, 1990]);
plot(x, f, 'ok');