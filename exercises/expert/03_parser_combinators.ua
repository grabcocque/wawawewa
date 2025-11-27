# Simple Expression Parser
# Difficulty: Expert
# Concept: Parsing, recursion, string manipulation, state threading
# Prerequisites: ALL previous exercises - this is your graduation exam!

# Description:
# Parse and evaluate simple arithmetic expressions with +, -, *, and parentheses.
# Implement a recursive descent parser that respects operator precedence:
# - Parentheses first (highest precedence)
# - * next
# - + and - last (lowest precedence, left-to-right)
# 
# All numbers are single digits 0-9. No spaces in input.

# Examples:
# "3+4"     → 7
# "3+4*2"   → 11  (not 14! * has higher precedence)
# "2*3+4"   → 10
# "(3+4)*2" → 14
# "9-3-2"   → 4   (left-to-right: (9-3)-2)
# "2*(3+4)" → 14

# The Challenge:
# This requires you to:
# 1. Parse digits into numbers
# 2. Handle operator precedence correctly
# 3. Handle parentheses (recursive descent)
# 4. Process left-to-right for same-precedence operators
# 
# Suggested approach:
# - Write a tokenizer: string → array of tokens (numbers and operators)
# - Write an evaluator that handles precedence
# - For precedence: evaluate * first by scanning and reducing, then + and -
# 
# Alternative approach:
# - Convert to postfix notation (Shunting Yard), then evaluate
# - This avoids explicit recursion for parentheses

# Key techniques you'll need:
# - ⊜ (partition) to split string into tokens
# - ⊗ (indexof) or = to identify operators vs digits
# - ⍥ or ↬ for iteration/recursion
# - Careful stack management for the evaluation

# Hints (only look if truly stuck!):
# Hint 1: First, get "3+4" working (no precedence needed)
# Hint 2: For precedence, process * operations first in a pass
# Hint 3: For parens, find matching pairs and recursively evaluate inner expression
# Hint 4: -@0 converts character to digit value
# Hint 5: Consider: can you reduce [...3 + 4...] → [...7...] repeatedly?

# Instructions:
# Replace Todo with a function that evaluates an arithmetic expression string

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Eval ← Todo

# Tests:
# Test 1: Simple addition
⍤⊃⋅∘≍ 7 Eval "3+4"

# Test 2: Multiplication precedence
⍤⊃⋅∘≍ 11 Eval "3+4*2"

# Test 3: Multiplication first
⍤⊃⋅∘≍ 10 Eval "2*3+4"

# Test 4: Parentheses override
⍤⊃⋅∘≍ 14 Eval "(3+4)*2"

# Test 5: Subtraction left-to-right
⍤⊃⋅∘≍ 4 Eval "9-3-2"

# Test 6: Nested parentheses
⍤⊃⋅∘≍ 20 Eval "((2+3))*4"

# Test 7: Complex expression
⍤⊃⋅∘≍ 23 Eval "3+4*5"

# Test 8: All operations
⍤⊃⋅∘≍ 13 Eval "2+3*4-1"

# Test 9: Single digit
⍤⊃⋅∘≍ 5 Eval "5"

&p "✓ All tests passed! You are a TRUE Uiua master! 🎓"
