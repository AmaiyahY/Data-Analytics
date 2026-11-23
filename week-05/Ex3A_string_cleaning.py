name_1 = "PRIYA SHARMA"
name_2 = "bob NGUYEN"
name_3 = "LaTonya Williams"
salary_1 = "$82,500"
salary_2 = "$74,000"

#Using lower() method to convert names to lowercase
print(name_1.lower(), name_2.lower(), name_3.lower())

# Using .title() method to convert names to title case
print(name_1.title(), name_2.title(), name_3.title())

# Using .replace to remove the dollar sign from salary strings
print(salary_1.replace("$", ""), salary_2.replace("$", ""))
print(salary_1.replace("$", ""), type(salary_1.replace("$", "")))
print(salary_2.replace("$", ""), type(salary_2.replace("$", "")))

# Attempt 1
#-------------
#salary_int_1 = (salary_1.replace(',', ''), salary_1.replace('$', ''))
#print(int(salary_int_1, type(salary_int_1)))
# ^^^kept getting 'str' object cannot be interpreted as a interger

# Attempt 2
#-------------
salary_int_1 = int(salary_1.replace(',', '').replace('$', ''))
print(salary_int_1, type(salary_int_1))