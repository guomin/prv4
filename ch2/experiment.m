% 2.1
m1 = [1, 1]';
m2 = [7, 7]';
m3 = [15, 1]';
S1 = [12 0; 0 1];
S2 = [8 3; 3 2];
S3 = [2 0; 0 2];
P1 = [1/3 1/3 1/3]';
P2 = [0.6 0.3 0.1]';
m = [m1 m2 m3];
S(:, :, 1) = S1;
S(:, :, 2) = S2;
S(:, :, 3) = S3;
N = 1000;
randn('seed', 0); [X,y] = generate_gauss_classes(m, S, P1, N); plot_data(X, y, m);
randn('seed', 0); [X,y] = generate_gauss_classes(m, S, P2, N); plot_data(X, y, m);

% 2.2
m1 = [1,1]'; m2 = [12, 8]'; m3 = [16, 1]'; m = [m1 m2 m3]';
S1 = S2 = S3 = 4 * [1 0; 0 1];
S(:, :, 1) = S1;
S(:, :, 2) = S2;
S(:, :, 3) = S3;
N = 1000;
% 1 bayes
z = bayes_classifier(m, S, P, X);
compute_error(z, y);
