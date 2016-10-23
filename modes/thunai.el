(defvar thunai-mode-hook nil)

(defvar thunai-mode-map
	(let ((map (make-keymap)))
		(define-key map "C-j" 'newline-and-indent)
	map)
	"Keymap for THUNAI major mode")


(add-to-list 'auto-mode-alist '("thunai" . thunai-mode))

(defun thunai-mode ()
	"Major mode for editing Thunai"
	(interactive)
	(kill-all-local-variables)
	(use-local-map thunai-mode-map)


	(setq major-mode 'thunai-mode)
	(setq mode-name "Thunai")
	(run-hooks 'thunai-mode-hook)



	(setq font-lock-defaults '(thunaiKeywords))


)
(provide 'thunai-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)
	;(load "tamil_grammar_autogen_lists") ;;IN THIS ORDER...
	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")


	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")

)

(add-hook 'thunai-mode-hook (lambda ()               (set-face-attribute 'default nil :height 150)))
(add-hook 'thunai-mode-hook (lambda ()            
				(setq-default abbrev-mode nil) ;;  we don't want any abbrevs
				(read-abbrev-file "~/.emacs.d/abbrev_defs")
				(setq save-abbrevs t)
				))
(add-hook 'thunai-mode-hook 'load-superior-tamil-writing-method)

(add-hook 'thunai-mode-hook 'toggle-input-method)
(add-hook 'thunai-mode-hook 'end-of-buffer) ; mostly we want to add...

(add-hook 'thunai-mode-hook (lambda ()            

				;(modify-syntax-entry ?\[ "<") ;;make [ as a comment starter
				;(modify-syntax-entry ?\] ">") ;; make ] as a comment ender
				      (modify-syntax-entry ?\[ "(]12") ;;make [[ as a comment starter
				(modify-syntax-entry ?\] ")[34") ;; make ]] as a comment ender


				))

(add-hook 'thunai-mode-hook (lambda()
				(modify-syntax-entry ?\| "\"")  ;; make | into a string delimiter it's a thing I use as single quote in tamil
				))
				

(add-hook 'thunai-mode-hook 'thunai-specific-rules)

(setq thunaiKeywords
      `(
	("^\\*[^*\n]+" . font-lock-heading1-thunai-face)
	("^\\*\\*[^*\n]+" . font-lock-heading2-thunai-face)
	("^\\*\\*\\*[^*\n]+" . font-lock-heading3-thunai-face)

	;("]]" . font-lock-comment-face)
      ))

;(eval-after-load "tamil_grammar_knowledge"
;  '(push '("ந" . "சீதையு") tml-suffix-um-knowledge))


(defun thunai-specific-rules ()
;;specific rules to thunai
(eval-after-load "tamil_grammar_knowledge"
  '(progn
     (setq tml-suzhi-ou-kuril-knowledge 
	(append '(
		("^௧$" . "முதற்பதிப்பு ")
    		("^௨$" . "இரண்டாம் பதிப்பு ")
		("^௩$" . "மூன்றாம் பதிப்பு ")
		("^௪$" . "நான்காம் பதிப்பு ")
		("^௫$" . "ஐந்தாம் பதிப்பு ")
		("^௬$" . "ஆறாம் பதிப்பு ")
		("^௭$" . "ஏழாம் பதிப்பு ")
		("^௮$" . "எட்டாம் பதிப்பு ")
		("^௯$" . "ஓன்பதாம் பதிப்பு ")
		("^ெ$" . "செம்பதிப்பு ")
		("^மு$" . "மறுபதிப்பு ")
		("^௧௧$" . "பதினொன்றாம் பதிப்பு ")
    		("^௧௨$" . "பன்னிரெண்டாம் பதிப்பு ")
		("^௧௩$" . "பதிமூன்றாம் பதிப்பு ")
		("^௧௪$" . "பதிநான்காம் பதிப்பு ")
		("^௧௫$" . "பதினைந்தாம் பதிப்பு ")
		("^௧௬$" . "பதினாறாம் பதிப்பு ")
		("^௧௭$" . "பதினேழாம் பதிப்பு ")
		("^௧௮$" . "பதினெட்டாம் பதிப்பு ")
		("^௧௯$" . "பத்தொன்பதாம் பதிப்பு ")

		 )
		tml-suzhi-ou-kuril-knowledge))
     (setq tml-eos-knowledge 
	(append '(
		("$" . "\\&") ;; end of knowledge would be superfluous.. So we suppress them with this..
		 )
		tml-suffix-um-knowledge))
     (setq tml-colon-knowledge 
	(append '(
		("^பு$" . "புறநானூறு:") 
		("^சி$" . "சிலப்பதிகாரம்:") 
		("^தொ$" . "தொல்காப்பியம்:")
		("^க$" . "கவிதைகள்:")
		("^ஐ$" . "ஐங்குறுநூறு:")
		("^கு$" . "குறுந்தொகை:")
		("^ந$" . "நன்னூல்:")
		("^த$" . "திருக்குறள்:")
		("^க$" . "கம்பராமாயணம்:")
		
		 )
		tml-colon-knowledge))

	(setq tml-hyphen-knowledge 
	      (append '(
		("^வ$" . "வெளியீடு -") 
		("^ப$" . "பாடல் எண்-") 

		 )
		tml-hyphen-knowledge))



))
     
)
  


