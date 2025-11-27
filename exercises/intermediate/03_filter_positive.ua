# Filter Positive Numbers
# Difficulty: Intermediate
# Concept: Keep (▽), comparison operators, boolean indexing
# Prerequisites: Greater than (>), literal 0, filter/keep operation

# Description:
# Write a function that keeps only the positive numbers from an array.
# Use the keep (▽) function which filters elements based on a boolean mask.
# A positive number is any number greater than 0.

# Example:
# Input: [¯3 ¯1 0 2 5 ¯7 8]
# Expected: [2 5 8]

# Example 2:
# Input: [1 2 3 4 5]
# Expected: [1 2 3 4 5]

# Hint 1: You need to create a boolean mask where each element is 1 (true) if positive, 0 (false) otherwise
# Hint 2: The comparison >0 creates this mask when applied to an array
# Hint 3: Use ▽ (keep) with the mask from >0 - the pattern is: ▽>0

# Instructions:
# Replace ___ with the correct Uiua code to filter positive numbers

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 5 8] Solution [¯3 ¯1 0 2 5 ¯7 8]
⍤⊃⋅∘≍ [1 2 3 4 5] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [] Solution [¯5 ¯4 ¯3 ¯2 ¯1 0]
⍤⊃⋅∘≍ [0.5 3.14 100] Solution [¯10 0.5 0 3.14 ¯2.5 100]
⍤⊃⋅∘≍ [7] Solution [7]

&p "✓ All tests passed!"
