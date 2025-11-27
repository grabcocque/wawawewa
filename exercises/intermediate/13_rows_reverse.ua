# Reverse Each Row
# Difficulty: Intermediate
# Concept: Rows modifier (≡) with reverse function (⇌)
# Prerequisites: Matrices, reverse function, understanding of rows

# Description:
# The 'rows' modifier (≡) applies a function to each row of a matrix.
# When combined with the reverse function (⇌), it reverses each row independently
# while keeping the row order the same.

# Example:
# Input: [1_2_3 4_5_6]
# Expected: [3_2_1 6_5_4]

# Hint 1: The reverse function ⇌ reverses the order of elements in an array
# Hint 2: The rows modifier ≡ applies a function to each row of a matrix
# Hint 3: Combine them as ≡⇌ to reverse each row

# Instructions:
# Replace ___ with the correct Uiua code to reverse each row

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [3_2_1 6_5_4] Solution [1_2_3 4_5_6]
⍤⊃⋅∘≍ [4_3_2_1 8_7_6_5] Solution [1_2_3_4 5_6_7_8]
⍤⊃⋅∘≍ [1 2 3] Solution [1 2 3]

&p "✓ All tests passed!"
