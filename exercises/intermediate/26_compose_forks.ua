# Compose Forks
# Difficulty: Intermediate
# Concept: Combining fork results with further operations
# Prerequisites: Fork, arithmetic, reduction operations

# Description:
# Fork can prepare values for subsequent operations. Use fork to get both the
# sum and product of an array, then add those two results together.
# For [2 3 4]: sum=9, product=24, result=33.

# Example:
# Input: [2 3 4]
# Expected: 33  # sum(9) + product(24) = 33

# Hint 1: First use fork to get both /+ (sum) and /× (product)
# Hint 2: Then add the two results with +
# Hint 3: Use +⊃(/+|/×) - fork gets sum and product, + adds them

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 33 Solution [2 3 4]
⍤⊃⋅∘≍ 7 Solution [1 2 3]
⍤⊃⋅∘≍ 10 Solution [5]
⍤⊃⋅∘≍ 130 Solution [10 2 5]

&p "✓ All tests passed!"
