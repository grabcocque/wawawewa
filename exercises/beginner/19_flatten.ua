# Flatten Array
# Difficulty: Beginner
# Concept: Flattening with deshape

# Description:
# The ♭ (deshape/flatten) function converts a multidimensional array into a 1D array.
# It removes all structure, leaving just the elements in row-major order.

# Example:
# Input: [[1 2] [3 4]]
# Expected: [1 2 3 4]

# Instructions:
# Replace Todo with the correct Uiua code to flatten a 2D array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 2 3 4] Solution [[1 2] [3 4]]
⍤⊃⋅∘≍ [10 20 30 40 50 60] Solution [[10 20] [30 40] [50 60]]
⍤⊃⋅∘≍ [1 2 3] Solution [1 2 3]

# Hint: Use ♭ to flatten any array into 1D

&p "✓ All tests passed!"
