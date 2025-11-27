# Bracket Apply
# Difficulty: Intermediate
# Concept: Bracket combinator (⊓) applies different functions to two values
# Prerequisites: Understanding of stack operations and basic functions

# Description:
# The bracket combinator ⊓ takes two functions and two values, applying the first
# function to the first value and the second function to the second value.
# Use ⊓ to square the first number and double the second number.

# Example:
# Input: 3 5  # (first=3, second=5)
# Expected: [9 10]  # [3² (5×2)]

# Hint 1: Bracket ⊓ has the pattern: ⊓(f|g) a b applies f to a and g to b
# Hint 2: Square is ×. (multiply by itself), double is ×2
# Hint 3: Use ⊓(×.|×2) - it will square the first and double the second

# Instructions:
# Replace ___ with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [9 10] Solution 3 5
⍤⊃⋅∘≍ [16 6] Solution 4 3
⍤⊃⋅∘≍ [100 0] Solution 10 0
⍤⊃⋅∘≍ [1 20] Solution 1 10

&p "✓ All tests passed!"
