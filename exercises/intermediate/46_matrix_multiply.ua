# Matrix Multiplication
# Difficulty: Intermediate+
# Concept: Linear algebra operations using table and reduce
# Prerequisites: Understanding of table (⊞), reduce (/), multiply (×), and transpose (⍉)

# Description:
# Multiply two matrices A and B where the number of columns in A equals the number
# of rows in B. Each element in the result is the dot product of a row from A
# and a column from B. This is a fundamental operation in linear algebra.

# Example:
# Input: A = [[1 2] [3 4]], B = [[5 6] [7 8]]
# Expected: [[19 22] [43 50]]

# Hint 1: For each row in A and column in B, compute the dot product
# Hint 2: Transpose B first to make columns into rows for easier processing
# Hint 3: Use table (⊞) to create all row-column pairs, then compute dot products
# Hint 4: Pattern involves ⍉ on second matrix, then ≡(≡(/+×)) or similar

# Instructions:
# Replace Todo with the correct Uiua code
# Solution takes two matrices A and B

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [[19 22] [43 50]] Solution [[1 2] [3 4]] [[5 6] [7 8]]
⍤⊃⋅∘≍ [[1 2 3]] Solution [[1] [2] [3]] [[1 1 1]]
⍤⊃⋅∘≍ [[14] [32]] Solution [[1 2 3] [4 5 6]] [[1] [2] [3]]
⍤⊃⋅∘≍ [[30 36 42] [66 81 96] [102 126 150]] Solution [[1 2 3] [4 5 6] [7 8 9]] [[1 2 3] [4 5 6] [7 8 9]]
⍤⊃⋅∘≍ [[1 0] [0 1]] Solution [[1 0] [0 1]] [[1 0] [0 1]]

&p "✓ All tests passed!"
