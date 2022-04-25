% Ex 6.6-31: centroid

x = -20:0.01:20;
y = @(x) 5 * (400 - x.^2).^(1/3);

fill(x, y(x), [0.95 0.9 0.9], 'linestyle', ':')


% Aread
A = quad(y, -20, 20);

% Moments

M_x = quad(@(x) 0.5 * (y(x)).^2, -20, 20);
M_y = quad(@(x) x .* y(x), -20, 20);

% Centroid
x_bar = M_y/A;
y_bar = M_x/A;

hold on
plot(x_bar, y_bar, 'k*')
hold off
grid on
xlim([-25 25])
ylim([-5 50])

fprintf('Centroid = (%.4f, %.4f)\n', x_bar, y_bar);

