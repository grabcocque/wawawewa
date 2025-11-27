# Rotate Array
# Difficulty: Intermediate+
# Concept: Circular rotation of array elements
# Prerequisites: Understanding of rotate (↻) and negative/positive indices

# Description:
# Rotate an array by n positions to the left. Elements that fall off the left
# end wrap around to the right end. If n is negative, rotate right instead.
# This is useful for circular buffers and cyclic data structures.

# Example:
# Input: n=2, array=[1 2 3 4 5]
# Expected: [3 4 5 1 2]

# Hint 1: The rotate glyph (↻) takes the rotation amount and the array
# Hint 2: Positive numbers rotate left, negative rotate right
# Hint 3: Create a function that takes n first, then the array
# Hint 4: The pattern is simply ↻ since it already does what we need

# Instructions:
# Replace Todo with the correct Uiua code
# Solution should be a function that takes rotation amount n and array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [3 4 5 1 2] Solution 2 [1 2 3 4 5]
⍤⊃⋅∘≍ [4 5 1 2 3] Solution ¯2 [1 2 3 4 5]
⍤⊃⋅∘≍ [1 2 3 4 5] Solution 0 [1 2 3 4 5]
⍤⊃⋅∘≍ [2 3 4 5 1] Solution 1 [1 2 3 4 5]
⍤⊃⋅∘≍ [5 6 7 8 1 2 3 4] Solution 4 [1 2 3 4 5 6 7 8]

&p "✓ All tests passed!"
