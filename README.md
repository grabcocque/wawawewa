# Uiua Learning Exercises

**79 fill-in-the-blank exercises** to master [Uiua](https://uiua.org), the stack-based array programming language.

## Quick Start

```bash
# Run an exercise
uiua run exercises/beginner/01_sum_array.ua

# Unsolved exercises show: "Error: TODO: Fill in your solution"
# Solved exercises show: "✓ All tests passed!"
```

## How It Works

1. Open a `.ua` file
2. Read the problem description and examples
3. Replace `Todo` with your solution
4. Run to verify - tests auto-check your answer

---

## Exercise Overview

| Level | Count | Topics |
|-------|-------|--------|
| **Beginner** | 28 | Core ops, arithmetic, arrays, stack |
| **Intermediate** | 48 | Modifiers, combinators, strings, grouping |
| **Expert** | 3 | Game of Life, Quicksort, Expression Parser |

---

## Beginner Exercises (28)

### Core Operations (01-05)
| # | File | Concept |
|---|------|---------|
| 01 | `01_sum_array.ua` | Reduce-add |
| 02 | `02_array_length.ua` | Length |
| 03 | `03_reverse_array.ua` | Reverse |
| 04 | `04_double_elements.ua` | Pervasive multiply |
| 05 | `05_range_sum.ua` | Composition |

### Arithmetic & Comparisons (06-13)
| # | File | Concept |
|---|------|---------|
| 06 | `06_absolute_value.ua` | Absolute value |
| 07 | `07_negate_array.ua` | Negate |
| 08 | `08_modulo.ua` | Modulo |
| 09 | `09_minimum.ua` | Reduce-min |
| 10 | `10_count_greater.ua` | Count with condition |
| 11 | `11_all_positive.ua` | All satisfy |
| 12 | `12_any_zero.ua` | Any satisfy |
| 13 | `13_floor_ceiling.ua` | Rounding |

### Array Manipulation (14-21)
| # | File | Concept |
|---|------|---------|
| 14 | `14_first_element.ua` | First |
| 15 | `15_last_element.ua` | Last |
| 16 | `16_drop_first.ua` | Drop |
| 17 | `17_drop_last.ua` | Negative indexing |
| 18 | `18_reshape.ua` | Reshape |
| 19 | `19_flatten.ua` | Deshape/flatten |
| 20 | `20_iota_grid.ua` | Grid creation |
| 21 | `21_repeat_element.ua` | Repeat with keep |

### Stack Operations (22-28)
| # | File | Concept |
|---|------|---------|
| 22 | `22_duplicate.ua` | Duplicate |
| 23 | `23_flip.ua` | Flip/swap |
| 24 | `24_square.ua` | Multiply self |
| 25 | `25_both_ops.ua` | Both |
| 26 | `26_dip_add.ua` | Dip |
| 27 | `27_over.ua` | Over |
| 28 | `28_identity.ua` | Identity |

---

## Intermediate Exercises (48)

### Core Patterns (01-10)
| # | File | Concept |
|---|------|---------|
| 01 | `01_calculate_mean.ua` | Fork for mean |
| 02 | `02_cumulative_sum.ua` | Scan |
| 03 | `03_filter_positive.ua` | Keep/filter |
| 04 | `04_matrix_transpose.ua` | Transpose |
| 05 | `05_first_n_elements.ua` | Take |
| 06 | `06_count_occurrences.ua` | Count matches |
| 07 | `07_find_maximum.ua` | Reduce-max |
| 08 | `08_is_palindrome.ua` | Fork + match |
| 09 | `09_dot_product.ua` | Multiply + sum |
| 10 | `10_remove_duplicates.ua` | Deduplicate |

### Modifiers (11-18)
| # | File | Concept |
|---|------|---------|
| 11 | `11_each_square.ua` | Each |
| 12 | `12_each_length.ua` | Each on boxes |
| 13 | `13_rows_reverse.ua` | Rows |
| 14 | `14_rows_sum.ua` | Rows reduce |
| 15 | `15_table_add.ua` | Table |
| 16 | `16_table_multiply.ua` | Multiplication table |
| 17 | `17_table_compare.ua` | Comparison matrix |
| 18 | `18_outer_product.ua` | Outer product |

### Combinators (19-26)
| # | File | Concept |
|---|------|---------|
| 19 | `19_fork_minmax.ua` | Fork min/max |
| 20 | `20_fork_stats.ua` | Fork for stats |
| 21 | `21_bracket_apply.ua` | Bracket |
| 22 | `22_both_increment.ua` | Both |
| 23 | `23_on_preserve.ua` | On |
| 24 | `24_by_pattern.ua` | By |
| 25 | `25_fork_three.ua` | Nested fork |
| 26 | `26_compose_forks.ua` | Fork composition |

### String Manipulation (27-33)
| # | File | Concept |
|---|------|---------|
| 27 | `27_string_length.ua` | String as array |
| 28 | `28_reverse_string.ua` | Reverse string |
| 29 | `29_uppercase.ua` | Char codes |
| 30 | `30_split_string.ua` | Partition |
| 31 | `31_join_strings.ua` | Join |
| 32 | `32_char_count.ua` | Count char |
| 33 | `33_is_digit.ua` | Validate digits |

### Grouping Operations (34-40)
| # | File | Concept |
|---|------|---------|
| 34 | `34_where.ua` | Where (indices) |
| 35 | `35_classify.ua` | Classify |
| 36 | `36_group_sum.ua` | Group reduce |
| 37 | `37_partition_split.ua` | Partition |
| 38 | `38_group_count.ua` | Group count |
| 39 | `39_indices_of.ua` | Index of |
| 40 | `40_select_indices.ua` | Select |

### Advanced Compositions (41-48)
| # | File | Concept |
|---|------|---------|
| 41 | `41_running_max.ua` | Scan max |
| 42 | `42_differences.ua` | Adjacent diff |
| 43 | `43_rotate_array.ua` | Rotate |
| 44 | `44_fibonacci.ua` | Iteration |
| 45 | `45_prime_check.ua` | Prime test |
| 46 | `46_matrix_multiply.ua` | Matrix multiply |
| 47 | `47_moving_average.ua` | Moving average |
| 48 | `48_histogram.ua` | Histogram |

---

## Expert Exercises (3) - Graduation Exams

| # | File | Challenge |
|---|------|-----------|
| 01 | `01_game_of_life.ua` | Conway's Game of Life - one step |
| 02 | `02_quicksort.ua` | Implement quicksort algorithm |
| 03 | `03_parser_combinators.ua` | Arithmetic expression parser |

---

## Recommended Learning Order

| Week | Exercises | Focus |
|------|-----------|-------|
| 1 | Beginner 01-13 | Core ops, arithmetic |
| 2 | Beginner 14-28 | Arrays, stack manipulation |
| 3 | Intermediate 01-10 | Core patterns |
| 4 | Intermediate 11-18 | Modifiers |
| 5 | Intermediate 19-26 | Combinators |
| 6 | Intermediate 27-40 | Strings, grouping |
| 7 | Intermediate 41-48 | Advanced compositions |
| 8 | Expert 01-03 | Graduation! |

---

## Running Exercises

```bash
# Single exercise
uiua run exercises/beginner/01_sum_array.ua

# All beginner exercises
for f in exercises/beginner/*.ua; do echo "=== $f ===" && uiua run "$f"; done

# All intermediate exercises
for f in exercises/intermediate/*.ua; do echo "=== $f ===" && uiua run "$f"; done

# Expert challenges
for f in exercises/expert/*.ua; do echo "=== $f ===" && uiua run "$f"; done
```

---

## File Structure

```
exercises/
├── LEARNING_PATH.md      # Detailed learning guide
├── beginner/             # 28 exercises
│   ├── 01_sum_array.ua
│   └── ...
├── intermediate/         # 48 exercises
│   ├── 01_calculate_mean.ua
│   └── ...
└── expert/               # 3 graduation exams
    ├── 01_game_of_life.ua
    ├── 02_quicksort.ua
    └── 03_parser_combinators.ua
```

---

## Resources

- [Uiua Official Site](https://uiua.org) - Documentation & interactive pad
- [Uiua GitHub](https://github.com/uiua-lang/uiua) - Source & issues
- [Uiua on Exercism](https://exercism.org/tracks/uiua) - More exercises

---

## License

MIT - Feel free to use, modify, and share these exercises.
