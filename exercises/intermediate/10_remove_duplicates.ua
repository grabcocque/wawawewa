# Remove Duplicates
# Difficulty: Intermediate
# Concept: Deduplicate operation for unique elements
# Prerequisites: Understanding array uniqueness operations

# Description:
# Write a function that removes duplicate elements from an array, keeping only unique values.
# In Uiua, the ◴ (deduplicate) function removes consecutive duplicates.
# However, for general duplicate removal, you might need a different approach.
# The ⊝ (unique) function or ◴ after sorting can help.

# Example:
# Input: [1 2 2 3 1 4 3]
# Expected: [1 2 3 4] (order may vary depending on implementation)
#
# Input: [5 5 5]
# Expected: [5]

# Hints (graduated):
# Hint 1: What operation removes duplicate values from an array?
# Hint 2: ◴ removes consecutive duplicates - useful after sorting
# Hint 3: Try combining ⊏⍏ (sort) with ◴ (deduplicate)
# Hint 4: The pattern ◴⊏⍏ sorts then removes consecutive duplicates
# Hint 5: Alternative: some Uiua versions have ⊝ for unique elements

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution (using deduplicate after sort):
RemoveDuplicates ← Todo⊏⍏

# Tests with edge cases:
⍤⊃⋅∘≍ [1 2 3 4] RemoveDuplicates [1 2 2 3 1 4 3]
⍤⊃⋅∘≍ [5] RemoveDuplicates [5 5 5]
⍤⊃⋅∘≍ [1] RemoveDuplicates [1]
⍤⊃⋅∘≍ [] RemoveDuplicates []
⍤⊃⋅∘≍ [1 2 3 4 5] RemoveDuplicates [1 2 3 4 5]
⍤⊃⋅∘≍ [0 1 2] RemoveDuplicates [0 1 0 2 1 0 2]
⍤⊃⋅∘≍ [¯2 ¯1 0 1] RemoveDuplicates [1 ¯1 0 1 ¯2 0 ¯1]
⍤⊃⋅∘≍ [1 2 3 4 5 6 7 8 9 10] RemoveDuplicates [1 2 3 4 5 6 7 8 9 10 1 2 3]

&p "✓ All tests passed!"
