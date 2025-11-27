# Partition Split - Split Array at Delimiter
# Difficulty: Intermediate
# Concept: Using ⊜∘ (partition identity) to split array where condition is true
# Prerequisites: Comparison operators, partition function ⊜

# Description:
# The ⊜ (partition) function splits an array into groups based on a boolean mask.
# Given an array, split it into subarrays at each occurrence of zero.
# Zeros act as delimiters and are not included in the result.

# Example:
# Input: [1 2 0 3 4 0 5]
# Expected: [[1 2] [3 4] [5]]

# Hint 1: Create a boolean mask where non-zero values are true
# Hint 2: Use ≠0 to check which elements are not zero
# Hint 3: Apply ⊜∘ with the condition: ⊜∘≠0

# Instructions:
# Replace ___ with the correct Uiua code to split at zeros

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [[1 2] [3 4] [5]] Solution [1 2 0 3 4 0 5]
⍤⊃⋅∘≍ [[1] [2] [3]] Solution [1 0 2 0 3]
⍤⊃⋅∘≍ [[1 2 3 4 5]] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [[5 6 7] [8 9]] Solution [0 5 6 7 0 0 8 9]

&p "✓ All tests passed!"
