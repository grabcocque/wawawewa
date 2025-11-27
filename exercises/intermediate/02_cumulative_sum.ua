# Cumulative Sum (Prefix Sum)
# Difficulty: Intermediate
# Concept: Scan modifier (\), running totals
# Prerequisites: Addition (+), reduce (/), understanding of cumulative operations

# Description:
# Write a function that computes the cumulative sum of an array.
# The cumulative sum at position i is the sum of all elements from index 0 to i.
# Use the scan modifier \ which applies an operation cumulatively from left to right.

# Example:
# Input: [1 2 3 4]
# Expected: [1 3 6 10]
# (1, 1+2, 1+2+3, 1+2+3+4)

# Example 2:
# Input: [5 5 5]
# Expected: [5 10 15]

# Hint 1: Scan \ is like reduce / but keeps all intermediate results
# Hint 2: While /+ gives the final sum, \+ gives running sums
# Hint 3: The solution is just \+ applied to the input array

# Instructions:
# Replace Todo with the correct Uiua code to compute cumulative sum

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 3 6 10] Solution [1 2 3 4]
⍤⊃⋅∘≍ [5 10 15] Solution [5 5 5]
⍤⊃⋅∘≍ [1] Solution [1]
⍤⊃⋅∘≍ [1 2 3 4 5 6 7 8 9 10] Solution [1 1 1 1 1 1 1 1 1 1]
⍤⊃⋅∘≍ [10 15 17 16 20] Solution [10 5 2 ¯1 4]

&p "✓ All tests passed!"
