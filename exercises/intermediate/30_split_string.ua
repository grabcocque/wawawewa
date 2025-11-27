# Split String by Delimiter
# Difficulty: Intermediate
# Concept: Partitioning arrays with ⊜□
# Prerequisites: Understanding partition (⊜), box (□), and equality checks

# Description:
# Split a string into parts using a delimiter character. Use the partition function (⊜)
# with box (□) to group consecutive characters that are not the delimiter.
# The result is an array of boxed strings.

# Example:
# Input: "hello,world,test" with delimiter @,
# Expected: {"hello" "world" "test"}

# Hint 1: Use ≠ to mark characters that are NOT the delimiter
# Hint 2: ⊜□ groups consecutive truthy values and boxes each group
# Hint 3: Try ⊜□≠@, where the delimiter is @,

# Instructions:
# Replace Todo with the correct Uiua code
# The function should take a delimiter character and a string

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ {"hello" "world" "test"} Solution @, "hello,world,test"
⍤⊃⋅∘≍ {"a" "b" "c"} Solution @  "a b c"
⍤⊃⋅∘≍ {"one" "two"} Solution @- "one-two"
⍤⊃⋅∘≍ {"split" "by" "colon"} Solution @: "split:by:colon"

&p "✓ All tests passed!"
