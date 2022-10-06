% ex_08_7_37.m

clear

% We can obtain P_8(x) by applying the followings:
%
% pkg load symbolic
% syms x
% f = cos(x)
% taylor(f, x, 0, 'order', 9)
%
% The result is
%
%     8      6    4    2
%    x      x    x    x
%  ----- - --- + -- - -- + 1
%  40320   720   24   2

f = @(x) cos(x);

P2 = @(x) 1 - x.^2 / 2;
P4 = @(x) 1 - x.^2 / 2 + x.^4 / 24;
P6 = @(x) 1 - x.^2 / 2 + x.^4 / 24 - x.^6 / 720;
P8 = @(x) 1 - x.^2 / 2 + x.^4 / 24 - x.^6 / 720 + x.^8 / 40320;

v = [-2:0.01:2] * pi;

plot(v, f(v))
hold on
plot(v, P2(v))
plot(v, P4(v))
plot(v, P6(v))
plot(v, P8(v))
hold off
ylim([-6 6])
grid on
legend('f(x)', 'P_2', 'P_4', 'P_6', 'P_8')


