# Reverse String
# Difficulty: Intermediate
# Concept: String reversal using array operations
# Prerequisites: Understanding strings as arrays, reverse function ⇌

# Description:
# Reversing a string in Uiua is straightforward because strings are character arrays.
# The reverse function (⇌) works on any array, including strings.

# Example:
# Input: "hello"
# Expected: "olleh"

# Hint 1: Think of the string as an array of characters
# Hint 2: The reverse function ⇌ reverses array elements
# Hint 3: Just apply ⇌ to the input string

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ "olleh" Solution "hello"
⍤⊃⋅∘≍ "" Solution ""
⍤⊃⋅∘≍ "a" Solution "a"
⍤⊃⋅∘≍ "dcba" Solution "abcd"
⍤⊃⋅∘≍ "!dlroW ,olleH" Solution "Hello, World!"

&p "✓ All tests passed!"
