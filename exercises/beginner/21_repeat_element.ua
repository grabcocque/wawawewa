# Repeat Element
# Difficulty: Beginner
# Concept: Element repetition using where

# Description:
# The ▽ (where) function can repeat elements when given a count.
# ▽ 5 [1] creates [1 1 1 1 1] by repeating the element 5 times.

# Example:
# Input: 4 and [7]
# Expected: [7 7 7 7]

# Instructions:
# Replace Todo with the correct Uiua code to repeat an element n times

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [7 7 7 7] Solution 4 [7]
⍤⊃⋅∘≍ [10 10 10] Solution 3 [10]
⍤⊃⋅∘≍ [5 5 5 5 5 5] Solution 6 [5]

# Hint: Use ▽ with a count to repeat the element that many times

&p "✓ All tests passed!"
