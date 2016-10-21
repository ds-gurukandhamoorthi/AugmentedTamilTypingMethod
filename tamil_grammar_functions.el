
(defmacro animate-knowledge (func knowledge type-of-func)
  `(defun ,func ()
     (interactive)
     (,type-of-func #'(lambda (word)
				    (make-function-using-knowledge ,knowledge word)))))

(animate-knowledge tml-suffix-um-intr-add 
		   tml-suffix-um-knowledge make-suffix-func-interactive)
(animate-knowledge tml-suffix-illai-intr-add 
		   tml-suffix-illai-knowledge make-suffix-func-interactive)
(animate-knowledge tml-suffix-kal-intr-add 
		   tml-suffix-kal-knowledge make-suffix-func-interactive)
(animate-knowledge tml-suffix-il-intr-add 
		   tml-suffix-il-knowledge make-suffix-func-interactive)

(animate-knowledge tml-eol-intr-add
		   tml-eol-knowledge make-eol-func-interactive)



(animate-knowledge tml-suzhi-ae-nedil-intr-add 
		   tml-suzhi-ae-nedil-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ai-intr-add 
		   tml-suzhi-ai-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ae-kuril-intr-add 
		   tml-suzhi-ae-kuril-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ou-kuril-intr-add 
		   tml-suzhi-ou-kuril-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ou-nedil-intr-add 
		   tml-suzhi-ou-nedil-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-aa-nedil-intr-add 
		   tml-suzhi-aa-nedil-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-a-kuril-intr-add 
		   tml-suzhi-a-kuril-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ii-kuril-intr-add 
		   tml-suzhi-ii-kuril-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-ii-nedil-intr-add 
		   tml-suzhi-ii-nedil-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-oo-kuril-intr-add 
		   tml-suzhi-oo-kuril-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-suzhi-oo-nedil-intr-add 
		   tml-suzhi-oo-nedil-knowledge make-suzhi-func-interactive)
(animate-knowledge tml-mey-periya-La-intr-add 
		   tml-mey-periya-La-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-ya-intr-add 
		   tml-mey-ya-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-ta-intr-add 
		   tml-mey-ta-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-ka-intr-add 
		   tml-mey-ka-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-tha-intr-add 
		   tml-mey-tha-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-big-na-intr-add 
		   tml-mey-big-na-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-mey-small-na-intr-add 
		   tml-mey-small-na-knowledge   make-suzhi-func-interactive)


(animate-knowledge tml-eos-intr-add 
		   tml-eos-knowledge  make-suzhi-func-interactive)

(animate-knowledge tml-otru-migum-idam-intr-add 
		   tml-otru-migum-idam-knowledge make-func-on-two-words-interactive)

(animate-knowledge tml-same-suit-or-pause-intr-add 
  		   tml-same-suit-or-pause-knowledge   make-suzhi-func-interactive)

(animate-knowledge tml-question-intr-add 
		   tml-question-knowledge make-suzhi-func-interactive)



(animate-knowledge tml-ir-intr-add 
		   tml-ir-knowledge   make-suzhi-func-interactive) ; though it isn't suzhi ... we call it so as to have ஒருவர் etc...


(animate-knowledge tml-colon-intr-add 
  		   tml-colon-knowledge   make-suzhi-func-interactive)

(animate-knowledge tml-hyphen-intr-add 
  		   tml-hyphen-knowledge   make-suzhi-func-interactive)
(animate-knowledge tml-closing-bracket-intr-add 
  		   tml-closing-bracket-knowledge   make-suzhi-func-interactive)
