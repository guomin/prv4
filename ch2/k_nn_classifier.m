function z = k_nn_classifier(Z, v, k, X)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [l, Nl] = size(Z);
    [l, N] = size(X);
    c = max(v);
    for i = 1:N
        dist = sum((X(:, i) * ones(l, Nl) - Z) .^ 2);
        % 将计算得到的距离按升序排列
        [sorted, nearest] = sort(dist);
        
        % 计算k最近邻生成的类
        % 参考向量Z(:, i)
        refe = zeors(1, c);
        % 计算每个类的参考向量
        for q = 1 : k
            class = v(nearest(q));
            refe(class) = refe(class) + 1;
        end
        [val, z(i)] = max(refer);
    end
end