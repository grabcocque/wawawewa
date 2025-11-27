#!/bin/bash
set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
NC='\033[0m'
BOLD='\033[1m'
CATEGORY="${1:-}"
EXERCISE="${2:-}"
LEVEL="${3:-1}"
case "$CATEGORY" in
b | beginner) CATEGORY="beginner" ;;
i | intermediate) CATEGORY="intermediate" ;;
e | expert) CATEGORY="expert" ;;
esac
if [[ -z $CATEGORY ]] || [[ -z $EXERCISE ]]; then
	echo -e "$CYAN╔════════════════════════════════════════════════════════════╗$NC"
	echo -e "$CYAN║           $BOLD💡 UIUA HINT SYSTEM 💡$NC$CYAN                          ║$NC"
	echo -e "$CYAN╚════════════════════════════════════════════════════════════╝$NC"
	echo ""
	echo -e "${BOLD}Usage:$NC ./scripts/gethint.sh <category> <exercise_num> [hint_level]"
	echo ""
	echo -e "${BOLD}Categories:$NC"
	echo "  beginner (b)      - 28 exercises: basic glyphs & operations"
	echo "  intermediate (i)  - 48 exercises: modifiers, combinators, strings"
	echo "  expert (e)        - 3 exercises: complex algorithms"
	echo ""
	echo -e "${BOLD}Hint Levels:$NC"
	echo -e "  ${GREEN}1$NC - Conceptual nudge (what to think about)"
	echo -e "  ${YELLOW}2$NC - Technique hint (which glyphs/patterns)"
	echo -e "  ${BLUE}3$NC - Structure hint (how to compose)"
	echo -e "  ${RED}4$NC - Near-solution (almost the answer)"
	echo ""
	echo -e "${BOLD}Examples:$NC"
	echo "  ./scripts/gethint.sh beginner 2 1    # Conceptual hint for array_length"
	echo "  ./scripts/gethint.sh b 5 3           # Structure hint for range_sum"
	echo "  ./scripts/gethint.sh i 19 2          # Technique hint for fork_minmax"
	exit 0
fi
if [[ $LEVEL -lt 1 ]] || [[ $LEVEL -gt 4 ]]; then
	echo -e "${RED}Error: Hint level must be 1-4$NC"
	exit 1
fi
EXERCISE_PADDED=$(printf "%02d" "$EXERCISE")
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
EXERCISE_DIR="$PROJECT_DIR/exercises/$CATEGORY"
if [[ ! -d $EXERCISE_DIR ]]; then
	echo -e "${RED}Error: Category '$CATEGORY' not found$NC"
	exit 1
fi
EXERCISE_FILE=$(find "$EXERCISE_DIR" -name "${EXERCISE_PADDED}_*.ua" 2>/dev/null | head -1)
if [[ -z $EXERCISE_FILE ]]; then
	echo -e "${RED}Error: Exercise $EXERCISE not found in $CATEGORY$NC"
	exit 1
fi
EXERCISE_NAME=$(basename "$EXERCISE_FILE" .ua | sed 's/^[0-9]*_//')
get_hint() {
	local cat="$1"
	local num="$2"
	local lvl="$3"
	if [[ $cat == "beginner" ]]; then
		case "$num" in
		1) case "$lvl" in
			1) echo "How do you combine many values into one?" ;;
			2) echo "The 'reduce' modifier collapses arrays with an operation" ;;
			3) echo "reduce + operation = /operation" ;;
			4) echo "You need /+ — reduce by addition" ;;
			esac ;;
		2) case "$lvl" in
			1) echo "You need to count, not compute with the values" ;;
			2) echo "There's a single glyph that measures 'how many'" ;;
			3) echo "It looks like a bracket measuring something: ⧻" ;;
			4) echo "Just ⧻ by itself — the length glyph" ;;
			esac ;;
		3) case "$lvl" in
			1) echo "Think about flipping the order around" ;;
			2) echo "One glyph does this — it has arrows going both ways" ;;
			3) echo "The reverse glyph: ⇌" ;;
			4) echo "Simply ⇌ applied to the array" ;;
			esac ;;
		4) case "$lvl" in
			1) echo "Each number needs to become twice itself" ;;
			2) echo "You can multiply by 2, or add a number to itself" ;;
			3) echo "Either ×2 or use duplicate (.) with +" ;;
			4) echo "×2 works, or +. (duplicate then add)" ;;
			esac ;;
		5) case "$lvl" in
			1) echo "First create a sequence, then combine it" ;;
			2) echo "Range creates 0 to n-1, then reduce-add" ;;
			3) echo "⇡ creates range, /+ sums it" ;;
			4) echo "/+⇡ — range then sum" ;;
			esac ;;
		6) case "$lvl" in
			1) echo "Remove the sign, keep the magnitude" ;;
			2) echo "There's a dedicated glyph for absolute value" ;;
			3) echo "It looks like a bouncing shape: ⌵" ;;
			4) echo "Just ⌵ — the absolute value glyph" ;;
			esac ;;
		7) case "$lvl" in
			1) echo "Flip positive to negative and vice versa" ;;
			2) echo "The negate modifier is a small horizontal line" ;;
			3) echo "¯ negates values (note: ¯ not -)" ;;
			4) echo "Just ¯ applied to the array" ;;
			esac ;;
		8) case "$lvl" in
			1) echo "What's the remainder after division?" ;;
			2) echo "Modulo is like division but keeps remainder" ;;
			3) echo "The modulo glyph: ◿" ;;
			4) echo "◿ divisor array — watch argument order!" ;;
			esac ;;
		9) case "$lvl" in
			1) echo "Find the smallest by comparing all values" ;;
			2) echo "Reduce with a 'pick smaller' operation" ;;
			3) echo "↧ is min (points down to smaller)" ;;
			4) echo "/↧ — reduce by minimum" ;;
			esac ;;
		10) case "$lvl" in
			1) echo "Compare, then count the trues" ;;
			2) echo "Comparison gives 0s and 1s, sum them" ;;
			3) echo ">threshold gives booleans, /+ counts trues" ;;
			4) echo "/+> threshold array" ;;
			esac ;;
		11) case "$lvl" in
			1) echo "Check if every single element passes a test" ;;
			2) echo "Turn comparisons into 0/1, combine them all" ;;
			3) echo ">0 gives booleans, reduce with × (AND logic)" ;;
			4) echo "/×>0 — are all elements > 0?" ;;
			esac ;;
		12) case "$lvl" in
			1) echo "Is there at least one element equal to zero?" ;;
			2) echo "Check equality, then see if any are true" ;;
			3) echo "=0 gives booleans, /↥ finds if any are 1" ;;
			4) echo "/↥=0 — max of 'equals zero' booleans" ;;
			esac ;;
		13) case "$lvl" in
			1) echo "Round down and round up are two operations" ;;
			2) echo "Floor is ⌊, ceiling is ⌈" ;;
			3) echo "Return both results, maybe as an array" ;;
			4) echo "⊟⊃⌊⌈ or just return both stacked" ;;
			esac ;;
		14) case "$lvl" in
			1) echo "Get just the beginning of the array" ;;
			2) echo "'First' has its own glyph" ;;
			3) echo "⊢ extracts the first element" ;;
			4) echo "Just ⊢" ;;
			esac ;;
		15) case "$lvl" in
			1) echo "The last is the first of the reversed" ;;
			2) echo "Combine reverse with first" ;;
			3) echo "Reverse then take first: ⊢⇌" ;;
			4) echo "⊢⇌ — first of reverse" ;;
			esac ;;
		16) case "$lvl" in
			1) echo "Remove elements from the beginning" ;;
			2) echo "'Drop' removes from the start" ;;
			3) echo "↘n drops n elements from start" ;;
			4) echo "↘1 — drop 1 from beginning" ;;
			esac ;;
		17) case "$lvl" in
			1) echo "Remove from the end, not the start" ;;
			2) echo "Negative indices work from the end" ;;
			3) echo "↘¯1 drops last, or ↙¯1 takes all but last" ;;
			4) echo "↘¯1 or ↙-1⧻ (drop last or take length-1)" ;;
			esac ;;
		18) case "$lvl" in
			1) echo "Change the dimensions of the array" ;;
			2) echo "Reshape molds data into a new shape" ;;
			3) echo "↯ shape array — shape is first argument" ;;
			4) echo "↯ [rows cols] data" ;;
			esac ;;
		19) case "$lvl" in
			1) echo "Remove all nesting, make it 1D" ;;
			2) echo "'Deshape' or flatten is the inverse of reshape" ;;
			3) echo "♭ flattens any array to 1D" ;;
			4) echo "Just ♭" ;;
			esac ;;
		20) case "$lvl" in
			1) echo "Create a range then reshape it" ;;
			2) echo "Range gives sequence, reshape makes 2D" ;;
			3) echo "↯ shape ⇡ (product of dimensions)" ;;
			4) echo "↯ shape ⇡ /× shape" ;;
			esac ;;
		21) case "$lvl" in
			1) echo "Make multiple copies of a value" ;;
			2) echo "Replicate creates copies based on counts" ;;
			3) echo "▽ counts values — counts say how many of each" ;;
			4) echo "▽ n value (replicate n copies)" ;;
			esac ;;
		22) case "$lvl" in
			1) echo "Put the same thing on the stack twice" ;;
			2) echo "A single dot duplicates the top of stack" ;;
			3) echo ". is duplicate" ;;
			4) echo "Just . (dot)" ;;
			esac ;;
		23) case "$lvl" in
			1) echo "Swap the order of two things on the stack" ;;
			2) echo "Flip/swap exchanges top two stack items" ;;
			3) echo ": is flip (colon)" ;;
			4) echo "Just : (colon)" ;;
			esac ;;
		24) case "$lvl" in
			1) echo "Multiply a number by itself" ;;
			2) echo "Duplicate then multiply" ;;
			3) echo "×. — duplicate and multiply" ;;
			4) echo "×. (duplicate, then multiply with self)" ;;
			esac ;;
		25) case "$lvl" in
			1) echo "Apply the same operation to two inputs" ;;
			2) echo "'Both' modifier runs function on two items" ;;
			3) echo "∩ operation — applies to both top items" ;;
			4) echo "∩ followed by your operation" ;;
			esac ;;
		26) case "$lvl" in
			1) echo "Operate on something below the top of stack" ;;
			2) echo "'Dip' reaches past the top item" ;;
			3) echo "⊙ operation — does operation 'under' top" ;;
			4) echo "⊙operation keeps top, operates on second" ;;
			esac ;;
		27) case "$lvl" in
			1) echo "Duplicate something that's not on top" ;;
			2) echo "'Over' copies the second item to the top" ;;
			3) echo ", is over (comma)" ;;
			4) echo "Just , (over/comma)" ;;
			esac ;;
		28) case "$lvl" in
			1) echo "Sometimes you need a 'do nothing' function" ;;
			2) echo "Identity passes input through unchanged" ;;
			3) echo "∘ is identity" ;;
			4) echo "Just ∘" ;;
			esac ;;
		*) echo "Hint not yet available for this exercise" ;;
		esac
	elif [[ $cat == "intermediate" ]]; then
		case "$num" in
		1) case "$lvl" in
			1) echo "Average = sum divided by count" ;;
			2) echo "You need both sum and length from same input" ;;
			3) echo "Fork ⊃ applies two functions to one input" ;;
			4) echo "÷⊃(/+|⧻) — fork sum and length, then divide" ;;
			esac ;;
		2) case "$lvl" in
			1) echo "Running total at each position" ;;
			2) echo "Scan is like reduce but keeps intermediates" ;;
			3) echo '\ is scan, + is add' ;;
			4) echo '\+ — scan by addition' ;;
			esac ;;
		3) case "$lvl" in
			1) echo "Keep only elements that pass a test" ;;
			2) echo "Create a mask of 0s/1s, use it to select" ;;
			3) echo "▽ keeps elements where mask is 1" ;;
			4) echo "▽>0. — duplicate, test >0, keep matches" ;;
			esac ;;
		4) case "$lvl" in
			1) echo "Swap rows and columns" ;;
			2) echo "There's a dedicated transpose glyph" ;;
			3) echo "⍉ transposes arrays" ;;
			4) echo "Just ⍉" ;;
			esac ;;
		5) case "$lvl" in
			1) echo "Get a slice from the beginning" ;;
			2) echo "'Take' grabs from the front" ;;
			3) echo "↙ n takes first n elements" ;;
			4) echo "↙ — take (with count as argument)" ;;
			esac ;;
		6) case "$lvl" in
			1) echo "How many times does a value appear?" ;;
			2) echo "Compare each element, count the matches" ;;
			3) echo "= gives booleans, /+ sums them" ;;
			4) echo "/+= target array" ;;
			esac ;;
		7) case "$lvl" in
			1) echo "Find the largest value in the array" ;;
			2) echo "Reduce picking the bigger one each time" ;;
			3) echo "↥ is max (points up to bigger)" ;;
			4) echo "/↥ — reduce by maximum" ;;
			esac ;;
		8) case "$lvl" in
			1) echo "Same forwards and backwards?" ;;
			2) echo "Compare original with its reverse" ;;
			3) echo "≍ checks equality of arrays" ;;
			4) echo "≍⇌. — duplicate, reverse, compare" ;;
			esac ;;
		9) case "$lvl" in
			1) echo "Multiply pairs, then sum" ;;
			2) echo "Element-wise multiply, then reduce-add" ;;
			3) echo "× pairs them up, /+ sums" ;;
			4) echo "/+× — multiply then sum" ;;
			esac ;;
		10) case "$lvl" in
			1) echo "Keep only unique values" ;;
			2) echo "Deduplicate has its own glyph" ;;
			3) echo "◴ is deduplicate/unique" ;;
			4) echo "Just ◴" ;;
			esac ;;
		11) case "$lvl" in
			1) echo "Apply squaring to each element" ;;
			2) echo "'Each' applies a function element-wise" ;;
			3) echo "∵ is each, ×. squares" ;;
			4) echo "∵(×.) or just ×. (pervasive)" ;;
			esac ;;
		12) case "$lvl" in
			1) echo "Get the length of each sub-array" ;;
			2) echo "'Each' + length glyph" ;;
			3) echo "∵⧻ — each length" ;;
			4) echo "∵⧻ or ≡⧻ (each or rows)" ;;
			esac ;;
		13) case "$lvl" in
			1) echo "Reverse each row independently" ;;
			2) echo "'Rows' applies to each row" ;;
			3) echo "≡ is rows, ⇌ reverses" ;;
			4) echo "≡⇌ — reverse each row" ;;
			esac ;;
		14) case "$lvl" in
			1) echo "Sum each row independently" ;;
			2) echo "'Rows' + reduce-add" ;;
			3) echo "≡/+ — sum each row" ;;
			4) echo "≡/+" ;;
			esac ;;
		15) case "$lvl" in
			1) echo "Add every element to every other element" ;;
			2) echo "'Table' creates a grid of all combinations" ;;
			3) echo "⊞ is table, + is add" ;;
			4) echo "⊞+ — addition table" ;;
			esac ;;
		16) case "$lvl" in
			1) echo "Multiply every element by every other" ;;
			2) echo "Same as addition table but with ×" ;;
			3) echo "⊞× — multiplication table" ;;
			4) echo "⊞×" ;;
			esac ;;
		17) case "$lvl" in
			1) echo "Compare every pair of elements" ;;
			2) echo "Table with a comparison operator" ;;
			3) echo "⊞< or ⊞> for comparisons" ;;
			4) echo "⊞< or ⊞>" ;;
			esac ;;
		18) case "$lvl" in
			1) echo "Every element of A combined with every element of B" ;;
			2) echo "This is exactly what table does" ;;
			3) echo "⊞× a b — outer product" ;;
			4) echo "⊞× (table multiply)" ;;
			esac ;;
		19) case "$lvl" in
			1) echo "Get both min and max from same array" ;;
			2) echo "Fork runs two functions on one input" ;;
			3) echo "⊃(/↧|/↥) — fork reduce-min and reduce-max" ;;
			4) echo "⊃(/↧|/↥) then maybe pair them with ⊟" ;;
			esac ;;
		20) case "$lvl" in
			1) echo "Compute multiple statistics at once" ;;
			2) echo "Fork can chain multiple functions" ;;
			3) echo "⊃(f|g|h) applies f, g, h to same input" ;;
			4) echo "Chain the stats you need in a fork" ;;
			esac ;;
		34) case "$lvl" in
			1) echo "Find positions of true/nonzero values" ;;
			2) echo "'Where' gives indices of truthy elements" ;;
			3) echo "⊚ is where" ;;
			4) echo "⊚ mask — indices where mask is nonzero" ;;
			esac ;;
		44) case "$lvl" in
			1) echo "Each number is sum of previous two" ;;
			2) echo "Build sequence iteratively with repeat" ;;
			3) echo "⍥ repeats, track last two values" ;;
			4) echo "Start [0 1], repeatedly: ⊂/+ keep last 2" ;;
			esac ;;
		*) echo "Hint not yet available — check hint.ua for more" ;;
		esac
	elif [[ $cat == "expert" ]]; then
		case "$num" in
		1) case "$lvl" in
			1) echo "Count neighbors, apply birth/death rules" ;;
			2) echo "Use ↻ to shift grid in 8 directions, sum neighbors" ;;
			3) echo "neighbors = sum of 8 rotated grids; alive = (n=3)|(alive ∧ n=2)" ;;
			4) echo "Sum 8 rotations (±1 in each dimension), apply: =3 or (×=2 original)" ;;
			esac ;;
		2) case "$lvl" in
			1) echo "Pick pivot, partition into less/equal/greater, recurse" ;;
			2) echo "Use ▽ to filter by comparison with pivot" ;;
			3) echo "Recursive function with base case for len≤1" ;;
			4) echo "f ← |1 ⊢<2⧻. | ⊂f▽</pivot. pivot ⊂f▽≥/pivot." ;;
			esac ;;
		3) case "$lvl" in
			1) echo "Build small parsers, combine them" ;;
			2) echo "Parser = function taking string, returning [result rest]" ;;
			3) echo "Sequence chains parsers, choice tries alternatives" ;;
			4) echo "Match prefix → success; chain with ⊂; alt with ?" ;;
			esac ;;
		*) echo "Hint not available for this exercise" ;;
		esac
	fi
}
HINT=$(get_hint "$CATEGORY" "$EXERCISE" "$LEVEL")
case "$LEVEL" in
1)
	LEVEL_NAME="Conceptual"
	LEVEL_COLOR="$GREEN"
	;;
2)
	LEVEL_NAME="Technique"
	LEVEL_COLOR="$YELLOW"
	;;
3)
	LEVEL_NAME="Structure"
	LEVEL_COLOR="$BLUE"
	;;
4)
	LEVEL_NAME="Near-Solution"
	LEVEL_COLOR="$RED"
	;;
esac
echo ""
echo -e "$CYAN┌────────────────────────────────────────────────────────────┐$NC"
echo -e "$CYAN│$NC $BOLD💡 HINT$NC                                                    $CYAN│$NC"
echo -e "$CYAN├────────────────────────────────────────────────────────────┤$NC"
echo -e "$CYAN│$NC Exercise: $BOLD$CATEGORY/${EXERCISE_PADDED}_$EXERCISE_NAME$NC"
echo -e "$CYAN│$NC Level:    $LEVEL_COLOR$LEVEL - $LEVEL_NAME$NC"
echo -e "$CYAN├────────────────────────────────────────────────────────────┤$NC"
echo -e "$CYAN│$NC"
echo -e "$CYAN│$NC  $HINT"
echo -e "$CYAN│$NC"
echo -e "$CYAN└────────────────────────────────────────────────────────────┘$NC"
echo ""
if [[ $LEVEL -lt 4 ]]; then
	NEXT_LEVEL=$((LEVEL + 1))
	echo -e "${YELLOW}Need more help?$NC Try: ./scripts/gethint.sh $CATEGORY $EXERCISE $NEXT_LEVEL"
fi
