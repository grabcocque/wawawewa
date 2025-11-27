# Matrix Transpose
# Difficulty: Intermediate
# Concept: Transpose (⍉), 2D array manipulation
# Prerequisites: Understanding of matrices, rows and columns

# Description:
# Write a function that transposes a 2D matrix (swaps rows and columns).
# In a transposed matrix, the element at position [i,j] becomes [j,i].
# Use the transpose glyph ⍉ which flips the axes of a multidimensional array.

# Example:
# Input: [[1 2 3]
#         [4 5 6]]
# Expected: [[1 4]
#            [2 5]
#            [3 6]]

# Example 2:
# Input: [[1 2]
#         [3 4]
#         [5 6]]
# Expected: [[1 3 5]
#            [2 4 6]]

# Hint 1: Transpose swaps the dimensions of an array
# Hint 2: For a 2D array, rows become columns and columns become rows
# Hint 3: The solution is simply the ⍉ glyph applied to the input

# Instructions:
# Replace Todo with the correct Uiua code to transpose the matrix

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [[1 4] [2 5] [3 6]] Solution [[1 2 3] [4 5 6]]
⍤⊃⋅∘≍ [[1 3 5] [2 4 6]] Solution [[1 2] [3 4] [5 6]]
⍤⊃⋅∘≍ [[1] [2] [3]] Solution [[1 2 3]]
⍤⊃⋅∘≍ [[1 2 3]] Solution [[1] [2] [3]]
⍤⊃⋅∘≍ [[1 5 9] [2 6 10] [3 7 11] [4 8 12]] Solution [[1 2 3 4] [5 6 7 8] [9 10 11 12]]

&p "✓ All tests passed!"
