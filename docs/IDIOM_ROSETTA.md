# Idiom Rosetta Stone: APL, J, Q, Forth, Factor, Joy → Uiua

A mapping of iconic idioms from classic array and concatenative languages to Uiua.

---

## Part 1: Array Language Idioms

### APL → Uiua

| APL | Uiua | Description |
|-----|------|-------------|
| `+/X` | `/+` | Sum (reduce-add) |
| `×/X` | `/×` | Product (reduce-multiply) |
| `+\X` | `\+` | Cumulative sum (scan-add) |
| `⌈/X` | `/↥` | Maximum |
| `⌊/X` | `/↧` | Minimum |
| `⍴X` | `△` | Shape |
| `≢X` | `⧻` | Length (tally) |
| `⍳N` | `⇡` | Range 0..N-1 |
| `⌽X` | `⇌` | Reverse |
| `⍉X` | `⍉` | Transpose |
| `,X` | `♭` | Flatten (ravel) |
| `N⍴X` | `↯` | Reshape |
| `⍋X` | `⍏` | Grade up (sort indices) |
| `⍒X` | `⍖` | Grade down |
| `X[⍋X]` | `⊏⍏.` | Sort ascending |
| `X[⍒X]` | `⊏⍖.` | Sort descending |
| `∪X` | `◴` | Unique (deduplicate) |
| `X⍳Y` | `⊗` | Index of |
| `X∊Y` | `∊` | Member of |
| `⌈X` | `⌈` | Ceiling |
| `⌊X` | `⌊` | Floor |
| `\|X` | `⌵` | Absolute value |
| `-X` | `¯` | Negate |
| `÷X` | `÷1` | Reciprocal (Uiua: divide 1 by) |
| `~X` | `¬` | Not |
| `N↑X` | `↙` | Take first N |
| `N↓X` | `↘` | Drop first N |
| `X,Y` | `⊂` | Join |
| `X⌿Y` | `▽` | Replicate/compress (keep) |
| `A+.×B` | `/+×⍉` | Matrix multiply (inner product) |
| `A∘.×B` | `⊞×` | Outer product |

#### Iconic APL One-Liners

**Grade-up sorting** `X[⍋X]`
```uiua
# APL: X[⍋X] - sort by grade indices
⊏⍏. [3 1 4 1 5 9 2 6]
```

**Pascal's Triangle** `⍉A∘.!A←0,⍳N`
```uiua
# Binomial coefficients via outer product
Binomial ← ÷⊃(/×+1⇡|/×+1⇡-,)
Pascal ← ⊞Binomial.⇡
Pascal 5
```

**Where (indices of 1s)** `⍸B`
```uiua
# APL: ⍸ (where) - indices where true
▽ [1 0 1 1 0 0 1]⇡⧻. [1 0 1 1 0 0 1]
# Or simply:
⊚ [1 0 1 1 0 0 1]
```

**Compress (filter by mask)** `B/X`
```uiua
# APL: B/X - keep where mask is 1
▽ [1 0 1 0 1] [10 20 30 40 50]
```

**Encode/Decode (base conversion)**
```uiua
# APL: 2⊥X (decode from binary)
# Uiua: multiply by powers of 2, sum
/+× ⊃(ⁿ:2⇌⇡⧻|⋅∘) [1 0 1 1]  # 11

# APL: 2⊤N (encode to binary)
# Uiua: repeated modulo/divide
```

**Prime sieve**
```uiua
# APL: (2=+⌿0=(⍳N)∘.|⍳N)/⍳N
Primes ← ▽=2/+♭¬◿⊞(⋅∘).+1.⇡
Primes 20
```

---

### J → Uiua

| J | Uiua | Description |
|---|------|-------------|
| `+/ y` | `/+` | Sum |
| `+/\ y` | `\+` | Running sum |
| `# y` | `⧻` | Tally (count) |
| `$ y` | `△` | Shape |
| `i. n` | `⇡` | Integers 0..n-1 |
| `|. y` | `⇌` | Reverse |
| `|: y` | `⍉` | Transpose |
| `, y` | `♭` | Ravel (flatten) |
| `n $ y` | `↯` | Reshape |
| `/: y` | `⍏` | Grade up |
| `\: y` | `⍖` | Grade down |
| `~. y` | `◴` | Nub (unique) |
| `x i. y` | `⊗` | Index of |
| `x e. y` | `∊` | Member |
| `>. y` | `⌈` | Ceiling |
| `<. y` | `⌊` | Floor |
| `| y` | `⌵` | Magnitude |
| `- y` | `¯` | Negate |
| `% y` | `÷1⊙` | Reciprocal |
| `-. y` | `¬` | Not |
| `n {. y` | `↙` | Take |
| `n }. y` | `↘` | Drop |
| `x , y` | `⊂` | Append |
| `x # y` | `▽` | Copy/replicate |
| `x +/ . * y` | `/+×⍉` | Matrix multiply |
| `x */ y` | `⊞×` | Table (outer product) |

#### Iconic J Patterns

**Fork: `(f g h) y` → `(f y) g (h y)`**
```uiua
# J: mean =: +/ % #  (sum divided by count)
# Fork pattern: apply two functions, combine results
Mean ← ÷⊃(/+|⧻)
Mean [1 2 3 4 5]  # 3
```

**Hook: `(f g) y` → `y f (g y)`**
```uiua
# J: *: y = y * y (hook: y times itself)
# Uiua uses . (dup) for self-application
Square ← ×.
Square 5  # 25
```

**Atop: `f@g y` → `f (g y)`**
```uiua
# J: -@>: y = negate after increment
# Uiua: just compose right-to-left
NegIncr ← ¯+1
NegIncr 5  # ¯6
```

**Under: `f &. g` → `g⁻¹ (f (g y))`**
```uiua
# J: +&.:*: adds under square (sqrt of sum of squares)
# Uiua: manual inverse application
Hypotenuse ← √/+ⁿ2
Hypotenuse [3 4]  # 5
```

**Bond/Curry: `n & f`**
```uiua
# J: 10&^ is "10 to the power of"
# Uiua: use partial application with ⊸ or ⊙
Pow10 ← ⁿ10
Pow10 3  # 1000
```

**Ordinal numbers: `/:@/: y`**
```uiua
# J: rank positions after sorting
# Uiua: grade the grade
Rank ← ⊏⍏⍏.⇡⧻.
Rank [30 10 40 20]  # [2 0 3 1]
```

---

### Q/KDB+ → Uiua

| Q | Uiua | Description |
|---|------|-------------|
| `sum x` | `/+` | Sum |
| `prd x` | `/×` | Product |
| `sums x` | `\+` | Running sum |
| `max x` | `/↥` | Maximum |
| `min x` | `/↧` | Minimum |
| `count x` | `⧻` | Count |
| `reverse x` | `⇌` | Reverse |
| `raze x` | `♭` | Flatten |
| `n#x` | `↙` | Take |
| `n_x` | `↘` | Drop |
| `distinct x` | `◴` | Unique |
| `x?y` | `⊗` | Find index |
| `x in y` | `∊` | Member |
| `asc x` | `⊏⍏.` | Sort ascending |
| `desc x` | `⊏⍖.` | Sort descending |
| `x,y` | `⊂` | Join |
| `x where y` | `▽` | Where/filter |
| `differ x` | `≠\` | Differs from prior |
| `deltas x` | `-\` | Differences |

#### Iconic Q Patterns

**Over (reduce):** `(+) over x`
```uiua
# Q: (+) over 1 2 3 4 5
/+ [1 2 3 4 5]  # 15
```

**Scan (accumulate):** `(+) scan x`
```uiua
# Q: (+) scan 1 2 3 4 5
\+ [1 2 3 4 5]  # [1 3 6 10 15]
```

**Each-prior (consecutive pairs):** `(-':) x`
```uiua
# Q: deltas / differ - difference from prior
# Uiua: use windows
Deltas ← /-◫2
Deltas [1 3 6 10 15]  # [2 3 4 5]
```

**Each-both (element-wise):** `x f' y`
```uiua
# Q: 1 2 3 +' 4 5 6  (add corresponding elements)
+ [1 2 3] [4 5 6]  # [5 7 9]
# Uiua's pervasive ops do this automatically
```

**Moving average pattern:**
```uiua
# Q: mavg[n;x] - n-period moving average
MovAvg ← ÷⊙⧻≡(/+)◫
MovAvg 3 [1 2 3 4 5 6 7]  # [2 3 4 5 6]
```

**Group-by pattern:**
```uiua
# Q: select sum qty by sym from t
# Uiua: use ⊕ (group)
GroupSum ← ⊕/+
GroupSum [0 1 0 1 0] [10 20 30 40 50]  # [90 60]
```

---

## Part 2: Concatenative Language Idioms

### Forth → Uiua

| Forth | Uiua | Description |
|-------|------|-------------|
| `DUP` | `.` | Duplicate top |
| `DROP` | `◌` | Drop top |
| `SWAP` | `:` | Swap top two |
| `OVER` | `,` | Copy second to top |
| `ROT` | (stack manipulation) | Rotate third to top |
| `NIP` | `◌:` | Drop second (swap drop) |
| `TUCK` | `.,,:` | Copy top under second |
| `2DUP` | `⊃∘∘` or `.,.,` | Duplicate pair |
| `2DROP` | `◌◌` | Drop pair |
| `+` | `+` | Add |
| `*` | `×` | Multiply |
| `-` | `-` | Subtract |
| `/` | `÷` | Divide |
| `MOD` | `◿` | Modulo |
| `=` | `=` | Equals |
| `<` | `<` | Less than |
| `>` | `>` | Greater than |
| `AND` | `∧` | Logical and |
| `OR` | `∨` | Logical or |
| `NOT` | `¬` | Logical not |
| `@` | (array access) | Fetch |
| `!` | (array mutation) | Store |

#### Iconic Forth Patterns

**DUP * (square)**
```uiua
# Forth: DUP *
×. 5  # 25
```

**Word definition: `: square DUP * ;`**
```uiua
# Forth colon definition becomes Uiua binding
Square ← ×.
```

**OVER + (add keeping original)**
```uiua
# Forth: OVER +
# Uiua: , copies second, then +
+, 3 5  # 8 3 (sum and original first arg)
```

**2DUP < (compare pair, keep both)**
```uiua
# Forth: 2DUP <
# Uiua: duplicate both, compare
<., 3 5  # 1 3 5
```

**Stack effect notation:**
```
Forth: ( a b -- a+b )
Uiua:  Stack signature implicit in glyph arity
```

---

### Factor → Uiua

| Factor | Uiua | Description |
|--------|------|-------------|
| `dup` | `.` | Duplicate |
| `drop` | `◌` | Drop |
| `swap` | `:` | Swap |
| `over` | `,` | Over |
| `nip` | `◌:` | Nip |
| `[ ] call` | (immediate) | Execute quotation |
| `[ ] dip` | `⊙` | Dip (operate below top) |
| `[ ] keep` | `⟜` | Keep (preserve top) |
| `[ ] bi` | `⊃` | Fork (apply two fns) |
| `[ ] tri` | `⊃⊃` | Apply three fns |
| `[ ] bi*` | (spread pattern) | Apply to different values |
| `[ ] bi@` | `∩` | Apply same to both |
| `curry` | `⊸` or `⊙` | Partial application |
| `compose` | (composition) | Combine quotations |
| `each` | `∵` | Each (map over elements) |
| `map` | `≡` | Map (rows) |
| `filter` | `▽` | Filter/select |
| `reduce` | `/` | Reduce/fold |

#### Iconic Factor Patterns

**bi (fork):** `x [ f ] [ g ] bi`
```uiua
# Factor: 5 [ 1 + ] [ 1 - ] bi  → 6 4
# Uiua fork: apply two functions to same value
⊃(+1|¯1+) 5  # 6 4
```

**tri (triple fork):** `x [ f ] [ g ] [ h ] tri`
```uiua
# Factor: 10 [ dup ] [ 1 + ] [ 1 - ] tri
⊃(∘|+1|¯1+) 10  # 10 11 9
```

**bi* (spread):** `x y [ f ] [ g ] bi*`
```uiua
# Factor: 3 4 [ 1 + ] [ 2 * ] bi*  → 4 8
# Uiua: apply different ops to different stack items
×2: +1 3 4  # 8 4
```

**bi@ (apply same):** `x y [ f ] bi@`
```uiua
# Factor: 3 4 [ 1 + ] bi@  → 4 5
# Uiua both: apply same function to top two
∩(+1) 3 4  # 4 5
```

**dip:** `a b [ f ] dip`
```uiua
# Factor: 1 2 [ 1 + ] dip  → 2 2
# Uiua dip: operate on second, preserve top
⊙(+1) 2 1  # 2 2
```

**keep:** `x [ f ] keep`
```uiua
# Factor: 5 [ 1 + ] keep  → 6 5
# Uiua on: apply f, keep original
⟜(+1) 5  # 6 5
```

**cleave (multi-fork):** `x { [ f ] [ g ] [ h ] } cleave`
```uiua
# Uiua nested fork
⊃(⊃(f|g)|h)
```

**curry + call:**
```uiua
# Factor: 3 [ + ] curry 5 swap call  → 8
# Uiua: use ⊸ for bind-left
+⊸3 5  # 8
```

**map:**
```uiua
# Factor: { 1 2 3 } [ 1 + ] map
≡(+1) [1 2 3]  # [2 3 4]
```

**filter:**
```uiua
# Factor: { 1 2 3 4 5 6 } [ even? ] filter
▽=0◿2. [1 2 3 4 5 6]  # [2 4 6]
```

**reduce:**
```uiua
# Factor: { 1 2 3 4 } 0 [ + ] reduce
/+ [1 2 3 4]  # 10
```

---

### Joy → Uiua

| Joy | Uiua | Description |
|-----|------|-------------|
| `dup` | `.` | Duplicate |
| `pop` | `◌` | Pop/drop |
| `swap` | `:` | Swap |
| `[quote]` | (immediate) | Quotation |
| `i` | (implicit) | Execute quotation |
| `dip` | `⊙` | Dip under top |
| `cons` | `⊂` | Prepend to list |
| `uncons` | `⊃(⊢|↘1)` | Split first from rest |
| `first` | `⊢` | First element |
| `rest` | `↘1` | All but first |
| `null` | `=0⧻` | Is empty? |
| `small` | `<2⧻` | Length 0 or 1? |
| `map` | `≡` or `∵` | Map function |
| `filter` | `▽` | Filter by predicate |
| `fold` | `/` | Fold/reduce |
| `step` | `∵` | Iterate (side effects) |
| `concat` | `⊂` | Concatenate |
| `size` | `⧻` | Length |
| `ifte` | (branching) | If-then-else |

#### Iconic Joy Patterns

**linrec (linear recursion):**
```uiua
# Joy: [null] [succ] [dup pred] [*] linrec  (factorial)
# Pattern: [test] [base] [rec1] [rec2] linrec
#   if test: base
#   else: rec1, recurse, rec2

# Uiua factorial using recursion
Fact ← |1 ⍣(×-1⊸⟜Fact)(=0.)⊙1
Fact 5  # 120

# Or iteratively (more idiomatic Uiua)
Fact ← /×+1⇡
Fact 5  # 120
```

**binrec (binary recursion):**
```uiua
# Joy: [small] [] [uncons [>] split] [swap23 cons concat] binrec
# This is quicksort

# Uiua quicksort (recursive)
Qsort ← ↬(>1⧻.|⊂⊃(Qsort▽<|⊂▽=|Qsort▽>)⊙(⊢.))
```

**ifte (if-then-else):**
```uiua
# Joy: value [condition] [then] [else] ifte
# Uiua: use ⍣ (try) or pattern matching

# Example: absolute value
Abs ← ⍣(¯|∘)(<0.)
Abs ¯5  # 5
```

**map:**
```uiua
# Joy: [1 2 3 4] [dup *] map
≡(×.) [1 2 3 4]  # [1 4 9 16]
```

**filter:**
```uiua
# Joy: [1 2 3 4 5 6] [2 mod 0 =] filter
▽=0◿2. [1 2 3 4 5 6]  # [2 4 6]
```

**fold:**
```uiua
# Joy: [1 2 3 4] 0 [+] fold
/+ [1 2 3 4]  # 10
```

**uncons pattern:**
```uiua
# Joy: [1 2 3] uncons  → 1 [2 3]
⊃(⊢|↘1) [1 2 3]  # 1 [2 3]
```

**cons pattern:**
```uiua
# Joy: 0 [1 2 3] cons  → [0 1 2 3]
⊂ 0 [1 2 3]  # [0 1 2 3]
```

**primrec (primitive recursion):**
```uiua
# Joy: [1] [*] primrec  (factorial via primitive recursion)
# Unfolds natural number then folds with operation

# Uiua: generate range then reduce
/× +1⇡ 5  # 120
```

---

## Part 3: Cross-Paradigm Patterns

### The Universal Patterns

These idioms appear across all six languages and map naturally to Uiua:

| Pattern | APL | J | Q | Forth | Factor | Joy | Uiua |
|---------|-----|---|---|-------|--------|-----|------|
| Sum | `+/` | `+/` | `sum` | loop | `reduce` | `fold` | `/+` |
| Product | `×/` | `*/` | `prd` | loop | `reduce` | `fold` | `/×` |
| Maximum | `⌈/` | `>./ ` | `max` | loop | `reduce` | `fold` | `/↥` |
| Running sum | `+\` | `+/\` | `sums` | loop | (manual) | (manual) | `\+` |
| Reverse | `⌽` | `\|.` | `reverse` | (manual) | `reverse` | `reverse` | `⇌` |
| Length | `≢` | `#` | `count` | (manual) | `length` | `size` | `⧻` |
| Sort | `⍋` | `/:` | `asc` | (manual) | `sort` | (manual) | `⊏⍏.` |
| Unique | `∪` | `~.` | `distinct` | (manual) | (manual) | (manual) | `◴` |
| Filter | `/` | `#` | `where` | (manual) | `filter` | `filter` | `▽` |
| Map | `¨` | `"0` | `'` | (manual) | `map` | `map` | `≡` or `∵` |
| Duplicate | N/A | N/A | N/A | `DUP` | `dup` | `dup` | `.` |
| Swap | N/A | N/A | N/A | `SWAP` | `swap` | `swap` | `:` |
| Fork | `⍪` | `fork` | N/A | (manual) | `bi` | (manual) | `⊃` |
| Dip | N/A | N/A | N/A | (return stack) | `dip` | `dip` | `⊙` |

### The Uiua Synthesis

Uiua combines both paradigms elegantly:

```uiua
# Array idiom: sum of squares (APL: +/X*2)
/+ⁿ2 [1 2 3 4]  # 30

# Stack idiom: fork for mean (Factor: [ sum ] [ length ] bi /)
÷⊃(/+|⧻) [1 2 3 4 5]  # 3

# Combined: dot product with stack manipulation
/+× [1 2 3] [4 5 6]  # 32

# Matrix multiply: array ops + transpose
/+×⍉ [[1 2] [3 4]] [[5 6] [7 8]]

# Quicksort: recursion + array filtering
Qsort ← ↬(>1⧻.|⊂⊃(Qsort▽<|⊂▽=|Qsort▽>)⊙(⊢.))
```

---

## Quick Reference Card

### Stack Manipulation
```
.     DUP     duplicate top
:     SWAP    swap top two
,     OVER    copy second to top
◌     DROP    discard top
⊙     DIP     operate below top
⊃     FORK    apply two functions
⟜     ON      preserve for later
∩     BOTH    apply same to two values
```

### Array Operations
```
/f    REDUCE  fold with function
\f    SCAN    running fold
≡f    ROWS    map over rows
∵f    EACH    map over elements
⊞f    TABLE   outer product
▽     KEEP    filter/replicate
⊏     SELECT  index into array
⊗     FIND    index of element
```

### Common Compositions
```
⊏⍏.     sort ascending
⊏⍖.     sort descending
÷⊃(/+|⧻) mean (fork pattern)
/+×     dot product
/+×⍉    matrix multiply
▽=0◿2.  filter even numbers
⊃(⊢|↘1) uncons (first and rest)
```

---

## Further Reading

- [Uiua Documentation](https://uiua.org/docs)
- [APL Wiki](https://aplwiki.com)
- [J Software](https://www.jsoftware.com)
- [KX Systems Q Reference](https://code.kx.com/q/ref/)
- [Starting Forth](https://www.forth.com/starting-forth/)
- [Factor Documentation](https://docs.factorcode.org)
- [The Joy of Concatenative Languages](https://hypercubed.github.io/joy/html/j00ovr.html)
