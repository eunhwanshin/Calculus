% ex_09_1_109.m
% Arc Length of x^2/25 + y^2/49 = 1
%
y = @(x) 7 * (1 - x.^2/25).^0.5;
dy = @(x) -49 * x ./ (25 * y(x));
L = @(x) (1 + dy(x).^2).^0.5;

fprintf('Arc Length = %.2f\n', 4 * quad(L, 0, 5));
