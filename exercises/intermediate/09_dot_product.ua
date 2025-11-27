# Dot Product
# Difficulty: Intermediate+
# Concept: Element-wise operations with reduce
# Prerequisites: Multiply (×), reduce (/), add (+)

# Description:
# Write a function that computes the dot product of two arrays.
# The dot product is: multiply corresponding elements, then sum all products.
# For [a b c] and [x y z], the result is: a×x + b×y + c×z
# This is a fundamental operation in linear algebra and machine learning.

# Example:
# Input: [1 2 3] [4 5 6]
# Expected: 32 (because 1×4 + 2×5 + 3×6 = 4 + 10 + 18 = 32)
#
# Input: [1 0 0] [5 7 9]
# Expected: 5

# Hints (graduated):
# Hint 1: Break this into two steps: multiply corresponding elements, then sum the results
# Hint 2: × multiplies two arrays element-wise: [1 2 3] × [4 5 6] = [4 10 18]
# Hint 3: /+ sums all elements: /+ [4 10 18] = 32
# Hint 4: Combine them: /+× (reduce-add after multiply)
# Hint 5: The arrays come in the right order on the stack for /+×

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
DotProduct ← Todo×

# Tests with edge cases:
⍤⊃⋅∘≍ 32 DotProduct [1 2 3] [4 5 6]
⍤⊃⋅∘≍ 5 DotProduct [1 0 0] [5 7 9]
⍤⊃⋅∘≍ 0 DotProduct [0 0 0] [1 2 3]
⍤⊃⋅∘≍ 14 DotProduct [1 2 3] [1 2 3]
⍤⊃⋅∘≍ 7 DotProduct [7] [1]
⍤⊃⋅∘≍ 0 DotProduct [] []
⍤⊃⋅∘≍ ¯10 DotProduct [1 2 ¯3] [2 ¯2 2]
⍤⊃⋅∘≍ 2.5 DotProduct [0.5 1.5] [1 1]
⍤⊃⋅∘≍ 110 DotProduct [1 2 3 4 5] [10 10 10 10 10]

&p "✓ All tests passed!"
