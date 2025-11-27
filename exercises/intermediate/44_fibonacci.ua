# Fibonacci Sequence
# Difficulty: Intermediate+
# Concept: Iterative generation using scan and custom functions
# Prerequisites: Understanding of scan (\), reduce (/), and function composition

# Description:
# Generate the first n numbers of the Fibonacci sequence where each number is
# the sum of the two preceding ones, starting from [0, 1]. This classic sequence
# appears frequently in mathematics and nature.

# Example:
# Input: 8
# Expected: [0 1 1 2 3 5 8 13]

# Hint 1: Start with initial values [0 1] and build up the sequence
# Hint 2: You need to repeatedly add the last two numbers to get the next
# Hint 3: Use scan with a range to repeat the operation, keeping track of pairs
# Hint 4: Pattern involves ⊂ to append, +, and managing the last two values

# Instructions:
# Replace Todo with the correct Uiua code
# Solution should take n and return first n Fibonacci numbers

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [0 1 1 2 3 5 8 13] Solution 8
⍤⊃⋅∘≍ [0 1] Solution 2
⍤⊃⋅∘≍ [0] Solution 1
⍤⊃⋅∘≍ [0 1 1 2 3 5 8 13 21 34] Solution 10
⍤⊃⋅∘≍ [0 1 1 2 3] Solution 5

&p "✓ All tests passed!"
