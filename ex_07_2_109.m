% Ex 7.2-101: Euler's method

dy = @(x) x .* exp(-x);
y = @(x) 1 - exp(-x) .* (x+1);

% (b) True solution

x = 0:0.01:4;
plot(x, y(x), 'b');
hold on

% part (c) : Euler's method with dx = 0.05
dx1 = 0.05;
x1 = 0:dx1:4;
n1 = length(x1);
y1 = zeros(1,n1);
for i=2:n1,
  y1(i) = y1(i-1) + dy(x1(i-1)) * dx1;
end
plot(x1, y1, 'g')

% part (d) : Euler's method with dx = 0.1
dx2 = 0.1;
x2 = 0:dx2:4;
n2 = length(x2);
y2 = zeros(1,n2);
for i=2:n2,
  y2(i) = y2(i-1) + dy(x2(i-1)) * dx2;
end
plot(x2, y2, 'r')
hold off
grid on
legend('Truth', '\Delta x = 0.05', '\Delta x = 0.1', 'location', 'northwest')
title("Euler's Method")

fprintf('True f(4) = %.4f\n', y(4));
fprintf("Euler's method with dx = 0.05: %.4f\n", y1(n1));
fprintf("Euler's method with dx = 0.1 : %.4f\n", y2(n2));



