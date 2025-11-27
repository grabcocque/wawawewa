# Double Every Element
# Difficulty: Beginner
# Concept: Scalar multiplication with arrays

# Description:
# Write a function that doubles every element in an array.
# In Uiua, when you multiply an array by a scalar (single number), it automatically
# applies the operation to each element. This is called "pervasion".

# Example:
# Input: [1 2 3 4]
# Expected: [2 4 6 8]

# Instructions:
# Replace ___ with the correct Uiua operation to double each element
# You'll need to use multiplication (×) with the number 2

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests (learner runs these to verify):
# Test 1: Small numbers
⍤⊃⋅∘≍ [2 4 6 8] Solution [1 2 3 4]

# Test 2: Starting from 0
⍤⊃⋅∘≍ [0 2 4 6] Solution [0 1 2 3]

# Test 3: Larger numbers
⍤⊃⋅∘≍ [20 40 60] Solution [10 20 30]

# Hint: Use ×2 or 2× to multiply by 2 (remember Uiua is right-to-left!)

&p "✓ All tests passed!"
