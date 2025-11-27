# Dip Add
# Difficulty: Beginner
# Concept: Stack manipulation - dip

# Description:
# The ⊙ (dip) operator temporarily removes the top item, applies a function, then restores it.
# For example, ⊙(+1) 5 10 adds 1 to 10 (under the 5), giving [5 11].
# This lets you operate on items beneath the top of the stack.

# Example:
# Input: 3 7
# Expected: [3 14]

# Instructions:
# Replace Todo with the correct Uiua code to double the second number using ⊙

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [3 14] Solution 3 7
⍤⊃⋅∘≍ [5 8] Solution 5 4
⍤⊃⋅∘≍ [2 20] Solution 2 10

# Hint: Use ⊙(×2) to double the value under the top of the stack

&p "✓ All tests passed!"
