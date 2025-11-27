# Multiplication Table
# Difficulty: Intermediate
# Concept: Table modifier (⊞) with multiplication (×)
# Prerequisites: Arrays, multiplication, table concept

# Description:
# The 'table' modifier (⊞) with multiplication (×) creates a classic multiplication
# table. Each cell contains the product of the corresponding row and column values.
# This is useful for creating lookup tables and understanding outer products.

# Example:
# Input: [1 2 3] [1 2 3 4]
# Expected: [1_2_3_4 2_4_6_8 3_6_9_12]

# Hint 1: The table modifier ⊞ applies a function to all pairs of elements
# Hint 2: Multiplication × combines two numbers into their product
# Hint 3: Use ⊞× to multiply each element from the first array by each from the second

# Instructions:
# Replace ___ with the correct Uiua code to create a multiplication table

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1_2_3_4 2_4_6_8 3_6_9_12] Solution [1 2 3] [1 2 3 4]
⍤⊃⋅∘≍ [5_10 10_20] Solution [5 10] [1 2]
⍤⊃⋅∘≍ [0_0_0 2_4_6 4_8_12] Solution [0 2 4] [1 2 3]

&p "✓ All tests passed!"
