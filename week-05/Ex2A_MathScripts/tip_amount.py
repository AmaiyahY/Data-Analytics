#inputting the bill amount and tip percentage from user
bill = float(input("What is your total bill amount?:"))
tip_percentage = float(input("How much would you like to tip?:"))

# Calculating the tip amount
tip = bill * (tip_percentage / 100)

# Displaying the tip amount along with bill amount 
print(f"The tip on a ${bill:.2f} bill is: ${tip:.2f}")