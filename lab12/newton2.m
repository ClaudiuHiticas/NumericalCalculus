function [x1,i] = newton2(x0, err, f, fd)
    for i=1:100
        x1 = x0 - f(x0)/fd(x0);
        if abs(f(x1)) < err || abs(x1-x0) < err || abs(x1-x0)/abs(x1) < err
            break
        endif
        x0 = x1;
    endfor
endfunction
