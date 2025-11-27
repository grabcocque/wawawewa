# Where - Find Indices of True Values
# Difficulty: Intermediate
# Concept: Using ⊚ (where) to get indices where condition is true
# Prerequisites: Comparison operators, array indexing

# Description:
# The ⊚ (where) function returns the indices where a boolean array is true.
# Given an array of numbers, find all indices where the value is greater than 5.

# Example:
# Input: [3 7 2 8 5 9]
# Expected: [1 3 5]  # Indices of values > 5 (7, 8, 9)

# Hint 1: First create a boolean array by comparing each element to 5
# Hint 2: Use >5 to get which elements are greater than 5
# Hint 3: Apply ⊚ (where) to the boolean array: ⊚>5

# Instructions:
# Replace ___ with the correct Uiua code to find indices where values > 5

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 3 5] Solution [3 7 2 8 5 9]
⍤⊃⋅∘≍ [0 1 2 3] Solution [6 7 8 9]
⍤⊃⋅∘≍ [] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [2 4] Solution [1 3 10 2 6]

&p "✓ All tests passed!"
