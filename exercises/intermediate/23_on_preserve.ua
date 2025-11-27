# On Preserve
# Difficulty: Intermediate
# Concept: On combinator (⟜) uses a value without consuming it
# Prerequisites: Stack manipulation, basic arithmetic

# Description:
# The on combinator ⟜ applies a function but keeps the original value on the stack.
# Use ⟜ to add a number to itself (double it) by doing: x + x.
# The pattern ⟜f x applies f between a copy of x and x itself.

# Example:
# Input: 7
# Expected: 14  # 7 + 7

# Hint 1: On ⟜ keeps a copy of the value for use in the function
# Hint 2: ⟜+ x is equivalent to x + x
# Hint 3: Just use ⟜+ and it will add the number to itself

# Instructions:
# Replace ___ with the correct Uiua code to double a number using ⟜

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 14 Solution 7
⍤⊃⋅∘≍ 0 Solution 0
⍤⊃⋅∘≍ 100 Solution 50
⍤⊃⋅∘≍ ¯10 Solution ¯5

&p "✓ All tests passed!"
