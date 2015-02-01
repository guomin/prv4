function [ X, y ] = generate_gauss_classes( m, S, P, N )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
    [l, c] = size(m);
    X = [];
    y = [];
    for j = 1:c
        t = mvnrnd(m(:, j), S(:, :, j), fix(P(j) * N));
        X = [X t'];
        y = [y ones(1, fix(P(j) * N)) * j];
    end

end

