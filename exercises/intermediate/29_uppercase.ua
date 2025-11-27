# Convert to Uppercase
# Difficulty: Intermediate
# Concept: Character code manipulation
# Prerequisites: Understanding character codes, arithmetic on arrays, @a notation

# Description:
# Convert lowercase letters to uppercase by manipulating character codes.
# Lowercase 'a' is 97, uppercase 'A' is 65, so subtract 32 from lowercase letters.
# Only modify characters that are lowercase letters (a-z).

# Example:
# Input: "hello"
# Expected: "HELLO"

# Hint 1: Lowercase letters have character codes from @a (97) to @z (122)
# Hint 2: Subtracting 32 from a lowercase letter gives its uppercase version
# Hint 3: Use ≥@a and ≤@z to identify lowercase letters, then conditionally subtract 32

# Instructions:
# Replace ___ with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ "HELLO" Solution "hello"
⍤⊃⋅∘≍ "WORLD" Solution "world"
⍤⊃⋅∘≍ "ABC" Solution "abc"
⍤⊃⋅∘≍ "HELLO WORLD" Solution "hello world"
⍤⊃⋅∘≍ "ABC123" Solution "abc123"

&p "✓ All tests passed!"
