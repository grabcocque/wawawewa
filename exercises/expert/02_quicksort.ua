# Quicksort Implementation
# Difficulty: Expert
# Concept: Recursion, partitioning, array manipulation, conditional logic
# Prerequisites: ALL previous exercises - this is your graduation exam!

# Description:
# Implement the quicksort algorithm in pure Uiua.
# 
# Quicksort works by:
# 1. If array has 0 or 1 elements, return it (base case)
# 2. Pick a pivot (first element is fine)
# 3. Partition into: elements < pivot, elements = pivot, elements > pivot
# 4. Recursively sort the < and > partitions
# 5. Concatenate: sorted(<) ++ equal ++ sorted(>)

# Example:
# Input: [3 1 4 1 5 9 2 6 5 3 5]
# Expected: [1 1 2 3 3 4 5 5 5 6 9]

# The Challenge:
# Uiua doesn't have explicit recursion, but you can use:
# - ⍥ (repeat) with a fixed number of iterations
# - Or clever use of / (reduce) for divide-and-conquer
# - Or use ↬ (do) for conditional recursion
# 
# Key techniques you'll need:
# - ⊢ (first) to get pivot
# - ▽ (keep) with <, =, > to partition
# - ⊂ (join) to concatenate results
# - Some form of recursion or iteration

# Hints (only look if truly stuck!):
# Hint 1: Start by writing the partition step - split array by pivot
# Hint 2: ▽< ⊢. gives elements less than first element
# Hint 3: For recursion, consider boxing partitions and using ∧ (fold)
# Hint 4: The base case check: if ⧻ ≤ 1, return unchanged
# Hint 5: Advanced - you might need ↬ (do) or creative use of ⍢ (undo)

# Instructions:
# Replace Todo with a function that sorts an array in ascending order

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
QuickSort ← Todo

# Tests:
# Test 1: Mixed array
⍤⊃⋅∘≍ [1 1 2 3 3 4 5 5 5 6 9] QuickSort [3 1 4 1 5 9 2 6 5 3 5]

# Test 2: Already sorted
⍤⊃⋅∘≍ [1 2 3 4 5] QuickSort [1 2 3 4 5]

# Test 3: Reverse sorted
⍤⊃⋅∘≍ [1 2 3 4 5] QuickSort [5 4 3 2 1]

# Test 4: Single element
⍤⊃⋅∘≍ [42] QuickSort [42]

# Test 5: Empty array
⍤⊃⋅∘≍ [] QuickSort []

# Test 6: All same elements
⍤⊃⋅∘≍ [7 7 7 7] QuickSort [7 7 7 7]

# Test 7: With negatives
⍤⊃⋅∘≍ [¯5 ¯2 0 3 7] QuickSort [3 ¯2 7 0 ¯5]

&p "✓ All tests passed! You've implemented a classic algorithm in Uiua!"
