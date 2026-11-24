# Importing for the math module to use the sqrt function
import math

x1 = 2
y1 = 3

x2 = 3
y2 = 7

# Calculating the distance between the points (x1, y1) and (x2, y2)
distance = math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2)

# Displaying the result
print(f"The distance between the points are {distance:.2f}")

