# Group Count - Count Elements per Group
# Difficulty: Intermediate
# Concept: Using ⊕⧻ (group length) to count how many elements in each group
# Prerequisites: Group operation ⊕, length ⧻, classification

# Description:
# Combine ⊕ (group) with ⧻ (length) to count how many times each unique value appears.
# Given an array of group labels, return the count for each group.

# Example:
# Input: [0 1 0 2 1 0]
# Expected: [3 2 1]  # Group 0 appears 3 times, group 1 appears 2 times, group 2 appears 1 time

# Hint 1: ⊕ groups elements together by their labels
# Hint 2: ⧻ counts the length of each group
# Hint 3: Combine them as ⊕⧻ and pass the group labels

# Instructions:
# Replace ___ with the correct Uiua code to count per group

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [3 2 1] Solution [0 1 0 2 1 0]
⍤⊃⋅∘≍ [5] Solution [0 0 0 0 0]
⍤⊃⋅∘≍ [1 1 1 1] Solution [0 1 2 3]
⍤⊃⋅∘≍ [4 3] Solution [0 1 0 1 0 1 0]

&p "✓ All tests passed!"
