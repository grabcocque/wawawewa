# Classify - Map Elements to Unique Indices
# Difficulty: Intermediate
# Concept: Using ⊛ (classify) to assign unique indices to each unique value
# Prerequisites: Array operations, understanding of grouping

# Description:
# The ⊛ (classify) function assigns each unique value a sequential index.
# Given an array with duplicates, classify each element by its unique value.
# First occurrence gets 0, second unique value gets 1, etc.

# Example:
# Input: [5 3 5 7 3 5]
# Expected: [0 1 0 2 1 0]  # 5→0, 3→1, 7→2

# Hint 1: ⊛ (classify) automatically assigns indices based on first appearance
# Hint 2: The function takes just the array as input
# Hint 3: Simply use ⊛ on the input array

# Instructions:
# Replace ___ with the correct Uiua code to classify elements

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [0 1 0 2 1 0] Solution [5 3 5 7 3 5]
⍤⊃⋅∘≍ [0 1 2 3] Solution [10 20 30 40]
⍤⊃⋅∘≍ [0 0 0 0] Solution [7 7 7 7]
⍤⊃⋅∘≍ [0 1 2 1 0] Solution [1 2 3 2 1]

&p "✓ All tests passed!"
