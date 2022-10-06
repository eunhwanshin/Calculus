% ex_08_7_39.m

clear

f = @(x) log(x.^2 + 1);

P2 = @(x) x.^2;
P4 = @(x) x.^2 - x.^4 / 2;
P6 = @(x) x.^2 - x.^4 / 2 + x.^6 / 3;
P8 = @(x) x.^2 - x.^4 / 2 + x.^6 / 3 - x.^8 / 4;

v = [-4:0.01:4];
plot(v, f(v))
hold on
plot(v, P2(v))
plot(v, P4(v))
plot(v, P6(v))
plot(v, P8(v))
hold off
ylim([-3 3])
grid on
legend('f(x)', 'P_2', 'P_4', 'P_6', 'P_8')



