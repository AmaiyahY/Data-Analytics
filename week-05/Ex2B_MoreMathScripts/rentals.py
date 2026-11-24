import math
# Starting inputs
people = int(input("Enter the number of people in the group: "))
charter_vans_capacity = 15
vans_cost = 250

# Calculating the number of vans needed
vans_needed = math.ceil(people / charter_vans_capacity)

# Calculating the total cost of the vans
total_cost = vans_needed * vans_cost

# The cost per person
cost_per_person = math.ceil((total_cost / people) * 100) / 100  # <--Added: Rounding to two decimal places

# Calculating how much money was collected
collected_money = cost_per_person * people

# Calculating the leftover money
leftover_money = collected_money - total_cost   #<--Added: Swapping the order of subtraction to ensure leftover money is positive

# Displaying the results
print(f"The number of vans needed is: {vans_needed}")
print(f"The total cost of the vans is: ${total_cost:.2f}")
print(f"The cost per person is: ${cost_per_person:.2f}")
print(f"The leftover money is: ${leftover_money:.2f}")   #<--Added: Placed the .2f formatting to ensure rounding