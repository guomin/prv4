function z = k_nn_classifier(Z, v, k, X)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
    [l, Nl] = size(Z);
    [l, N] = size(X);
    c = max(v);
    for i = 1:N
        dist = sum((X(:, i) * ones(l, Nl) - Z) .^ 2);
        % ������õ��ľ��밴��������
        [sorted, nearest] = sort(dist);
        
        % ����k��������ɵ���
        % �ο�����Z(:, i)
        refe = zeors(1, c);
        % ����ÿ����Ĳο�����
        for q = 1 : k
            class = v(nearest(q));
            refe(class) = refe(class) + 1;
        end
        [val, z(i)] = max(refer);
    end
end