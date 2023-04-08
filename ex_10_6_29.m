% Ex. 10.6-29: Ellipsoid
% 16x^2 + 9y^2 + 16z^2 -32x - 36y + 36 = 0

clear

z = linspace(-1, 1);
u = linspace(0, 2*pi);

[Z, U] = meshgrid(z, u);

R = (1 - Z.^2).^0.5 / 3;
X = 1 + 3 * R .* cos(U);
Y = 2 + 4 * R .* sin(U); 

surf(X, Y, Z);

xlabel('x')
ylabel('y')
zlabel('z')

xlim([-4 4]+1)
ylim([-4 4]+2)
zlim([-4 4])