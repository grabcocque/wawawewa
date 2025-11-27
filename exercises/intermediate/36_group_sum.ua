# Group Sum - Sum Values by Group
# Difficulty: Intermediate
# Concept: Using ⊕/+ (group reduce-add) to sum values within each group
# Prerequisites: Group operation ⊕, reduce /+, classification

# Description:
# Combine ⊕ (group) with /+ (reduce-add) to sum values that belong to the same group.
# Given a values array and a groups array, sum all values in each group.

# Example:
# Input values: [10 20 30 40 50]
# Input groups: [0 1 0 1 0]
# Expected: [90 60]  # Group 0: 10+30+50=90, Group 1: 20+40=60

# Hint 1: Use ⊕ (group) to organize values by their group labels
# Hint 2: Combine with /+ to sum within each group: ⊕/+
# Hint 3: Pass groups first, then values: ⊕/+ groups values

# Instructions:
# Replace Todo with the correct Uiua code to sum by group

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [90 60] Solution [10 20 30 40 50] [0 1 0 1 0]
⍤⊃⋅∘≍ [6 15] Solution [1 2 3 4 5] [0 1 0 1 1]
⍤⊃⋅∘≍ [15] Solution [1 2 3 4 5] [0 0 0 0 0]
⍤⊃⋅∘≍ [10 20 30] Solution [10 20 30] [0 1 2]

&p "✓ All tests passed!"
