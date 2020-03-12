function Lab2_1()
    clf;
    axis square;
    
    l1 = @(x) x;
    l2 = @(x) 2/3.*x.^2 - 1/2;
    l3 = @(x) 5/2.*x.^3 - 3/2.*x;
    l4 = @(x) 35/8.*x.^4 - 15/4.*x.^2 + 3/8;
    
    x = 0:0.01:1;
    
    subplot(2, 2, 1);
    plot(x, l1(x))
    title("l1(x)")
    legend("l1(x)")
    
    subplot(2, 2, 2)
    plot(x, l2(x))
    title("l2(x)")
    legend("l2(x)")
    
    subplot(2, 2, 3)
    plot(x, l3(x))
    title("l3(x)")
    legend("l3(x)")
    
    subplot(2, 2, 4)
    plot(x, l4(x))
    title("l4(x)")
    legend("l4(x)")
    
end

function Lab2_2(n)
    clf;
    axis square;
    hold on;
    
    Tn = @(n) @(x) cos(n * acos(x));
        
    for i = 1:n
        fplot(Tn(i), [-1, 1])
    end
    
    
end

function Lab2_2b(n)
    clf;
    axis square;
    hold on;
    
%     Tn = @(n) @(x) cos(n * acos(x));
    T0 = @(x) ones(1, length(x));
    fplot(T0, [-1, 1])
    T1 = @(x) x;
    fplot(T1, [-1, 1])
    
    for i = 2:n
        Tn = @(x)2 * x .* T1(x) - T0(x);
        fplot(Tn, [-1, 1])
        T0 = T1;
        T1 = Tn;
        
    end
    
    
end

function Lab2_3(n)  
    clf;
    axis square;
    hold on;
    
    Tn = @(x) ones(1, length(x));
    fplot(Tn, [-1, 3])
    
    expo = @(x) exp(x);
    fplot(expo, [-1, 3])
    
    for k = 1 : n
        Tn = @(x) Tn(x) + 1/factorial(k) * x ^ k;
        fplot(Tn, [-1, 3])
    end

end