# Length of Each Array
# Difficulty: Intermediate
# Concept: Each modifier (∵) with length function (⧻)
# Prerequisites: Arrays, length function, boxed arrays

# Description:
# The 'each' modifier (∵) can be used with the length function (⧻) to find
# the length of each sub-array in a collection of arrays.
# This is particularly useful when working with boxed arrays of different sizes.

# Example:
# Input: {[1 2] [3 4 5] [6]}
# Expected: [2 3 1]

# Hint 1: The length function ⧻ returns the number of elements in an array
# Hint 2: Use ∵ to apply a function to each element (each boxed array)
# Hint 3: Combine them as ∵⧻ to get the length of each array

# Instructions:
# Replace Todo with the correct Uiua code to get length of each array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 3 1] Solution {[1 2] [3 4 5] [6]}
⍤⊃⋅∘≍ [4 2 3] Solution {[1 2 3 4] [5 6] [7 8 9]}
⍤⊃⋅∘≍ [1 1 1 1] Solution {[0] [1] [2] [3]}

&p "✓ All tests passed!"
