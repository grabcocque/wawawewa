# Adjacent Differences
# Difficulty: Intermediate+
# Concept: Computing differences between consecutive elements
# Prerequisites: Understanding of windows (◫), rotate (↻), and subtraction

# Description:
# Calculate the difference between each element and the previous element in an array.
# This operation is useful for finding rates of change, deltas, or derivatives
# in discrete data. The result array will have length n-1 for input of length n.

# Example:
# Input: [1 4 6 10 15]
# Expected: [3 2 4 5]

# Hint 1: You need to subtract each element from the next element
# Hint 2: Consider using windows of size 2 (◫2) to get pairs of adjacent elements
# Hint 3: For each pair, subtract the first from the second using /-
# Hint 4: The pattern is /- applied to each window: ≡/- ◫2

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [3 2 4 5] Solution [1 4 6 10 15]
⍤⊃⋅∘≍ [1 1 1 1] Solution [0 1 2 3 4]
⍤⊃⋅∘≍ [¯1 ¯1 ¯1 ¯1] Solution [5 4 3 2 1]
⍤⊃⋅∘≍ [0 0 0] Solution [7 7 7 7]
⍤⊃⋅∘≍ [10 ¯5 8] Solution [3 13 8 16]

&p "✓ All tests passed!"
