# Create Grid with Iota
# Difficulty: Beginner
# Concept: Grid creation using reshape and range

# Description:
# Combine ↯ (reshape), ⇡ (range), and × (multiply) to create an n×n grid of numbers.
# ↯.⇡× n creates a grid from 0 to n²-1 arranged in n rows and n columns.

# Example:
# Input: 3
# Expected: [[0 1 2] [3 4 5] [6 7 8]]

# Instructions:
# Replace ___ with the correct Uiua code to create an n×n grid

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [[0 1] [2 3]] Solution 2
⍤⊃⋅∘≍ [[0 1 2] [3 4 5] [6 7 8]] Solution 3
⍤⊃⋅∘≍ [[0 1 2 3] [4 5 6 7] [8 9 10 11] [12 13 14 15]] Solution 4

# Hint: Use ↯.⇡× to create a square grid - duplicate n, multiply for total, range, reshape

&p "✓ All tests passed!"
