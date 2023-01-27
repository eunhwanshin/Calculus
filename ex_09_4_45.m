% Exercise 9.4-45:

theta = (0:0.01:0.5)*pi;
r = 2 * (sin (2*theta)).^0.5;

x = r .* cos(theta);
y = r .* sin(theta);

figure
plot(x, y)
hold on
plot(-x, -y);
hold off
title('r^2 = 4 sin 2\theta')
