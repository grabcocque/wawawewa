# Prime Number Check
# Difficulty: Intermediate+
# Concept: Algorithmic problem solving with modulo and logical operations
# Prerequisites: Understanding of range (⇡), modulo (◿), reduce (/), and comparison

# Description:
# Determine if a number is prime by checking if it has any divisors other than
# 1 and itself. A prime number is only divisible by 1 and itself. Numbers less
# than 2 are not prime by definition.

# Example:
# Input: 17
# Expected: 1 (true)

# Hint 1: Generate all potential divisors from 2 to sqrt(n) or n-1
# Hint 2: Check if any divisor evenly divides the number using modulo (◿)
# Hint 3: Use reduce with logical operations to check if no divisors exist
# Hint 4: Pattern: +2⇡-1 gives range [2..n-1], check if all modulos are non-zero

# Instructions:
# Replace ___ with the correct Uiua code
# Return 1 for prime, 0 for not prime

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Solution ← Todo

# Tests:
⍤⊃⋅∘≍ 1 Solution 2
⍤⊃⋅∘≍ 1 Solution 17
⍤⊃⋅∘≍ 1 Solution 13
⍤⊃⋅∘≍ 0 Solution 4
⍤⊃⋅∘≍ 0 Solution 1
⍤⊃⋅∘≍ 0 Solution 100
⍤⊃⋅∘≍ 1 Solution 97

&p "✓ All tests passed!"
