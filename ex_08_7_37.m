% ex_08_7_37.m

clear

% pkg load symbolic

syms x
f = cos(x)

P2 = taylor(f, x, 0, 'order', 3)
P4 = taylor(f, x, 0, 'order', 5)
P6 = taylor(f, x, 0, 'order', 7)
P8 = taylor(f, x, 0, 'order', 9)

v = [-2:0.01:2] * pi;
y = subs(f, x, v);
plot(v, double(y))
hold on
y = subs(P2, x, v);
plot(v, double(y))

y = subs(P4, x, v);
plot(v, double(y))

y = subs(P6, x, v);
plot(v, double(y))

y = subs(P8, x, v);
plot(v, double(y))

hold off
ylim([-0.5 0.5] * pi)
grid on
legend('f(x)', 'P_2', 'P_4', 'P_6', 'P_8')
ylim([-6 6])
grid on

