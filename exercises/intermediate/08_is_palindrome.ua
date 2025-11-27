# Is Palindrome
# Difficulty: Intermediate+
# Concept: Array comparison with reverse, fork pattern
# Prerequisites: Reverse (⇌), match (≍), fork (⊃), identity (∘)

# Description:
# Write a function that checks if an array is a palindrome (reads the same forwards and backwards).
# You'll need to compare the array with its reversed version.
# The match function (≍) returns 1 if arrays are identical, 0 otherwise.
# The fork pattern ⊃ lets you apply different functions to the same input.

# Example:
# Input: [1 2 3 2 1]
# Expected: 1 (true)
#
# Input: [1 2 3 4]
# Expected: 0 (false)

# Hints (graduated):
# Hint 1: A palindrome is the same when reversed. How can you check if two arrays are equal?
# Hint 2: ⇌ reverses an array, ≍ checks if two arrays match
# Hint 3: You need to compare the original array with its reverse using ⊃
# Hint 4: The fork pattern ⊃∘⇌ creates [original, reversed], then ≍ compares them
# Hint 5: Full solution: ≍⊃∘⇌ (match after forking identity and reverse)

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
IsPalindrome ← ≍⊃Todo⇌

# Tests with edge cases:
⍤⊃⋅∘≍ 1 IsPalindrome [1 2 3 2 1]
⍤⊃⋅∘≍ 0 IsPalindrome [1 2 3 4]
⍤⊃⋅∘≍ 1 IsPalindrome [7]
⍤⊃⋅∘≍ 1 IsPalindrome [5 5]
⍤⊃⋅∘≍ 0 IsPalindrome [1 2]
⍤⊃⋅∘≍ 1 IsPalindrome []
⍤⊃⋅∘≍ 1 IsPalindrome [1 2 3 4 3 2 1]
⍤⊃⋅∘≍ 0 IsPalindrome [1 2 3 4 5 4 3 2 0]
⍤⊃⋅∘≍ 1 IsPalindrome [¯1 0 ¯1]

&p "✓ All tests passed!"
