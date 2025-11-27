# Fork Three Functions
# Difficulty: Intermediate
# Concept: Nested fork (⊃⊃) to apply three functions
# Prerequisites: Fork basics, arithmetic operations

# Description:
# You can nest fork combinators to apply more than two functions. Use ⊃⊃ to
# apply three functions to the same input: get the negative, square, and double
# of a number. The result will be a 3-element array.

# Example:
# Input: 4
# Expected: [¯4 16 8]  # [negative, square, double]

# Hint 1: Nested forks ⊃⊃ create a pattern: ⊃⊃(f|g|h) applies all three
# Hint 2: Negative is ¯ or ×¯1, square is ×., double is ×2
# Hint 3: Use ⊃⊃(¯|×.|×2) or ⊃⊃(×¯1|×.|×2)

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [¯4 16 8] Solution 4
⍤⊃⋅∘≍ [¯5 25 10] Solution 5
⍤⊃⋅∘≍ [0 0 0] Solution 0
⍤⊃⋅∘≍ [1 1 ¯2] Solution ¯1

&p "✓ All tests passed!"
