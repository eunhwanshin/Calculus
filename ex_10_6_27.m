% Ex. 10.6-27: Elliptic Cone
% z^2 = x^2 + y^2/4

clear

z = linspace(-2, 2);
u = linspace(0, 2*pi);

[Z, U] = meshgrid(z, u);

R = abs(Z);
X = R .* cos(U);
Y = 2 * R .* sin(U); 

surf(X, Y, Z);

xlabel('x')
ylabel('y')
zlabel('z')

xlim([-4 4])
ylim([-4 4])
zlim([-4 4])