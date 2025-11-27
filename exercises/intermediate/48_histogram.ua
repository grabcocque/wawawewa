# Histogram Counts
# Difficulty: Intermediate+
# Concept: Frequency counting and data aggregation
# Prerequisites: Understanding of group (⊕), length (⧻), and indexing

# Description:
# Create a histogram by counting occurrences of each unique value in an array.
# Return an array where index i contains the count of value i. This assumes
# input values are non-negative integers. Useful for frequency analysis.

# Example:
# Input: [1 2 2 3 1 2 4 3 1]
# Expected: [0 3 3 2 1] (0 appears 0 times, 1 appears 3 times, etc.)

# Hint 1: Group the array by identity to collect indices of same values
# Hint 2: Count the length of each group to get frequencies
# Hint 3: The result needs to cover 0 to max value, padding with zeros
# Hint 4: Pattern uses ⊕∘ to group, then ≡⧻ to count each group's length

# Instructions:
# Replace ___ with the correct Uiua code
# Solution takes an array of non-negative integers

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [0 3 3 2 1] Solution [1 2 2 3 1 2 4 3 1]
⍤⊃⋅∘≍ [4 0 0 0 1] Solution [0 0 0 0 4]
⍤⊃⋅∘≍ [1 1 1 1 1] Solution [0 1 2 3 4]
⍤⊃⋅∘≍ [0 5] Solution [1 1 1 1 1]
⍤⊃⋅∘≍ [2 2 2] Solution [0 1 2 1 0 2]

&p "✓ All tests passed!"
