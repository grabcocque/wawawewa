# Outer Product of Vectors
# Difficulty: Intermediate
# Concept: Table modifier (⊞) for outer product calculation
# Prerequisites: Vectors, multiplication, matrix operations

# Description:
# The outer product of two vectors is a matrix where each element is the product
# of corresponding elements from the two vectors. The table modifier (⊞) with
# multiplication (×) naturally implements this operation, creating a matrix
# of dimensions len(v1) × len(v2).

# Example:
# Input: [2 3] [4 5 6]
# Expected: [8_10_12 12_15_18]

# Hint 1: The outer product multiplies every element of one vector with every element of another
# Hint 2: This creates a 2D matrix from two 1D vectors
# Hint 3: Use ⊞× to compute the outer product

# Instructions:
# Replace ___ with the correct Uiua code to compute the outer product

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [8_10_12 12_15_18] Solution [2 3] [4 5 6]
⍤⊃⋅∘≍ [1_2_3 2_4_6 3_6_9] Solution [1 2 3] [1 2 3]
⍤⊃⋅∘≍ [0_0 5_10 10_20] Solution [0 5 10] [1 2]

&p "✓ All tests passed!"
