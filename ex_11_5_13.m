% Ex. 11.5-13: Investigation

clear

r = @(t) [t; (4-t.^2); t.^3];

fprintf('(a) %.3f\n', norm(r(2) - r(0)))

s = 0;

r_cur = r(0);
for t=0.5:0.5:2,
  r_prev = r_cur;
  r_cur = r(t);
  
  s = s + norm(r_cur - r_prev);
end

fprintf('(b) %.3f\n', s)

ds = @(t) (1 + (2*t).^2 + (3*t.^2).^2).^0.5;
fprintf('(d) %.3f\n', quad(ds, 0, 2))