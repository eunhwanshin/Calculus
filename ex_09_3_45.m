% Exercise 9.3-45: Path of a Projectile

a = 90 * cos(pi/6);
b = 90 * sin(pi/6);
t_end = b/16;

t = 0:0.01:t_end;

x = a * t;
y = b * t - 16 * t.^2;

plot(x, y)
title('(a)')
grid on

fprintf('(b) %.4f\n', a * t_end)

f = @(x) (a^2 + (b - 32 * x).^2).^0.5;
fprintf('(c) %.4f\n', quad(f, 0, t_end))

theta = [30:0.1:60];
d2r = pi/180;
N = length(theta);
L = zeros(N,1);

for i=1:N,
  ang = theta(i) * d2r;

  a = 90 * cos(ang);
  b = 90 * sin(ang);
  te = b/16;
  g = @(x) (a^2 + (b - 32 * x).^2).^0.5;
  L(i) = quad(g, 0, te);
end

[max_L, max_i] = max(L);
fprintf('Max trajectory length %.1f feet when theta = %.1f\n', max_L, theta(max_i))