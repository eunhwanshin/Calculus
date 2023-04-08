% Ex. 10.6-19: Ellipsoid
clear

y = linspace(-2, 2);
u = linspace(0,2*pi);

[Y, U] = meshgrid(y, u);

R = (1 - Y.^2/4).^0.5;
X = R .* cos(U);
Z = R .* sin(U);

surf(X, Y, Z);

xlabel('x')
ylabel('y')
zlabel('z')

xlim([-2 2])
ylim([-2 2])
zlim([-2 2])