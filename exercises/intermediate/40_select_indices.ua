# Select by Indices - Pick Elements Using Index Array
# Difficulty: Intermediate
# Concept: Using ⊏ (select) to extract elements at specified indices
# Prerequisites: Array indexing, understanding of selection operations

# Description:
# The ⊏ (select) function picks elements from an array using an array of indices.
# Given an array and a list of indices, return the elements at those positions.

# Example:
# Input array: [10 20 30 40 50]
# Input indices: [2 0 4]
# Expected: [30 10 50]  # Elements at positions 2, 0, and 4

# Hint 1: ⊏ takes indices first, then the array to select from
# Hint 2: The indices array determines which elements to pick
# Hint 3: Use ⊏ indices array to select elements

# Instructions:
# Replace Todo with the correct Uiua code to select by indices

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [30 10 50] Solution [10 20 30 40 50] [2 0 4]
⍤⊃⋅∘≍ [5 5 6] Solution [5 6 7] [0 0 1]
⍤⊃⋅∘≍ [9 7 8 7] Solution [7 8 9] [2 0 1 0]
⍤⊃⋅∘≍ [4 3 2 1] Solution [1 2 3 4] [3 2 1 0]

&p "✓ All tests passed!"
