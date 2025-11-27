# Square Each Element
# Difficulty: Intermediate
# Concept: Each modifier (∵) with inline functions
# Prerequisites: Basic arrays, multiplication, inline functions (.)

# Description:
# The 'each' modifier (∵) applies a function to each element of an array.
# When combined with (.) to create inline functions, you can square each element.
# For example, ∵(×.) takes each element and multiplies it by itself.

# Example:
# Input: [1 2 3 4]
# Expected: [1 4 9 16]

# Hint 1: The (.) operator duplicates the top of the stack
# Hint 2: ×. multiplies a number by itself (squares it)
# Hint 3: Use ∵(×.) to apply the squaring operation to each element

# Instructions:
# Replace Todo with the correct Uiua code to square each element

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 4 9 16] Solution [1 2 3 4]
⍤⊃⋅∘≍ [0 1 4 9 16 25] Solution [0 1 2 3 4 5]
⍤⊃⋅∘≍ [100 400 900] Solution [10 20 30]

&p "✓ All tests passed!"
