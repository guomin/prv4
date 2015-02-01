function clas_error = compute_error( y, y_est)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
    [q, N] = size(y);
    c = max(y);
    clas_error = 0;
    for i = 1:N
        if(y(i) ~= y_est(i))
            clas_error = clas_error + 1;
        end
    end
    clas_error = clas_error / N;
end

