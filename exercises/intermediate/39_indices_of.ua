# Index Of - Find Positions of Elements
# Difficulty: Intermediate
# Concept: Using ⊗ (indexof) to find the index of each element in a reference array
# Prerequisites: Array indexing, understanding of lookup operations

# Description:
# The ⊗ (indexof) function finds the first index of each element in a reference array.
# Given a lookup array and a values array, return the index where each value appears.
# If a value doesn't exist, the result will be the length of the lookup array.

# Example:
# Input lookup: [10 20 30 40]
# Input values: [30 10 40]
# Expected: [2 0 3]  # 30 is at index 2, 10 at index 0, 40 at index 3

# Hint 1: ⊗ takes two arrays: the haystack and the needles
# Hint 2: The lookup array comes first, then the values to find
# Hint 3: Use ⊗ lookup values to find indices

# Instructions:
# Replace Todo with the correct Uiua code to find indices

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 0 3] Solution [10 20 30 40] [30 10 40]
⍤⊃⋅∘≍ [0 1 2] Solution [5 6 7] [5 6 7]
⍤⊃⋅∘≍ [1 1 0] Solution [3 4 5] [4 4 3]
⍤⊃⋅∘≍ [4 0 4] Solution [1 2 3 4] [9 1 9]

&p "✓ All tests passed!"
