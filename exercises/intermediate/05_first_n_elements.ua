# Take First N Elements
# Difficulty: Intermediate
# Concept: Take (↙), array slicing
# Prerequisites: Understanding of array indexing and length

# Description:
# Write a function that takes the first n elements from an array.
# The function receives two arguments: n (the count) and the array.
# Use the take glyph ↙ which extracts the first n elements.

# Example:
# Input: n=3, array=[1 2 3 4 5 6]
# Expected: [1 2 3]

# Example 2:
# Input: n=2, array=[10 20 30 40]
# Expected: [10 20]

# Hint 1: Take ↙ expects a number (how many) and an array (what to take from)
# Hint 2: The syntax is: ↙ n array, where n is on the stack first
# Hint 3: Since the function receives n first and array second, the solution is simply ↙

# Instructions:
# Replace Todo with the correct Uiua code to take first n elements
# The function signature is: Solution n array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 2 3] Solution 3 [1 2 3 4 5 6]
⍤⊃⋅∘≍ [10 20] Solution 2 [10 20 30 40]
⍤⊃⋅∘≍ [] Solution 0 [1 2 3 4 5]
⍤⊃⋅∘≍ [7] Solution 1 [7 8 9]
⍤⊃⋅∘≍ [1 2 3 4 5] Solution 5 [1 2 3 4 5]
⍤⊃⋅∘≍ [5 4 3 2 1] Solution 10 [5 4 3 2 1]

&p "✓ All tests passed!"
