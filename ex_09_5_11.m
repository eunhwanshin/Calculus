% Exercise 9.5-11:


r = @(theta) 1 + 2 * cos(theta);

theta = [0:0.01:2]*pi;
x = r(theta) .* cos(theta);
y = r(theta) .* sin(theta);

figure
plot(x, y)
hold on

theta = [-2:0.01:4]*pi/3;
x = r(theta) .* cos(theta);
y = r(theta) .* sin(theta);
fill(x, y, 'r')
grid on
axis equal
ylim([-2 2])
