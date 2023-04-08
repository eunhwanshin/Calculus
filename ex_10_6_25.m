% Ex. 10.6-25: Hyperbolic Paraboloid
% x^2 - y^2 + z = 0

clear

x = linspace(-2, 2);
y = linspace(-2, 2);

[X, Y] = meshgrid(x, y);

Z = Y.^2 - x.^2;

surf(X, Y, Z);

xlabel('x')
ylabel('y')
zlabel('z')

xlim([-3 3])
ylim([-3 3])
zlim([-3 3])