% Ex 6.6-29: centroid

x = 0:0.01:5;
y = @(x) 10 * x .* (125 -x.^3).^0.5;

fill(x, y(x), [0.95 0.9 0.9], 'linestyle', ':')


% Aread
A = quad(y, 0, 5);

% Moments

M_x = quad(@(x) 0.5 * (y(x)).^2, 0, 5);
M_y = quad(@(x) x .* y(x), 0, 5);

% Centroid
x_bar = M_y/A;
y_bar = M_x/A;

hold on
plot(x_bar, y_bar, 'k*')
hold off
grid on
xlim([-1 6])
ylim([-50 400])

fprintf('Centroid = (%.4f, %.4f)\n', x_bar, y_bar);

