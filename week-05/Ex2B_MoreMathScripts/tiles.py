import math

# dimension of tiled room

length = float(input("Enter the room length in feet: "))
width = float(input("Enter the room width in feet: "))

# Calculating the area of the room
area = length * width
boxes = math.ceil(area / 12)

# Adding the extra 10% of tiles
extra_tiles = math.ceil(boxes * 0.10)
total_boxes = boxes + extra_tiles

# Displaying the output
print(f"The area of the room is {area:.2f} square feet")
print(f"The number of tiles needed is {boxes}")
print(f"The number of extra tiles needed is {extra_tiles}")
print(f"The total number of boxes of tiles needed is {total_boxes}")
