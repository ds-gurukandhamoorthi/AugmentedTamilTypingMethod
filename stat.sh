cat -n tamil_grammar_autogen_lists.el| grep defcon| awk 'NR==1{s=$1;next}{print $1-s;s=$1; print $3}'
