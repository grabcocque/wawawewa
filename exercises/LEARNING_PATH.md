# Uiua Learning Exercises - Complete Learning Path

**76 exercises** covering Uiua's full power, from basics to advanced compositions.

## How to Use

1. Open each `.ua` file in order within each section
2. Read the problem description and examples
3. Replace `___` with the correct Uiua code
4. Run `uiua run <file>` to check if tests pass
5. See "✓ All tests passed!" on success
6. Use hints if stuck (graduated from gentle to direct)

---

## Beginner Level (28 exercises)

### Core Operations (01-05)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 01 | `01_sum_array.ua` | Reduce-add | `/+` |
| 02 | `02_array_length.ua` | Length | `⧻` |
| 03 | `03_reverse_array.ua` | Reverse | `⇌` |
| 04 | `04_double_elements.ua` | Pervasive multiply | `×` |
| 05 | `05_range_sum.ua` | Composition | `/+⇡` |

### Arithmetic & Comparisons (06-13)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 06 | `06_absolute_value.ua` | Absolute value | `⌵` |
| 07 | `07_negate_array.ua` | Negate | `¯` |
| 08 | `08_modulo.ua` | Modulo | `◿` |
| 09 | `09_minimum.ua` | Reduce-min | `/↧` |
| 10 | `10_count_greater.ua` | Count with condition | `/+>` |
| 11 | `11_all_positive.ua` | All satisfy | `/↧>0` |
| 12 | `12_any_zero.ua` | Any satisfy | `/↥=0` |
| 13 | `13_floor_ceiling.ua` | Rounding | `⌊ ⌈` |

### Array Manipulation (14-21)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 14 | `14_first_element.ua` | First | `⊢` |
| 15 | `15_last_element.ua` | Last | `⊢⇌` |
| 16 | `16_drop_first.ua` | Drop | `↘` |
| 17 | `17_drop_last.ua` | Negative indexing | `↙¯1` |
| 18 | `18_reshape.ua` | Reshape | `↯` |
| 19 | `19_flatten.ua` | Deshape/flatten | `♭` |
| 20 | `20_iota_grid.ua` | Grid creation | `↯.⇡×` |
| 21 | `21_repeat_element.ua` | Repeat with keep | `▽` |

### Stack Operations (22-28)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 22 | `22_duplicate.ua` | Duplicate | `.` |
| 23 | `23_flip.ua` | Flip/swap | `:` |
| 24 | `24_square.ua` | Multiply self | `×.` |
| 25 | `25_both_ops.ua` | Both | `∩` |
| 26 | `26_dip_add.ua` | Dip | `⊙` |
| 27 | `27_over.ua` | Over | `,` |
| 28 | `28_identity.ua` | Identity | `∘` |

---

## Intermediate Level (48 exercises)

### Core Patterns (01-10)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 01 | `01_calculate_mean.ua` | Fork for mean | `÷⊃/+⧻` |
| 02 | `02_cumulative_sum.ua` | Scan | `\+` |
| 03 | `03_filter_positive.ua` | Keep/filter | `▽>0` |
| 04 | `04_matrix_transpose.ua` | Transpose | `⍉` |
| 05 | `05_first_n_elements.ua` | Take | `↙` |
| 06 | `06_count_occurrences.ua` | Count matches | `/+=` |
| 07 | `07_find_maximum.ua` | Reduce-max | `/↥` |
| 08 | `08_is_palindrome.ua` | Fork + match | `≍⊃∘⇌` |
| 09 | `09_dot_product.ua` | Multiply + sum | `/+×` |
| 10 | `10_remove_duplicates.ua` | Deduplicate | `◴` |

### Modifiers (11-18)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 11 | `11_each_square.ua` | Each | `∵` |
| 12 | `12_each_length.ua` | Each on boxes | `∵⧻` |
| 13 | `13_rows_reverse.ua` | Rows | `≡⇌` |
| 14 | `14_rows_sum.ua` | Rows reduce | `≡/+` |
| 15 | `15_table_add.ua` | Table | `⊞+` |
| 16 | `16_table_multiply.ua` | Multiplication table | `⊞×` |
| 17 | `17_table_compare.ua` | Comparison matrix | `⊞<` |
| 18 | `18_outer_product.ua` | Outer product | `⊞×` |

### Combinators (19-26)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 19 | `19_fork_minmax.ua` | Fork min/max | `⊃/↧/↥` |
| 20 | `20_fork_stats.ua` | Fork for stats | `⊃` |
| 21 | `21_bracket_apply.ua` | Bracket | `⊓` |
| 22 | `22_both_increment.ua` | Both | `∩` |
| 23 | `23_on_preserve.ua` | On | `⟜` |
| 24 | `24_by_pattern.ua` | By | `⊸` |
| 25 | `25_fork_three.ua` | Nested fork | `⊃⊃` |
| 26 | `26_compose_forks.ua` | Fork composition | complex |

### String Manipulation (27-33)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 27 | `27_string_length.ua` | String as array | `⧻` |
| 28 | `28_reverse_string.ua` | Reverse string | `⇌` |
| 29 | `29_uppercase.ua` | Char codes | arithmetic |
| 30 | `30_split_string.ua` | Partition | `⊜□` |
| 31 | `31_join_strings.ua` | Join | `/⊂` |
| 32 | `32_char_count.ua` | Count char | `/+=` |
| 33 | `33_is_digit.ua` | Validate digits | ranges |

### Grouping Operations (34-40)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 34 | `34_where.ua` | Where (indices) | `⊚` |
| 35 | `35_classify.ua` | Classify | `⊛` |
| 36 | `36_group_sum.ua` | Group reduce | `⊕/+` |
| 37 | `37_partition_split.ua` | Partition | `⊜` |
| 38 | `38_group_count.ua` | Group count | `⊕⧻` |
| 39 | `39_indices_of.ua` | Index of | `⊗` |
| 40 | `40_select_indices.ua` | Select | `⊏` |

### Advanced Compositions (41-48)
| # | File | Concept | Glyph |
|---|------|---------|-------|
| 41 | `41_running_max.ua` | Scan max | `\↥` |
| 42 | `42_differences.ua` | Adjacent diff | `◫` windows |
| 43 | `43_rotate_array.ua` | Rotate | `↻` |
| 44 | `44_fibonacci.ua` | Iteration | `⍥` |
| 45 | `45_prime_check.ua` | Prime test | `◿⇡` |
| 46 | `46_matrix_multiply.ua` | Matrix multiply | `⊞` + `/+` |
| 47 | `47_moving_average.ua` | Moving average | `◫` windows |
| 48 | `48_histogram.ua` | Histogram | grouping |

---

## Quick Reference

### Stack Manipulation
| Glyph | Name | Effect |
|-------|------|--------|
| `.` | dup | `a → a a` |
| `:` | flip | `a b → b a` |
| `,` | over | `a b → a b a` |
| `⊙` | dip | apply under top |
| `⋅` | gap | drop top, apply |
| `∘` | identity | no-op |

### Modifiers
| Glyph | Name | Effect |
|-------|------|--------|
| `/` | reduce | fold array |
| `\` | scan | cumulative fold |
| `∵` | each | map over elements |
| `≡` | rows | map over rows |
| `⊞` | table | cartesian product |

### Combinators
| Glyph | Name | Effect |
|-------|------|--------|
| `⊃` | fork | apply 2 fns to same args |
| `⊓` | bracket | apply fns to different args |
| `∩` | both | apply fn to 2 values |
| `⟜` | on | preserve value |
| `⊸` | by | compute then use with original |

### Grouping
| Glyph | Name | Effect |
|-------|------|--------|
| `⊚` | where | indices of truthy |
| `⊛` | classify | unique indices |
| `⊕` | group | group by key |
| `⊜` | partition | split by condition |
| `⊗` | indexof | find positions |
| `⊏` | select | pick by indices |

---

## Recommended Learning Order

1. **Week 1**: Beginner 01-13 (core ops, arithmetic)
2. **Week 2**: Beginner 14-28 (arrays, stack)
3. **Week 3**: Intermediate 01-10 (core patterns)
4. **Week 4**: Intermediate 11-18 (modifiers)
5. **Week 5**: Intermediate 19-26 (combinators)
6. **Week 6**: Intermediate 27-40 (strings, grouping)
7. **Week 7**: Intermediate 41-48 (advanced)

## Running Exercises

```bash
# Run a single exercise
uiua run exercises/beginner/01_sum_array.ua

# Run all beginner exercises (bash)
for f in exercises/beginner/*.ua; do echo "=== $f ===" && uiua run "$f"; done
```

Happy learning! 🎯
