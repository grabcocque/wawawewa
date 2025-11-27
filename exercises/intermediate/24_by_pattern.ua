# By Pattern
# Difficulty: Intermediate
# Concept: By combinator (⊸) applies function then uses result with original
# Prerequisites: Stack operations, basic functions

# Description:
# The by combinator ⊸ applies a function to create a value, then uses both
# the result and the original in another operation. Use ⊸ to subtract a number
# from its double: (x × 2) - x, which equals x.

# Example:
# Input: 5
# Expected: 5  # (5 × 2) - 5 = 10 - 5 = 5

# Hint 1: By ⊸ has the pattern: g⊸f x which does: f (g x) x
# Hint 2: You want to multiply by 2, then subtract the original
# Hint 3: Use -⊸×2 which computes (x × 2) - x

# Instructions:
# Replace ___ with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 5 Solution 5
⍤⊃⋅∘≍ 0 Solution 0
⍤⊃⋅∘≍ 42 Solution 42
⍤⊃⋅∘≍ ¯7 Solution ¯7

&p "✓ All tests passed!"
