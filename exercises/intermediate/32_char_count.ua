# Count Character Occurrences
# Difficulty: Intermediate
# Concept: Filtering and counting
# Prerequisites: Understanding equality (=), sum (/+), and character literals (@)

# Description:
# Count how many times a specific character appears in a string.
# Use equality to create a boolean array, then sum the results to get the count.

# Example:
# Input: @l "hello"
# Expected: 2

# Hint 1: Compare each character in the string to the target character
# Hint 2: Equality (=) creates a boolean array where matches are 1
# Hint 3: Sum the boolean array with /+ to count the matches

# Instructions:
# Replace ___ with the correct Uiua code
# The function should take a character and a string

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 2 Solution @l "hello"
⍤⊃⋅∘≍ 3 Solution @o "hello world"
⍤⊃⋅∘≍ 0 Solution @x "hello"
⍤⊃⋅∘≍ 4 Solution @a "banana"
⍤⊃⋅∘≍ 1 Solution @! "Hello, World!"

&p "✓ All tests passed!"
