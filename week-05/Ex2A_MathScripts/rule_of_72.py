#Amount of savings and intrest rate
savings_account = 2300
intrest_rate = 2.5

# Calculating years and savings as doubled
doubled_savings = savings_account * 2
years_to_double = 72 / intrest_rate

# Displaying output
print(f"Your current savings is ${savings_account}")
print(f"At a {intrest_rate}%, your savings account will be worth ${doubled_savings: .2f} in {years_to_double: .1f} years.")
