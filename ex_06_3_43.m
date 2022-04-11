% Ex 6.3-43: volume of the water in a circular pond

h = 25;
x = 0:h:200;
depth = [20, 19, 19, 17, 15, 14, 10, 6, 0];

% Part (a) Integration by Simpson's Rule

y = x .* depth;
M = length(x);
V = y(1) + 4*sum(y(2:2:M)) + 2 * sum(y(3:2:M-1)) + y(M);
V = 2 * pi * h * V / 3;
fprintf("(a) Simpson's Rule: %.4f cubic feet\n", V);

% Part (b) Quadratic regression
p = polyfit(x, depth, 2);

fprintf('(b) Quadratic regression: depth = %.6f x^2 + %.4f x + %.4f\n', ...
  p(1), p(2), p(3));

x1 = 0:200;
plot(x1, polyval(p, x1), 'b')
hold on
plot(x, depth, 'r*')
hold off
grid on
title('(b) Quadratic Regression')
ylabel('Depth (feet)')
xlabel('Distance from center (feet)')

% Part (c): numerical integration using the quadratic function.
f = @(x) x .* ( p(1) * x.^2 + p(2) * x + p(3));
Vc = 2 * pi * quad(f, 0, 200);
fprintf('(c) %.4f cubic feet\n', Vc);

% Part (d) volume in gallons
fprintf('(d) %.4f gallons\n', Vc * 7.48)

