# top 8 favorite movies
rewatch = ['matilda', 'obsession', 'the menu', 'perfect blue', 
          'spirited away', 'the truman show', 'swallow', 'wall-e']

print(f'This list "Rewatch" contains {len(rewatch)} of my favorite movies')

# sorting movies in order
print(sorted(rewatch))
print(rewatch)
# ^^^Comparing the 2 outputs, 5 of the movies were movied around to be in alphabetical order

rewatch.sort()
print(rewatch)
# ^^^Comparing the 2, unlike before the regular print output stays in it's alphabetical order
# instead of returning to it's original order

# Adding a last-min movie
rewatch.append('predator:badlands')
print(rewatch)