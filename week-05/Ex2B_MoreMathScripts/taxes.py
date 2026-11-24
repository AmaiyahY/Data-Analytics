monthly_salary = 6000
federal_taxes = 0.23

# Calculating the withheld pof taxes
withheld_taxes = monthly_salary  *  federal_taxes

# Displaying the output
print(f"Federal taxes withheld from a monthly salary of ${monthly_salary} is ${withheld_taxes:.2f}")
