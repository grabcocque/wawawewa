# Count Greater Than
# Difficulty: Beginner
# Concept: Combining comparison and reduction

# Description:
# To count how many elements are greater than a value, compare each element with >.
# This creates an array of 1s (true) and 0s (false).
# Then use /+ (reduce-add) to sum these values, counting the 1s.

# Example:
# Input: [1 5 3 7 2] 3
# Expected: 2

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 2 Solution [1 5 3 7 2] 3
⍤⊃⋅∘≍ 4 Solution [5 6 7 8] 4
⍤⊃⋅∘≍ 0 Solution [1 2 3] 10

# Hint: Use /+> to count elements greater than a threshold (compare first, then sum)

&p "✓ All tests passed!"
