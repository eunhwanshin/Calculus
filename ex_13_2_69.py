# Ex. 13-2.69

import numpy as np
from scipy import integrate
f = lambda y, x: np.sin((x+y)**0.5)
print(f"(a) {integrate.dblquad(f, 0, 1, 0, 2)[0]} ")

m = 4
n = 8
dx = 1.0 / n
dy = 2.0 / m
dA = dx * dy

volume = 0
for i in range(0, n):
    xi = 1.0/16.0 +  i * dx
    for j in range(0, m):
        yj = 0.25 + j * dy
        volume += f(yj, xi) * dA

print(f"(b) {volume}") 
    
