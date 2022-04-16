% Ex 6.4-51: Modeling Data

x = 0:50:400;
y = [540, 390, 390, 430, 425, 360, 275, 125, 0];

fprintf('(a) Polynomial fit \n');
p = polyfit(x, y, 4)

p_int = polyint(p);
area = polyval(p_int, 400);
fprintf('(b) Area = %.4f square feet (%.4f acres)\n', area,  area * 2.29568e-5);

pd = polyder(p);

s = quad(@(x) (1 + polyval(pd,x).^2).^0.5, 0, 400);
fprintf('(c) Length of the stream = %.4f feet\n', s);

