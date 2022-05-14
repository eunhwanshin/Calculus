% Ex 7.3-95: Modeling Data

% Months
t = 0:12;
M = length(t);

% Maximum temperature
H = [30.9, 32.2, 41.1, 53.7, 64.6, 74.0, ...
     78.2, 77.0, 71.0, 60.1, 47.1, 35.7, 30.9];

% Minimum temperature
L = [18.0, 17.7, 25.8, 36.1, 45.4, 55.2, ...
     59.9, 59.4, 53.1, 43.2, 34.3, 24.2, 18.0];

x = 0:0.01:12;

% Coefficients from Simpson's Integration
a0 = (H(1) + 4*sum(H(2:2:M)) + 2 * sum(H(3:2:M-1)) + H(M))/3/12;
c = H .* cos(pi * t /6);
a1 = (c(1) + 4*sum(c(2:2:M)) + 2 * sum(c(3:2:M-1)) + c(M))/3/6;
s = H .* sin(pi * t /6);
b1 = (s(1) + 4*sum(s(2:2:M)) + 2 * sum(s(3:2:M-1)) + s(M))/3/6;

fprintf('H(t): a0 = %.4f, a1 = %.4f, b1 = %.4f\n', a0, a1, b1)

Hm =  a0 + a1 * cos(pi * x/6) + b1 * sin(pi * x/6);

a0 = (L(1) + 4*sum(L(2:2:M)) + 2 * sum(L(3:2:M-1)) + L(M))/3/12;
c = L .* cos(pi * t /6);
a1 = (c(1) + 4*sum(c(2:2:M)) + 2 * sum(c(3:2:M-1)) + c(M))/3/6;
s = L .* sin(pi * t /6);
b1 = (s(1) + 4*sum(s(2:2:M)) + 2 * sum(s(3:2:M-1)) + s(M))/3/6;

Lm =  a0 + a1 * cos(pi * x/6) + b1 * sin(pi * x/6);

fprintf('L(t): a0 = %.4f, a1 = %.4f, b1 = %.4f\n', a0, a1, b1)

subplot(3,1,1)
plot(x, Hm)
hold on
plot(t, H, '*')
hold off
grid on
ylabel('Maximum')
title('Temperature')

subplot(3,1,2)
plot(x, Lm)
hold on
plot(t, L, '*')
hold off
grid on
ylabel('Minimum')

subplot(3,1,3)
plot(x, Hm - Lm)
ylabel('H(t) - L(t)')
grid on

