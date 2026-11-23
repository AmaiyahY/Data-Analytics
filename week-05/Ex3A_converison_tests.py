# Description: This script tests various numeric
# conversion techniques
# Author: Amaiyah Y.

# Original variables
a = " 101.1 "
b = '55'
c = "402 Stevens"
d = 'Number 5 '

# Variable A
#--------------
# integer_a = int(a) <-- ValueError: invalid literal for int()
float_a = float(a) #<--- Works: Turns a str into a float, ignoring the extra spaces
int_float_a = int(float_a) # <--- Works: Converts into a integer, and gets rid of the decimal

# Variable B
#--------------
integer_b = int(b) #<--- Works: '55' is a vailed integer
float_b = float(b) #<--- Works: '55' turns onto 55.0

# Variable C
#--------------
#int_c = int(c) 
# ^^^ValueError: Invalid variable for int() - "Stevens" is not a valid interger
#float_c = float(c) 
# ^^^ValueError: Invalid variable for float() - "Stevens" is not a valid float
# "Stevens" needs to be converted into a string

# Variable D
#--------------
#integer_d = int(d) 
# ^^^ValueError: Invalid variable for int() - "Number" is not a valid integer

#float_d = float(d) 
# ^^^ValueError: Could not convert string into a float

# Printing new vaules and the type
#-------------
print(a, type(a))
print(b, type(b))
print(c, type(c))
print(d, type(d))

print(float_a, type(float_a))
print(int_float_a, type(int_float_a))
print(integer_b, type(integer_b))
print(float_b, type(float_b))

# Using slicing
#-------------
sliced_a = float(a[1:6])
sliced_c = int(c[0:3])
sliced_d = int(d[7:8])

# Using .strip()
#-------------
print(a.strip())
print(d.strip())