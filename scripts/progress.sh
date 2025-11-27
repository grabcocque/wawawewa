#!/bin/bash
set -e
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'
BOLD='\033[1m'
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(dirname "$SCRIPT_DIR")"
PROGRESS_FILE="$PROJECT_DIR/.progress"
if [[ ! -f $PROGRESS_FILE ]]; then
	cat >"$PROGRESS_FILE" <<'EOF'
# Uiua Learning Progress
# Mark exercises as done by changing [ ] to [x]

# BEGINNER (28 exercises)
[x] beginner/01_sum_array
[ ] beginner/02_array_length
[ ] beginner/03_reverse_array
[ ] beginner/04_double_elements
[ ] beginner/05_range_sum
[ ] beginner/06_absolute_value
[ ] beginner/07_negate_array
[ ] beginner/08_modulo
[ ] beginner/09_minimum
[ ] beginner/10_count_greater
[ ] beginner/11_all_positive
[ ] beginner/12_any_zero
[ ] beginner/13_floor_ceiling
[ ] beginner/14_first_element
[ ] beginner/15_last_element
[ ] beginner/16_drop_first
[ ] beginner/17_drop_last
[ ] beginner/18_reshape
[ ] beginner/19_flatten
[ ] beginner/20_iota_grid
[ ] beginner/21_repeat_element
[ ] beginner/22_duplicate
[ ] beginner/23_flip
[ ] beginner/24_square
[ ] beginner/25_both_ops
[ ] beginner/26_dip_add
[ ] beginner/27_over
[ ] beginner/28_identity

# INTERMEDIATE (48 exercises)
[ ] intermediate/01_calculate_mean
[ ] intermediate/02_cumulative_sum
[ ] intermediate/03_filter_positive
[ ] intermediate/04_matrix_transpose
[ ] intermediate/05_first_n_elements
[ ] intermediate/06_count_occurrences
[ ] intermediate/07_find_maximum
[ ] intermediate/08_is_palindrome
[ ] intermediate/09_dot_product
[ ] intermediate/10_remove_duplicates
[ ] intermediate/11_each_square
[ ] intermediate/12_each_length
[ ] intermediate/13_rows_reverse
[ ] intermediate/14_rows_sum
[ ] intermediate/15_table_add
[ ] intermediate/16_table_multiply
[ ] intermediate/17_table_compare
[ ] intermediate/18_outer_product
[ ] intermediate/19_fork_minmax
[ ] intermediate/20_fork_stats
[ ] intermediate/21_bracket_apply
[ ] intermediate/22_both_increment
[ ] intermediate/23_on_preserve
[ ] intermediate/24_by_pattern
[ ] intermediate/25_fork_three
[ ] intermediate/26_compose_forks
[ ] intermediate/27_string_length
[ ] intermediate/28_reverse_string
[ ] intermediate/29_uppercase
[ ] intermediate/30_split_string
[ ] intermediate/31_join_strings
[ ] intermediate/32_char_count
[ ] intermediate/33_is_digit
[ ] intermediate/34_where
[ ] intermediate/35_classify
[ ] intermediate/36_group_sum
[ ] intermediate/37_partition_split
[ ] intermediate/38_group_count
[ ] intermediate/39_indices_of
[ ] intermediate/40_select_indices
[ ] intermediate/41_running_max
[ ] intermediate/42_differences
[ ] intermediate/43_rotate_array
[ ] intermediate/44_fibonacci
[ ] intermediate/45_prime_check
[ ] intermediate/46_matrix_multiply
[ ] intermediate/47_moving_average
[ ] intermediate/48_histogram

# EXPERT (3 exercises)
[ ] expert/01_game_of_life
[ ] expert/02_quicksort
[ ] expert/03_parser_combinators
EOF
fi
count_completed() {
	local category="$1"
	local count
	count=$(grep -c "^\[x\] $category" "$PROGRESS_FILE" 2>/dev/null) || count=0
	echo "$count" | tr -d '[:space:]'
}
count_total() {
	local category="$1"
	local count
	count=$(grep -c "^\[.\] $category" "$PROGRESS_FILE" 2>/dev/null) || count=0
	echo "$count" | tr -d '[:space:]'
}
BEGINNER_DONE=$(count_completed "beginner")
BEGINNER_TOTAL=$(count_total "beginner")
INTERMEDIATE_DONE=$(count_completed "intermediate")
INTERMEDIATE_TOTAL=$(count_total "intermediate")
EXPERT_DONE=$(count_completed "expert")
EXPERT_TOTAL=$(count_total "expert")
BEGINNER_DONE=${BEGINNER_DONE:-0}
BEGINNER_TOTAL=${BEGINNER_TOTAL:-0}
INTERMEDIATE_DONE=${INTERMEDIATE_DONE:-0}
INTERMEDIATE_TOTAL=${INTERMEDIATE_TOTAL:-0}
EXPERT_DONE=${EXPERT_DONE:-0}
EXPERT_TOTAL=${EXPERT_TOTAL:-0}
TOTAL_DONE=$((BEGINNER_DONE + INTERMEDIATE_DONE + EXPERT_DONE))
TOTAL=$((BEGINNER_TOTAL + INTERMEDIATE_TOTAL + EXPERT_TOTAL))
progress_bar() {
	local done=$1
	local total=$2
	local width=20
	local bar=""
	if [[ $total -eq 0 ]]; then
		for ((i = 0; i < width; i++)); do bar+="░"; done
		printf '%s' "$bar"
		return
	fi
	local pct=$((done * 100 / total))
	local filled=$((pct * width / 100))
	local empty=$((width - filled))
	for ((i = 0; i < filled; i++)); do bar+="█"; done
	for ((i = 0; i < empty; i++)); do bar+="░"; done
	printf '%s' "$bar"
}
if [[ $BEGINNER_TOTAL -gt 0 ]]; then
	beginner_pct=$((BEGINNER_DONE * 100 / BEGINNER_TOTAL))
else
	beginner_pct=0
fi
if [[ $INTERMEDIATE_TOTAL -gt 0 ]]; then
	intermediate_pct=$((INTERMEDIATE_DONE * 100 / INTERMEDIATE_TOTAL))
else
	intermediate_pct=0
fi
if [[ $EXPERT_TOTAL -gt 0 ]]; then
	expert_pct=$((EXPERT_DONE * 100 / EXPERT_TOTAL))
else
	expert_pct=0
fi
if [[ $TOTAL -gt 0 ]]; then
	overall_pct=$((TOTAL_DONE * 100 / TOTAL))
else
	overall_pct=0
fi
echo ""
echo -e "$CYAN╔════════════════════════════════════════════════════════════╗$NC"
echo -e "$CYAN║$NC        $BOLD🎯 UIUA LEARNING PROGRESS TRACKER 🎯$NC               $CYAN║$NC"
echo -e "$CYAN╚════════════════════════════════════════════════════════════╝$NC"
echo ""
echo -e "$WHITE┌────────────────────────────────────────────────────────────┐$NC"
echo -e "$WHITE│$NC $BOLD📊 PROGRESS SUMMARY$NC                                        $WHITE│$NC"
echo -e "$WHITE├────────────────────────────────────────────────────────────┤$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE│$NC $GREEN🌱 BEGINNER:$NC     $(progress_bar "$BEGINNER_DONE" "$BEGINNER_TOTAL")  $BEGINNER_DONE/$BEGINNER_TOTAL ($beginner_pct%)    $WHITE│$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE│$NC $YELLOW🌿 INTERMEDIATE:$NC $(progress_bar "$INTERMEDIATE_DONE" "$INTERMEDIATE_TOTAL")  $INTERMEDIATE_DONE/$INTERMEDIATE_TOTAL ($intermediate_pct%)    $WHITE│$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE│$NC $RED🌳 EXPERT:$NC       $(progress_bar "$EXPERT_DONE" "$EXPERT_TOTAL")  $EXPERT_DONE/$EXPERT_TOTAL ($expert_pct%)     $WHITE│$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE├────────────────────────────────────────────────────────────┤$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE│$NC $BOLD🎯 OVERALL:$NC      $(progress_bar "$TOTAL_DONE" "$TOTAL")  $TOTAL_DONE/$TOTAL ($overall_pct%)    $WHITE│$NC"
echo -e "$WHITE│$NC                                                            $WHITE│$NC"
echo -e "$WHITE└────────────────────────────────────────────────────────────┘$NC"
echo ""
if [[ $overall_pct -lt 10 ]]; then
	echo -e "🚀 ${BOLD}Just getting started!$NC Focus on beginner exercises."
elif [[ $overall_pct -lt 30 ]]; then
	echo -e "📈 ${BOLD}Making progress!$NC Keep working through the basics."
elif [[ $overall_pct -lt 50 ]]; then
	echo -e "💪 ${BOLD}Nice work!$NC Time to tackle more intermediate problems."
elif [[ $overall_pct -lt 75 ]]; then
	echo -e "🔥 ${BOLD}On fire!$NC You're becoming proficient in Uiua."
elif [[ $overall_pct -lt 100 ]]; then
	echo -e "⭐ ${BOLD}Almost there!$NC The expert challenges await!"
else
	echo -e "🏆 ${BOLD}CONGRATULATIONS!$NC You've mastered all exercises!"
fi
echo ""
echo -e "$CYAN━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
echo ""
echo -e "$BOLD📝 QUICK COMMANDS:$NC"
echo ""
echo -e "  ${GREEN}Mark exercise done:$NC"
echo "    ./scripts/progress.sh done beginner 2"
echo "    ./scripts/progress.sh done intermediate 19"
echo ""
echo -e "  ${YELLOW}Get a hint:$NC"
echo "    ./scripts/gethint.sh beginner 2 1     # level 1 hint"
echo "    ./scripts/gethint.sh b 5 3            # level 3 hint"
echo ""
echo -e "  ${BLUE}Run an exercise:$NC"
echo "    uiua run exercises/beginner/02_array_length.ua"
echo ""
echo -e "  ${WHITE}Edit progress file:$NC"
# shellcheck disable=SC2016
echo '    $EDITOR .progress'
echo ""
echo -e "$CYAN━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━$NC"
if [[ $1 == "done" ]] && [[ -n $2 ]] && [[ -n $3 ]]; then
	category="$2"
	num=$(printf "%02d" "$3")
	pattern="^\[ \] $category/${num}_"
	if grep -q "$pattern" "$PROGRESS_FILE"; then
		sed -i "s/^\[ \] $category\/${num}_/[x] $category\/${num}_/" "$PROGRESS_FILE"
		echo ""
		echo -e "$GREEN✓ Marked $category/$num as complete!$NC"
		echo ""
		exec "$0"
	else
		echo ""
		echo -e "${YELLOW}Exercise $category/$num not found or already completed.$NC"
	fi
fi
