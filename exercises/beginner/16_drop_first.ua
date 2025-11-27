# Drop First Element
# Difficulty: Beginner
# Concept: Array slicing with drop

# Description:
# The ↘ (drop) function removes elements from the beginning of an array.
# ↘1 drops the first element, leaving the rest of the array.

# Example:
# Input: [1 2 3 4 5]
# Expected: [2 3 4 5]

# Instructions:
# Replace ___ with the correct Uiua code to drop the first element

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 3 4 5] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [20 30] Solution [10 20 30]
⍤⊃⋅∘≍ [] Solution [99]

# Hint: Use ↘1 to drop 1 element from the start

&p "✓ All tests passed!"
