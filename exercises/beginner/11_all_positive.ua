# All Positive
# Difficulty: Beginner
# Concept: Checking if all elements satisfy a condition

# Description:
# To check if ALL elements are positive (greater than 0), use comparison >0.
# Then use /↧ (reduce-minimum) on the boolean results.
# If any element is 0 or negative, the result will be 0 (false), otherwise 1 (true).

# Example:
# Input: [1 2 3 4]
# Expected: 1

# Instructions:
# Replace ___ with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 1 Solution [1 2 3 4]
⍤⊃⋅∘≍ 0 Solution [1 0 3 4]
⍤⊃⋅∘≍ 0 Solution [¯1 2 3]

# Hint: Use /↧>0 to check if all elements are greater than 0 (compare, then reduce with minimum)

&p "✓ All tests passed!"
