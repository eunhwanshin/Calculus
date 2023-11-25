# Ex. 12-9.22: Find y that minimize S(y) = y + 2 * ((y-2)**2 + 4)**0.5
# using Newton's method

# dS/dy
def Sy(y):
    return 1 + 2 * (y-2)/((y-2)**2 + 4)**0.5

# d^2 S / dy^2
def Syy(y):
    return 2/((y-2)**2 + 4)**0.5 - 2*(y-2)**2 / ((y-2)**2 + 4)**1.5

y = 1
for i in range(5):
  y = y - Sy(y)/Syy(y)
  print(f"{i}: y = {y}")

y_ref = 2 - 2/3**0.5
print(f"Truth = {y_ref}")  