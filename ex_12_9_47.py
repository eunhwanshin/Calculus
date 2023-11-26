# Ex. 12-9.47
import numpy as np
import matplotlib.pyplot as plt

h = np.array([0, 5, 10, 15, 20])
P = np.array([10332, 5583, 2376, 1240, 517])

p = np.polyfit(h, np.log(P), 1)

print(f"(a) ln P = {p[0]} h + {p[1]}")
print(f"(b) P = {np.exp(p[1])} exp({p[0]} h)")

r = np.linspace(-1,24,40)
_ = plt.plot(h, P, 'bo')
_ = plt.plot(r, np.exp(p[1]) * np.exp(p[0]*r), 'r') 
plt.title("(c)")
plt.show()
