      
(global-set-key "௬" 'tml-suffix-um-intr-add)
(global-set-key "௫" 'tml-suffix-il-intr-add)
(global-set-key "௭" 'tml-suffix-kal-intr-add)
(global-set-key "௦" 'tml-suffix-illai-intr-add); this has changed with debian 8.1, in 7.8 we used 0 indifferently
(global-set-key "ை" 'tml-suzhi-ai-intr-add)
(global-set-key "ே" 'tml-suzhi-ae-nedil-intr-add)
(global-set-key "ெ" 'tml-suzhi-ae-kuril-intr-add)
(global-set-key "ு" 'tml-suzhi-ou-kuril-intr-add)
(global-set-key "ூ" 'tml-suzhi-ou-nedil-intr-add)
(global-set-key "ா" 'tml-suzhi-aa-nedil-intr-add)
(global-set-key "்" 'tml-suzhi-a-kuril-intr-add)
(global-set-key "ி" 'tml-suzhi-ii-kuril-intr-add)
(global-set-key "ீ" 'tml-suzhi-ii-nedil-intr-add)
(global-set-key "ொ" 'tml-suzhi-oo-kuril-intr-add) ; for unknown reasons it doesn't show correctly.
(global-set-key "ோ" 'tml-suzhi-oo-nedil-intr-add);

(global-set-key "ள" 'tml-mey-periya-La-intr-add) 
(global-set-key "ய" 'tml-mey-ya-intr-add)
(global-set-key "ட" 'tml-mey-ta-intr-add)
(global-set-key "க" 'tml-mey-ka-intr-add)
(global-set-key "த" 'tml-mey-tha-intr-add)
(global-set-key "ன" 'tml-mey-small-na-intr-add)
(global-set-key "ண" 'tml-mey-big-na-intr-add) 
(global-set-key  "$" 'tml-ir-intr-add) 

(global-set-key  ":" 'tml-colon-intr-add) 
(global-set-key  "-" 'tml-hyphen-intr-add) 
(global-set-key  ")" 'tml-closing-bracket-intr-add) 



 

(global-set-key " " 'tml-otru-migum-idam-intr-add)

(defun period-binding-func ()
  (interactive)
  (tml-eos-intr-add)
  (backward-char 1)
  (delete-char 1)
  (tml-otru-migum-idam-intr-add)
)

(global-set-key "." 'period-binding-func)

(defun comma-binding-func ()
  (interactive)
  (tml-same-suit-or-pause-intr-add)
  (backward-char 1)
  (delete-char 1)
  (tml-otru-migum-idam-intr-add)
)

(global-set-key "," 'comma-binding-func)

(defun question-mark-binding-func ()
  (interactive)
  (tml-question-intr-add)
  (backward-char 1)
  (delete-char 1)
  (tml-otru-migum-idam-intr-add)
)

(global-set-key "?" 'question-mark-binding-func)


(global-set-key (kbd "RET") 'tml-eol-intr-add)

(global-set-key (kbd "S-<backspace>") 'erase-miguntha-otru)

(global-set-key (kbd "C-<return>") 'fetch-seyyul)
(global-set-key (kbd "C-<enter>") 'fetch-seyyul)



(defun get-tamil-translation ()
  "Tamil Translation of last typed group of words"
  (let* ((curr-line (thing-at-point 'line))
	 (shl-cmd (concat "tamilToEnglish \'" curr-line "\'"))
	 (engText (shell-command-to-string shl-cmd)))
    engText))

(defun put-definition-with-parentheses ()
  "get Tamil Translation and put it in parentheses"
  (interactive)
  (let ((result (get-tamil-translation)))
    (if (string-equal result "")
	(self-insert-command 1)
      (insert (concat "(" result ")")))))

(global-set-key  "(" 'put-definition-with-parentheses) 


(global-set-key  ">" 'complete-this-verse) 
