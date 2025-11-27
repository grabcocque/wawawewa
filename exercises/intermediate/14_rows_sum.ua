# Sum Each Row
# Difficulty: Intermediate
# Concept: Rows modifier (≡) with reduce (/) and addition (+)
# Prerequisites: Matrices, reduce function, addition

# Description:
# The 'rows' modifier (≡) can be combined with reduce (/) to perform operations
# across each row. Using ≡/+ sums all elements in each row, producing a 1D array
# where each element is the sum of the corresponding row.

# Example:
# Input: [1_2_3 4_5_6]
# Expected: [6 15]

# Hint 1: The reduce function /+ sums all elements in an array
# Hint 2: The rows modifier ≡ applies a function to each row
# Hint 3: Combine them as ≡/+ to sum each row independently

# Instructions:
# Replace Todo with the correct Uiua code to sum each row

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [6 15] Solution [1_2_3 4_5_6]
⍤⊃⋅∘≍ [10 26 42] Solution [1_2_3_4 5_6_7_8 9_10_11_12]
⍤⊃⋅∘≍ [0 5 10] Solution [0_0_0 1_2_2 3_3_4]

&p "✓ All tests passed!"
