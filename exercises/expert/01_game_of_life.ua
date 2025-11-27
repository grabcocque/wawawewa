# Conway's Game of Life - Single Step
# Difficulty: Expert
# Concept: 2D array manipulation, neighbor counting, table, boolean logic
# Prerequisites: ALL previous exercises - this is your graduation exam!

# Description:
# Implement ONE step of Conway's Game of Life.
# Given an n×m grid of 0s (dead) and 1s (alive), compute the next generation.
# 
# Rules:
# 1. Any live cell with 2 or 3 live neighbors survives
# 2. Any dead cell with exactly 3 live neighbors becomes alive
# 3. All other cells die or stay dead
# 
# The grid wraps around (toroidal topology) - edges connect to opposite edges.

# Example:
# Input:  [[0 1 0]
#          [0 0 1]
#          [1 1 1]]
# 
# Expected: [[0 0 0]
#            [1 0 1]
#            [0 1 1]]
# 
# (This is the "glider" pattern - a famous Game of Life oscillator)

# The Challenge:
# You must count neighbors for each cell (8 directions, wrapping),
# then apply the rules to determine the next state.
# 
# Key techniques you'll need:
# - ↻ (rotate) to shift the grid in each direction
# - Combining 8 rotated versions to count neighbors
# - Boolean logic to apply the birth/survival rules
# - The pattern: живая клетка = (neighbors = 3) OR (alive AND neighbors = 2)

# Instructions:
# Replace Todo with a function that takes a 2D grid and returns the next generation

Todo ← ⍤"TODO: Fill in your solution"0

# Your solution:
Life ← Todo

# Tests:
# Test 1: Glider step
⍤⊃⋅∘≍ [[0 0 0] [1 0 1] [0 1 1]] Life [[0 1 0] [0 0 1] [1 1 1]]

# Test 2: Block (stable pattern - should not change)
⍤⊃⋅∘≍ [[1 1] [1 1]] Life [[1 1] [1 1]]

# Test 3: Blinker (oscillator - vertical to horizontal)
⍤⊃⋅∘≍ [[0 0 0] [1 1 1] [0 0 0]] Life [[0 1 0] [0 1 0] [0 1 0]]

# Test 4: Empty grid stays empty
⍤⊃⋅∘≍ [[0 0 0] [0 0 0] [0 0 0]] Life [[0 0 0] [0 0 0] [0 0 0]]

# Test 5: Single cell dies (loneliness)
⍤⊃⋅∘≍ [[0 0 0] [0 0 0] [0 0 0]] Life [[0 0 0] [0 1 0] [0 0 0]]

&p "✓ All tests passed! You've mastered 2D cellular automata!"
