# String Length
# Difficulty: Intermediate
# Concept: Strings as character arrays
# Prerequisites: Understanding that strings are arrays, length function ⧻

# Description:
# In Uiua, strings are simply arrays of characters. To get the length of a string,
# you use the same length function (⧻) that works on any array.

# Example:
# Input: "hello"
# Expected: 5

# Hint 1: Strings are arrays, so array functions work on them
# Hint 2: The length function ⧻ counts elements in an array
# Hint 3: Simply apply ⧻ to the string

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 5 Solution "hello"
⍤⊃⋅∘≍ 0 Solution ""
⍤⊃⋅∘≍ 13 Solution "Hello, World!"
⍤⊃⋅∘≍ 3 Solution "abc"
⍤⊃⋅∘≍ 1 Solution "x"

&p "✓ All tests passed!"
