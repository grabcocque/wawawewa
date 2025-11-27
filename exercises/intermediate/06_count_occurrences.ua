# Count Occurrences
# Difficulty: Intermediate
# Concept: Equality comparison with reduce operations
# Prerequisites: Basic array operations, reduce, equality checks

# Description:
# Write a function that counts how many times a specific value appears in an array.
# You'll need to compare each element to the target value, then count the matches.
# Remember: in Uiua, true is 1 and false is 0, so summing boolean results gives a count.

# Example:
# Input: 3 [1 2 3 2 3 3 4]
# Expected: 3
#
# Input: 5 [1 2 3 4]
# Expected: 0

# Hints (graduated):
# Hint 1: How can you create an array of 1s and 0s showing where the value matches?
# Hint 2: The = operator compares values. What happens when you compare a scalar to an array?
# Hint 3: Try this pattern: = creates matches, then /+ sums them up
# Hint 4: The full pattern is: /+= (reduce-add after equality check)

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
CountOccurrences ← /+Todo

# Tests with edge cases:
⍤⊃⋅∘≍ 3 CountOccurrences 3 [1 2 3 2 3 3 4]
⍤⊃⋅∘≍ 0 CountOccurrences 5 [1 2 3 4]
⍤⊃⋅∘≍ 1 CountOccurrences 7 [7]
⍤⊃⋅∘≍ 5 CountOccurrences 2 [2 2 2 2 2]
⍤⊃⋅∘≍ 0 CountOccurrences 1 []
⍤⊃⋅∘≍ 4 CountOccurrences 0 [0 1 0 2 0 3 0]
⍤⊃⋅∘≍ 2 CountOccurrences ¯1 [¯1 2 ¯1 3]

&p "✓ All tests passed!"
