# Over
# Difficulty: Beginner
# Concept: Stack manipulation - over

# Description:
# The , (over) operator copies the second item to the top of the stack.
# For example, , 3 5 results in [3 5 3] (copying 3 to the top).
# This is useful when you need to reuse a value that's not on top.

# Example:
# Input: 4 7
# Expected: [4 7 4]

# Instructions:
# Replace ___ with the correct Uiua code to copy the second item to top

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 8 2] Solution 2 8
⍤⊃⋅∘≍ [5 5 5] Solution 5 5
⍤⊃⋅∘≍ [1 9 1] Solution 1 9

# Hint: Use the , operator to copy the second item to the top

&p "✓ All tests passed!"
