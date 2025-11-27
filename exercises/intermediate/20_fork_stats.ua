# Fork Statistics
# Difficulty: Intermediate
# Concept: Fork combinator with multiple operations to compute mean
# Prerequisites: Fork basics, length (⧻), sum (/+), division (÷)

# Description:
# Use fork to simultaneously get the length and sum of an array, then divide
# to compute the mean (average). This demonstrates how fork can prepare
# multiple values needed for a subsequent calculation.

# Example:
# Input: [2 4 6 8 10]
# Expected: 6  # (2+4+6+8+10)/5 = 30/5 = 6

# Hint 1: Fork can prepare the numerator and denominator for division
# Hint 2: The pattern is ⊃(sum|length) then divide the results
# Hint 3: Use ÷⊃(/+|⧻) - fork gets sum and length, then divide divides them

# Instructions:
# Replace Todo with the correct Uiua code to compute the mean of an array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 6 Solution [2 4 6 8 10]
⍤⊃⋅∘≍ 5 Solution [1 2 3 4 5 6 7 8 9]
⍤⊃⋅∘≍ 0 Solution [¯5 ¯3 0 3 5]
⍤⊃⋅∘≍ 2.5 Solution [1 2 3 4]

&p "✓ All tests passed!"
