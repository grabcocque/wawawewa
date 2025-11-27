# Calculate Arithmetic Mean
# Difficulty: Intermediate
# Concept: Fork combinator (⊃), aggregate operations
# Prerequisites: Basic arithmetic, reduce (/), length (⧻), divide (÷)

# Description:
# Write a function that calculates the arithmetic mean (average) of an array.
# The mean is the sum of all elements divided by the count of elements.
# Use the fork combinator ⊃ to compute both sum and length in parallel.

# Example:
# Input: [1 2 3 4 5]
# Expected: 3

# Example 2:
# Input: [10 20 30]
# Expected: 20

# Hint 1: You need both the sum (/+) and the length (⧻) of the array
# Hint 2: Fork ⊃ takes two functions and applies them to the same input: ⊃(f|g) x → f x, g x
# Hint 3: After forking, you have sum on top and length below - use ÷ to divide

# Instructions:
# Replace ___ with the correct Uiua code to calculate the mean

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 3 Solution [1 2 3 4 5]
⍤⊃⋅∘≍ 20 Solution [10 20 30]
⍤⊃⋅∘≍ 5.5 Solution [1 2 3 4 5 6 7 8 9 10]
⍤⊃⋅∘≍ 0 Solution [¯5 ¯3 0 3 5]
⍤⊃⋅∘≍ 100 Solution [100]

&p "✓ All tests passed!"
