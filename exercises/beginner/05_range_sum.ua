# Sum of Range
# Difficulty: Beginner
# Concept: Combining range and reduce

# Description:
# Write a function that takes a number n and returns the sum of all integers from 0 to n-1.
# This combines two concepts: ⇡ (range) creates an array [0 1 2 ... n-1],
# and /+ (reduce-add) sums all elements. Chain them together with function composition.

# Example:
# Input: 5
# Expected: 10 (because 0+1+2+3+4 = 10)

# Instructions:
# Replace Todo with the correct combination of range (⇡) and reduce-add (/+)
# Remember: Uiua executes right-to-left, so think about the order!

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests (learner runs these to verify):
# Test 1: Sum 0..4
⍤⊃⋅∘≍ 10 Solution 5

# Test 2: Sum 0..9
⍤⊃⋅∘≍ 45 Solution 10

# Test 3: Sum 0..2
⍤⊃⋅∘≍ 3 Solution 3

# Hint: You need to create a range first, then sum it. In right-to-left order: /+⇡

&p "✓ All tests passed!"
