# Identity
# Difficulty: Beginner
# Concept: Stack manipulation - identity

# Description:
# The ∘ (identity) operator does nothing but can be useful in compositions.
# It preserves a value while other operations happen around it.
# For example, ⊃∘(+1) 5 gives [5 6] - identity preserves 5, +1 makes 6.

# Example:
# Input: 10
# Expected: [10 11]

# Instructions:
# Replace Todo with the correct Uiua code using ⊃∘(+1) to preserve and increment

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [10 11] Solution 10
⍤⊃⋅∘≍ [5 6] Solution 5
⍤⊃⋅∘≍ [0 1] Solution 0

# Hint: Use ⊃∘(+1) to fork - identity keeps original, +1 increments it

&p "✓ All tests passed!"
