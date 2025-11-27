# Check if All Characters are Digits
# Difficulty: Intermediate
# Concept: Boolean logic and character ranges
# Prerequisites: Understanding character codes, comparison operators, and reduce with ×

# Description:
# Check if all characters in a string are digits (0-9). Each character must
# have a code between @0 (48) and @9 (57). Use comparison operators and
# reduce to verify all characters meet this condition.

# Example:
# Input: "123"
# Expected: 1 (true)

# Example:
# Input: "12a3"
# Expected: 0 (false)

# Hint 1: Check if each character is ≥@0 and ≤@9
# Hint 2: Use × (multiplication) to combine the two conditions per character
# Hint 3: Reduce with /× to check if ALL characters are digits (all must be 1)

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 1 Solution "123"
⍤⊃⋅∘≍ 1 Solution "0"
⍤⊃⋅∘≍ 1 Solution "999"
⍤⊃⋅∘≍ 0 Solution "12a3"
⍤⊃⋅∘≍ 0 Solution "hello"
⍤⊃⋅∘≍ 0 Solution "12.34"
⍤⊃⋅∘≍ 1 Solution "42"

&p "✓ All tests passed!"
