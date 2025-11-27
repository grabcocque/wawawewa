# Sum All Elements
# Difficulty: Beginner
# Concept: Reduce modifier and addition

# Description:
# Write a function that takes an array and returns the sum of all its elements.
# In Uiua, we use the reduce modifier (/) combined with addition (+) to sum arrays.
# The pattern /+ means "reduce by addition" - it takes an array and adds all elements together.

# Example:
# Input: [1 2 3 4 5]
# Expected: 15

# Instructions:
# Replace ___ with the correct Uiua reduce operation to sum the array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests (learner runs these to verify):
# Test 1: Simple array
⍤⊃⋅∘≍ 15 Solution [1 2 3 4 5]

# Test 2: Single element
⍤⊃⋅∘≍ 7 Solution [7]

# Test 3: Larger numbers
⍤⊃⋅∘≍ 100 Solution [25 25 25 25]

# Hint: The reduce modifier is / and you need to combine it with +

&p "✓ All tests passed!"
