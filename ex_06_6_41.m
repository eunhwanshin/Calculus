% Ex 6.6-41: Modeling Data

h = 10;
x = 0:h:40;
y = [30, 29, 26, 20, 0];

coef = [1, 4, 2, 4, 1] * h / 3;

A = sum(coef .* y);
Mx =  sum(coef .* y.^2 * 0.5);

fprintf("(a) Centroid by Simpson's Rule = (0, %.4f)\n", Mx/A)


fprintf("(b) 4th-degree polynomial fitting\n")
p = polyfit(x, y, 4)

A = quad(@(x) polyval(p, x), 0, 40);
Mx = 0.5 * quad(@(x) polyval(p, x).^2, 0, 40);

fprintf("(c) Centroid = (0, %.4f)\n", Mx/A)




