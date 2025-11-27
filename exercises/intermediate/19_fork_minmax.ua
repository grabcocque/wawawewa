# Fork Min and Max
# Difficulty: Intermediate
# Concept: Fork combinator (⊃) with min/max functions
# Prerequisites: Basic array operations, understanding of min (↧) and max (↥)

# Description:
# The fork combinator ⊃ applies multiple functions to the same input and collects results.
# Use ⊃ with ↧/ (reduce min) and ↥/ (reduce max) to get both the minimum and maximum
# values from an array in a single operation.

# Example:
# Input: [3 7 2 9 1 5]
# Expected: [1 9]  # [min max]

# Hint 1: Fork ⊃ takes two functions and applies both to the same input
# Hint 2: The pattern is ⊃(function1|function2) input
# Hint 3: Use ⊃(/↧|/↥) to apply reduce-min and reduce-max simultaneously

# Instructions:
# Replace Todo with the correct Uiua code to get [min max] from an array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 9] Solution [3 7 2 9 1 5]
⍤⊃⋅∘≍ [0 100] Solution [42 0 17 100 33]
⍤⊃⋅∘≍ [5 5] Solution [5 5 5 5]
⍤⊃⋅∘≍ [-10 10] Solution [0 -10 5 10 -5]

&p "✓ All tests passed!"
