# Ex. 12-9.23: find the location of the distribution center for three outlets
import matplotlib.pyplot as plt
import numpy as np

def dist1(x,y):
    return (x**2 + y**2)**0.5

def dist2(x,y):
    return ((x+2)**2 + (y-2)**2)**0.5

def dist3(x,y):
    return ((x-4)**2 + (y-2)**2)**0.5

def S(x,y):
    return dist1(x,y) + dist2(x,y) + dist3(x,y)

def Sx(x,y):
    return x/dist1(x,y) + (x+2)/dist2(x,y) + (x-4)/dist3(x,y)

def Sy(x,y):
    return y/dist1(x,y) + (y-2)/dist2(x,y) + (y-2)/dist3(x,y)

# (c)
x, y = 1, 1
sx, sy = Sx(x,y), Sy(x, y)
theta = np.arctan2(-sy, -sx) * 180 / np.pi
if theta < 0:
    theta += 360
print(f'(c) [{-sx}, {-sy}]; direction {theta}')

# (d) and (e) Find t that minimizes S(x1 - Sx*t, y1 - Sy*t) using Newton's method
for k in range(3):
  t = 0
  for i in range(5):
    x1, y1 = x - sx * t, y - sy * t
    d1 = dist1(x1, y1)
    d2 = dist2(x1, y1)
    d3 = dist3(x1, y1)
    st = (-sx * x1 - sy * y1)/d1 + (-sx*(x1+2)-sy*(y1-2))/d2 + (-sx*(x1-4)-sy*(y1-2))/d3
    stt = (sx**2+sy**2)/d1 - (-sx*x1-sy*y1)**2/d1**3 + (sx**2+sy**2)/d2 - (-sx*(x1+2)-sy*(y1-2))**2/d2**3 + (sx**2+sy**2)/d3 - (-sx*(x1-4)-sy*(y1-2))**2/d3**3
    t = t - st/stt
  # update point
  x, y = x - sx * t, y - sy * t
  # update gradient
  sx, sy = Sx(x, y), Sy(x, y) 
  print(f"{k+2}: t = {t}, x = {x}, y = {y}, S = {S(x,y)}")

# (a)
fig = plt.figure()
ax = fig.add_subplot(projection='3d')

p = np.linspace(0, 2*np.pi, 50)
r = np.linspace(0, 4, 50)
P, R = np.meshgrid(p, r)

X = R * np.cos(p) + x
Y = R * np.sin(p) + y
Z = S(X, Y)

# Plot the surface.
ax.plot_surface(X, Y, Z, cmap=plt.cm.YlGnBu_r)
ax.set_xlabel(r'X')
ax.set_ylabel(r'Y')
ax.set_zlabel(r'Z')
plt.show()