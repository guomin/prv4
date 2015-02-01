function z = bayes_classifier( m, S, P, X )
%BAYES_CLASSIFIER Summary of this function goes here
%   Detailed explanation goes here
    [l, c] = size(m);
    [l, N] = size(X);
    for i = 1:N
        for j = 1:c
            t(j) = P(j) * comp_gauss_dens_val(m(:, j), ...
                S(:, :, j), X(:, i));
        end
        % 确定最大值Pi * p(x/wi)
        [num, z(i)] = max(t);
    end

end

