# Both Increment
# Difficulty: Intermediate
# Concept: Both combinator (∩) applies same function to multiple values
# Prerequisites: Basic arithmetic, understanding of stack

# Description:
# The both combinator ∩ applies the same function to two values on the stack.
# Use ∩ with +1 to increment both numbers. This is useful when you need to
# apply the same transformation to multiple values simultaneously.

# Example:
# Input: 5 10
# Expected: [6 11]  # both incremented by 1

# Hint 1: Both ∩ applies the same function to two stack values
# Hint 2: The pattern is ∩(function) value1 value2
# Hint 3: Use ∩(+1) to add 1 to both values

# Instructions:
# Replace Todo with the correct Uiua code to increment both values

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [6 11] Solution 5 10
⍤⊃⋅∘≍ [1 1] Solution 0 0
⍤⊃⋅∘≍ [0 101] Solution ¯1 100
⍤⊃⋅∘≍ [43 8] Solution 42 7

&p "✓ All tests passed!"
