customer_ID = 12345
customer_name = "John Doe"
customer_gender = "Male"
customer_DOB = "1990-01-01"
drivers_license_number = 7474747
auto_policy_number = 8888888


name = "Amaiyah Young"
city = "New castle"
state = "Delaware"

# 1A - What is the full list of reserved words 
# that can’t be used for variable names?

import keyword
print(keyword.kwlist)

# Output = 35 Keywords

# 'False', 'None', 'True', 'and', 'as', 'assert', 
# 'async', 'await', 'break', 'class', 'continue', 
# 'def', 'del', 'elif', 'else', 'except', 'finally', 
# 'for', 'from', 'global', 'if', 'import', 'in', 'is', 
# 'lambda', 'nonlocal', 'not', 'or', 'pass', 'raise', 
# 'return', 'try', 'while', 'with', 'yield'


# 1B - Pick 5 of these words and review the explanation for how it is used as a keyword in
# Python. Add these 5 definitions as # comments to your exercise document. Put ^^
# around any terms that you are not familiar with.

#None 
# Represents the absence of a value or a null value

#break
# Exit a loop prematurely

#global
# Declare a variable as global within a function, 
# allowing it to be modified in the global scope

#in
# Test for ^^membership^^ in a sequence

#yield
# used in a ^^generator fuctions^^ 
# to produce a value