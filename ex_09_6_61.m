% Exercise 9.6-61: Pluto' motion 

clear

a = 5.900e+9; % kilometers
e = 0.2481;   % eccentricity  
e2 = e^2;
b = sqrt(1-e2) * a;
 
r = @(t) (1-e^2)*a ./(1-0.2481 * cos(t));
r2 = @(t) r(t).^2;

%  Part (a)

T = 248; % period (years)
A_total = pi * a * b; % total area
A = 0.5 * quad(r2, 0, pi/9);

dA_dt = A_total/T;

dt = A / dA_dt; 

fprintf('Part (a) area = %.3e km^2, time = %.3f years\n', A, dt); 


% Part (b)
r1 = r(pi);

da = 2*A/r1^2; % intial guess

for i=1:4,
  A_b = 0.5 * quad(r2, pi, pi + da);
  dA = A - A_b;
  
  da = da + 2* dA/r1^2;
end

fprintf('Part (b) angle = %.4f rad\n', da); 

% Part (c)

dr = @(t) -(1-e2)*a * e * sin(t) ./ (1-e*cos(t)).^2;
dr2 = @(t) dr(t).^2;

ds = @(t) (r2(t) + dr2(t)).^0.5; 
s1 = quad(ds, 0, pi/9);
s2 = quad(ds, pi, pi + da);

fprintf('Part (c): (a) %.3e km, %.3e km/yr, (b) %.3e km, %.3e km/yr\n', ...
   s1, s1/dt, s2, s2/dt);