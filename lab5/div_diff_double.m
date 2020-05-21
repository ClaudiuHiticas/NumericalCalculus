function T = div_diff_double(nodes, values, der_values)

    n = 2*length(nodes);
    T = NaN(n);
    double_nodes=repelem(nodes,2);
    T(:,1) =repelem(values,2)';
    T(1:2:end-1,2)=der_values';
    T(2:2:end-2,2)=diff(values)'./diff(nodes)';

    for j=3:n
        for i=1:n-j+1
            T(i,j)=(T(i+1,j-1)-T(i,j-1))/...
                   (double_nodes(i+j-1)-double_nodes(i));
        endfor
    endfor
endfunction
