function plot_data( X, y, m )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [l, N] = size(X);
    [l, c] = size(m);
    if(l ~= 2)
        fprintf('NO PLOT CAN BE GENERATED \n')
        return
    else
        pale = ['r.'; 'g.'; 'b.'; 'y.'; 'm.'; 'c.'];
        figure
        hold on
        
        for i = 1:N
            plot(X(1, i), X(2, i), pale(y(i), :))
        end
        for j = 1:c
            plot(m(1, j), m(2, j), 'k+')
        end 
        hold off
    end

end

