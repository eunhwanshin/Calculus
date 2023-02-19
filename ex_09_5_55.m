% Exercise 9.5-55: 

clear
r = @(x) 4 * cos(2*x);
dr = @(x) -8 * sin(2*x);
S = @(x) r(x) .* sin(x) .* (r(x).^2 + dr(x).^2).^0.5;
fprintf('Surface area = %.2f\n', 2*pi*quad(S, 0, pi/4))