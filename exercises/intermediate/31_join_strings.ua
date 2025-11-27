# Join Array of Strings
# Difficulty: Intermediate
# Concept: Reducing with concatenation
# Prerequisites: Understanding reduce (/), join (⊂), and working with boxed arrays

# Description:
# Join an array of strings into a single string. Use the reduce function (/)
# with join (⊂) to concatenate all strings together. The input is an array
# of boxed strings.

# Example:
# Input: {"hello" "world"}
# Expected: "helloworld"

# Hint 1: You need to reduce over the array with a joining operation
# Hint 2: The join function ⊂ concatenates two arrays
# Hint 3: Use /⊂ to reduce by joining, but you'll need to unbox with ⊔

# Instructions:
# Replace Todo with the correct Uiua code

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ "helloworld" Solution {"hello" "world"}
⍤⊃⋅∘≍ "abc" Solution {"a" "b" "c"}
⍤⊃⋅∘≍ "onetwothree" Solution {"one" "two" "three"}
⍤⊃⋅∘≍ "test" Solution {"test"}
⍤⊃⋅∘≍ "concatenated" Solution {"con" "cat" "en" "ated"}

&p "✓ All tests passed!"
