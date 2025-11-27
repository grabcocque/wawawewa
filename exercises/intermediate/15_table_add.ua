# Addition Table
# Difficulty: Intermediate
# Concept: Table modifier (⊞) with addition (+)
# Prerequisites: Arrays, addition, understanding of outer products

# Description:
# The 'table' modifier (⊞) creates a table by applying a function to every
# combination of elements from two arrays. Using ⊞+ creates an addition table
# where each cell is the sum of the corresponding row and column indices.

# Example:
# Input: [1 2 3] [10 20]
# Expected: [11_21 12_22 13_23]

# Hint 1: ⊞ takes two arrays and a function, applying it to all pairs
# Hint 2: The first array determines rows, the second determines columns
# Hint 3: Use ⊞+ to add each element from the first array to each from the second

# Instructions:
# Replace Todo with the correct Uiua code to create an addition table

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [11_21 12_22 13_23] Solution [1 2 3] [10 20]
⍤⊃⋅∘≍ [1_2_3 2_3_4 3_4_5] Solution [0 1 2] [1 2 3]
⍤⊃⋅∘≍ [5_6 10_11] Solution [5 10] [0 1]

&p "✓ All tests passed!"
