# Comparison Matrix
# Difficulty: Intermediate
# Concept: Table modifier (⊞) with less-than comparison (<)
# Prerequisites: Arrays, comparison operators, boolean values

# Description:
# The 'table' modifier (⊞) can be used with comparison operators to create
# comparison matrices. Using ⊞< creates a matrix where each cell is 1 if the
# row value is less than the column value, and 0 otherwise.

# Example:
# Input: [1 2 3] [2 3 4]
# Expected: [1_1_1 0_1_1 0_0_1]

# Hint 1: The less-than operator < returns 1 for true, 0 for false
# Hint 2: ⊞ creates a table by comparing all pairs of elements
# Hint 3: Use ⊞< to check if each row element is less than each column element

# Instructions:
# Replace Todo with the correct Uiua code to create a comparison matrix

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1_1_1 0_1_1 0_0_1] Solution [1 2 3] [2 3 4]
⍤⊃⋅∘≍ [0_0 1_0] Solution [5 3] [5 10]
⍤⊃⋅∘≍ [1_1_1 1_1_1 0_1_1] Solution [0 1 2] [1 2 3]

&p "✓ All tests passed!"
