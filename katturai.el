(defvar katturai-mode-hook nil)


(defvar katturai-mode-map
	(let ((map (make-keymap)))
		(define-key map "C-j" 'newline-and-indent)
	map)
	"Keymap for KATTURAI major mode")

;(add-to-list 'auto-mode-alist '("\\.katturai" . katturai-mode))

(add-to-list 'auto-mode-alist '("\\.unix\\'" . katturai-mode))

(defun katturai-mode ()
	"Major mode for editing Katturai"
	(interactive)
	(kill-all-local-variables)
	(use-local-map katturai-mode-map)


	(setq major-mode 'katturai-mode)
	(setq mode-name "Katturai")
	(run-hooks 'katturai-mode-hook)



	(setq font-lock-defaults '(katturaiKeywords))
	(load "katturai_abbrevs.el")

)
(provide 'katturai-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)

					;(load "tamil_grammar_autogen_lists") ;;IN THIS ORDER...
  
	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")


	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")





)

(add-hook 'katturai-mode-hook (lambda ()
               (set-face-attribute 'default nil :height 150 :font "GIST-TMOTChanakya")
               (set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-10")
))
(add-hook 'katturai-mode-hook (lambda ()            
				(setq-default abbrev-mode t)
				(read-abbrev-file "~/.emacs.d/abbrev_defs")
				(setq save-abbrevs t)
				))
(add-hook 'katturai-mode-hook 'load-superior-tamil-writing-method)

(add-hook 'katturai-mode-hook 'toggle-input-method)
(add-hook 'katturai-mode-hook 'end-of-buffer) ; mostly we want to add...

(add-hook 'katturai-mode-hook (lambda ()            

				;(modify-syntax-entry ?\[ "<") ;;make [ as a comment starter
				;(modify-syntax-entry ?\] ">") ;; make ] as a comment ender
				      (modify-syntax-entry ?\[ "(]12") ;;make [[ as a comment starter
				(modify-syntax-entry ?\] ")[34") ;; make ]] as a comment ender


				))

(add-hook 'katturai-mode-hook (lambda()
				(modify-syntax-entry ?\| "\"")  ;; make | into a string delimiter it's a thing I use as single quote in tamil
				))
				
(setq katturai-structure
      '(
"முன்னுரை"
"முடிவுரை"
"துணைநூற்பட்டியல்"
))

(make-face 'face-boxed "Face-Boxed")
;(set-face-foreground 'face-posts "Purple")
;(set-face-foreground 'face-boxed "White")
;(set-face-background 'face-boxed "Purple")
;(set-face-attribute 'face-boxed nil :box 1)
(set-face-attribute 'face-boxed nil 
		    :foreground "White"
		    :background "Blue"
		    :height 340
		    :family "Droid Sans Tamil"
		    )

; "TAU_Elango_Panchali" "Droid Sans Tamil" "DejaVu Sans Mono"

(setq font-lock-heading1-katturai-face 'face-boxed)

(make-face 'face-boxed2 "Face-Boxed")
(set-face-attribute 'face-boxed2 nil 
		    :foreground "White"
		    :background "FireBrick"
		    :height 275
		    :family "Droid Sans Tamil"
		    )
(setq font-lock-heading2-katturai-face 'face-boxed2)

(make-face 'face-boxed3 "Face-Boxed")
(set-face-attribute 'face-boxed3 nil 
		    :foreground "White"
		    :background "Purple"
		    :height 210
		    :family "Droid Sans Tamil"
		    )
(setq font-lock-heading3-katturai-face 'face-boxed3)


(make-face 'face-reference "Face-Reference")
(set-face-attribute 'face-reference nil 
		    :foreground "sea green"
		    :height 150
		    :family "TAU_Elango_Veena"
		    )
(setq font-lock-reference-face 'face-reference)

(make-face 'clone-normal "Clone-normal")
(set-face-attribute 'clone-normal nil
		    :inherit 'default
		    )
(setq font-lock-clone-normal 'clone-normal)



(setq katturai-structure-regexp (regexp-opt katturai-structure 'words))
(load "tamil_grammar_autogen_avoid_lists")

(setq katturaiKeywords
      `(
	("^\\*[^*\n]+" . font-lock-heading1-katturai-face)
	("^\\*\\*[^*\n]+" . font-lock-heading2-katturai-face)
	("^\\*\\*\\*[^*\n]+" . font-lock-heading3-katturai-face)
	("[கசடதபறயரலவழளஞஙணநமன][அஆஇஈஉஊஎஏஐஓஒஔ]" . font-lock-warning-face)
;	("ன்ட்\\|ண்ற\\|ண்த" . font-lock-warning-face)
;	("[^ ]\\([அஆஇஈஉஊஎஒஓஔஃஙந]\\)\\>\\([\n]\\|.\\)" 1 font-lock-warning-face) ;;ending letters  ;;what I have added at the end is to avoid it turning to red when i am still composing
	("[^ ]\\([அஆஇஈஉஊஎஒஓஔஃஙந]\\)\\>\\([\n]\\|.\\)" 1 font-lock-warning-face) ;;ending letters  ;;what I have added at the end is to avoid it turning to red when i am still composing



	("\\<[^ ]*\\(க்[^க]\\|த்[^த]\\|ச்[^ச]\\|ப்[^ப]\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters
	("\\<[^ ]*\\([^டண]்ட\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters
	("\\<[^ ]*\\([^றன]்ற\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters
	("\\<[^ ]*\\(ர்ர\\|ழ்ழ\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters 
;	("\\<[^ ]*\\(ர்ர\\|ழ்ழ\\)\\>" 1 font-lock-warning-face) ;;middle letters FIXME: மர்ர followed by space is not recognized.
	("\\<[^ ]*\\([லளனண]்த\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters
	("\\<[^ ]*\\([லளனண]்ந\\)[^ ]*\\>" 1 font-lock-warning-face) ;;middle letters
;RMK: if மர்ர rule is placed after ர ending rule it wouldn't function.



;	("\\<\\([்ாிீுூெேைௌங]\\)[^ ]" 1 font-lock-warning-face) ;;starting letters
	("\\<\\([்ாிீுூெேைௌஃஙடணழளறன]\\)[^ ]" 1 font-lock-warning-face) ;;starting letters
	("\\<\\([^ஸ][்]\\)[^ ]" 1 font-lock-warning-face) ;;starting letters

	(,tamil-okay-rasapavazhabigna-ending-regexp 1 'default ) 
	("[^ ]\\([ரசபவழணஎ]\\)\\>\\([\n]\\|.\\)" 1 font-lock-warning-face ) ;;ending letters  ;;
	("[^ ]\\(ட்\\|ற்\\|ங்\\)\\>\\([\n]\\|.\\)" 1 font-lock-warning-face ) ;;ending letters  ;;






	(,tamil-avoid-bigrams-regexp . font-lock-warning-face) ;;avoid these character bigrams
	(,tamil-avoid-trigrams-regexp . font-lock-warning-face) ;;avoid these character trigrams
	("\\<சித்தரி" . font-lock-warning-face) ;;avoid these character trigrams

	("^(.*)$" . font-lock-reference-face)

	;("]]" . font-lock-comment-face)
      ))

;(eval-after-load "tamil_grammar_knowledge"
;  '(push '("ந" . "சீதையு") tml-suffix-um-knowledge))



(add-hook 'katturai-mode-hook  'katturai-specific-rules)



(defun katturai-specific-rules ()
(eval-after-load "tamil_grammar_knowledge"
  '(progn
     (setq tml-suffix-um-knowledge 
	(append '(
		("^dfsdffsdfs$" . "முதலை போன்ற")
		 )
		tml-suffix-um-knowledge))
     (setq tml-colon-knowledge 
	(append '(
		("^ப$" . "பெரியபுராணம் : ")
		("^த$" . "தேவாரம் : ")

		 )
		tml-colon-knowledge))
))
     

)

(defun put-parentheses-around-numbers ()
  (interactive)
  (replace-regexp "\\([0-9]+\\)" "(\\1)"))

(defun replace-english-single-letter ()
  (interactive)
  (replace-string "c." "C.") ; capital c is misconstrued as control by Emacs
  (replace-string "ஏ." "A.")
  (replace-string "பி." "B.")
  (replace-string "சி." "C.")
  (replace-string "டி." "D.")
  (replace-string "டிட." "T.")
  (replace-string "இ." "E.")
  (replace-string "ஃப்." "F.")
  (replace-string "ஜி." "G.")
  (replace-string "ஜீ." "G.")
  (replace-string "எச்." "H.")
  (replace-string "ஹெச்." "H.")
  (replace-string "ஐ." "I.")
  (replace-string "ஜே." "J.")
  (replace-string "ஜெ." "J.")
  (replace-string "கெ." "K.")
  (replace-string "கே." "K.")
  (replace-string "எல்." "L.")
  (replace-string "எம்." "M.")
  (replace-string "என்." "N.")
  (replace-string "ஓ." "O.")
  (replace-string "ஒ." "O.")
  (replace-string "க்யு." "Q.")
  (replace-string "க்யூ." "Q.")
  (replace-string "ஆர்." "R.")
  (replace-string "எஸ்." "S.")
  (replace-string "யு." "U.")
  (replace-string "யூ." "U.")
  (replace-string "எக்ஸ்." "X.")


)

