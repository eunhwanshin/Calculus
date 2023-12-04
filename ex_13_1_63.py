# Ex. 13-1.63

from scipy import integrate

f = lambda y, x : x**3 + 3*y**2 
print(f" {integrate.dblquad(f, 0, 2, lambda x: x**2, lambda x: 2*x)} ")
