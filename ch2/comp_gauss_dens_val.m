function z = comp_gauss_dens_val( m, S, x )
%COMP_GAUSS_DENS_VAL Summary of this function goes here
%   Detailed explanation goes here
    [l,q] = size(m);
    z = (1/((2*pi)^(1/2) * det(S) ^ 0.5))...
        * exp(-0.5 * (x-m)' * inv(S) * (x-m));
end

