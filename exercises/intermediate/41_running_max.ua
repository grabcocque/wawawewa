# Running Maximum
# Difficulty: Intermediate+
# Concept: Scan operations for cumulative computations
# Prerequisites: Understanding of scan (\), max (↥), and array operations

# Description:
# Compute the running maximum of an array - at each position, return the maximum
# value seen so far from the start. This is useful for tracking peak values
# in time series data or finding cumulative maximums.

# Example:
# Input: [1 3 2 5 4 6 1]
# Expected: [1 3 3 5 5 6 6]

# Hint 1: Think about accumulating the maximum value as you scan through the array
# Hint 2: The scan operator (\) can apply a binary function cumulatively
# Hint 3: Combine scan with the max function (↥) to get running maximums
# Hint 4: The pattern is \↥ applied to the input array

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [1 3 3 5 5 6 6] Solution [1 3 2 5 4 6 1]
⍤⊃⋅∘≍ [5 5 5 5 5] Solution [5 4 3 2 1]
⍤⊃⋅∘≍ [1 2 3 4 5] Solution [1 2 3 4 5]
⍤⊃⋅∘≍ [10] Solution [10]
⍤⊃⋅∘≍ [¯5 ¯2 ¯2 0 0 3] Solution [¯5 ¯2 ¯3 0 ¯1 3]

&p "✓ All tests passed!"
