grep  "words-ending-with" tamil_grammar_knowledge.el | sed -e 's/,/setq /' |cut -f1 -d'.' |sed 's/$/ nil)/' >delete_variables.el
