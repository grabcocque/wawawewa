# Moving Average
# Difficulty: Intermediate+
# Concept: Sliding window computations for signal processing
# Prerequisites: Understanding of windows (◫), reduce (/), and division (÷)

# Description:
# Compute the moving average of an array with a given window size. For each
# position, calculate the average of the window centered or starting at that position.
# This smooths out short-term fluctuations and highlights longer-term trends.

# Example:
# Input: window=3, array=[1 2 3 4 5 6]
# Expected: [2 3 4 5]

# Hint 1: Use windows (◫) to create overlapping segments of the specified size
# Hint 2: For each window, compute the average (sum divided by length)
# Hint 3: Apply this averaging operation to each window using rows (≡)
# Hint 4: Pattern: ≡(÷⧻.(/+)) ◫ n where n is window size

# Instructions:
# Replace Todo with the correct Uiua code
# Solution takes window size n and array

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ [2 3 4 5] Solution 3 [1 2 3 4 5 6]
⍤⊃⋅∘≍ [1.5 2.5 3.5 4.5 5.5] Solution 2 [1 2 3 4 5 6]
⍤⊃⋅∘≍ [3 3 3 3] Solution 4 [1 2 3 4 5 6]
⍤⊃⋅∘≍ [10] Solution 5 [10 10 10 10 10]
⍤⊃⋅∘≍ [2 4 6 8] Solution 3 [1 2 3 4 5 6 7 8 9]

&p "✓ All tests passed!"
