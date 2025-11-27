# Drop Last Element
# Difficulty: Beginner
# Concept: Array slicing with negative indexing

# Description:
# Using ↙¯1 (take negative 1) takes all elements except the last one.
# Negative indices count from the end of the array backwards.

# Example:
# Input: [1 2 3 4 5]
# Expected: [1 2 3 4]

# Instructions:
# Replace Todo with the correct Uiua code to drop the last element

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 2 3 4] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [10 20] Solution [10 20 30]
⍤⊃⋅∘≍ [] Solution [99]

# Hint: Use ↙¯1 to take all elements except the last one

&p "✓ All tests passed!"
