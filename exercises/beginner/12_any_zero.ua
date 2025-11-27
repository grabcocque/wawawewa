# Any Zero
# Difficulty: Beginner
# Concept: Checking if any element satisfies a condition

# Description:
# To check if ANY element equals 0, use comparison =0.
# Then use /↥ (reduce-maximum) on the boolean results.
# If at least one element is 0, the result will be 1 (true), otherwise 0 (false).

# Example:
# Input: [1 0 3]
# Expected: 1

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 1 Solution [1 0 3]
⍤⊃⋅∘≍ 0 Solution [1 2 3 4]
⍤⊃⋅∘≍ 1 Solution [0 0 0]

# Hint: Use /↥=0 to check if any element equals 0 (compare, then reduce with maximum)

&p "✓ All tests passed!"
