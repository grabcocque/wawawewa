# Find Maximum
# Difficulty: Intermediate
# Concept: Reduce operations with max function
# Prerequisites: Understanding reduce (/), max function (↥)

# Description:
# Write a function that finds the maximum element in an array.
# You'll use the reduce pattern combined with the max operation.
# The max function (↥) returns the larger of two values.
# Reduce applies a binary operation across all elements.

# Example:
# Input: [3 7 2 9 1]
# Expected: 9
#
# Input: [¯5 ¯2 ¯8]
# Expected: ¯2

# Hints (graduated):
# Hint 1: What operation would you apply repeatedly to find the largest value?
# Hint 2: The ↥ (max) function takes two values and returns the larger one
# Hint 3: Reduce (/) applies a function across all elements: /f [a b c] = f(f(a,b),c)
# Hint 4: The pattern is: /↥ (reduce with max)

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
FindMaximum ← /Todo

# Tests with edge cases:
⍤⊃⋅∘≍ 9 FindMaximum [3 7 2 9 1]
⍤⊃⋅∘≍ ¯2 FindMaximum [¯5 ¯2 ¯8]
⍤⊃⋅∘≍ 42 FindMaximum [42]
⍤⊃⋅∘≍ 100 FindMaximum [1 2 3 100 99]
⍤⊃⋅∘≍ 0 FindMaximum [0 ¯1 ¯2 ¯3]
⍤⊃⋅∘≍ 5 FindMaximum [5 5 5 5]
⍤⊃⋅∘≍ 1e6 FindMaximum [1e6 999999 1e5]

&p "✓ All tests passed!"
