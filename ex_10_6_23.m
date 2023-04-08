% Ex. 10.6-23: Elliptic Paraboloid
clear

y = linspace(0, sqrt(3));
u = linspace(0,2*pi);

[Y, U] = meshgrid(y, u);

R = Y.^0.5;
X = R .* cos(U);
Z = R .* sin(U);

surf(X, Y, Z);

xlabel('x')
ylabel('y')
zlabel('z')

xlim([-3 3])
ylim([0 sqrt(3)])
zlim([-3 3])