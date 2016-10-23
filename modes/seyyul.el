(defvar seyyul-mode-hook nil)

(defvar seyyul-mode-map
	(let ((map (make-keymap)))
		(define-key map "C-j" 'newline-and-indent)
	map)
	"Keymap for SEYYUL major mode")

;(add-to-list 'auto-mode-alist '("\\.seyyul" . seyyul-mode))

(add-to-list 'auto-mode-alist '("\\.poem\\'" . seyyul-mode))

(defun seyyul-mode ()
	"Major mode for editing Seyyul"
	(interactive)
	(kill-all-local-variables)
	(use-local-map seyyul-mode-map)


	(setq major-mode 'seyyul-mode)
	(setq mode-name "Seyyul")
	(run-hooks 'seyyul-mode-hook)



	(setq font-lock-defaults '(seyyulKeywords))


)
(provide 'seyyul-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)

					;(load "tamil_grammar_autogen_lists") ;;IN THIS ORDER...
  
	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")


	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")





)

(add-hook 'seyyul-mode-hook (lambda ()
               (set-face-attribute 'default nil :height 175 :font "GIST-TMOTChanakya")
               (set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-10")
))
(add-hook 'seyyul-mode-hook (lambda ()            
				(setq-default abbrev-mode t)
				(read-abbrev-file "~/.emacs.d/abbrev_defs")
				(setq save-abbrevs t)
				))
(add-hook 'seyyul-mode-hook 'load-superior-tamil-writing-method)

(add-hook 'seyyul-mode-hook 'toggle-input-method)
(add-hook 'seyyul-mode-hook 'end-of-buffer) ; mostly we want to add...

(add-hook 'seyyul-mode-hook (lambda ()            

				;(modify-syntax-entry ?\[ "<") ;;make [ as a comment starter
				;(modify-syntax-entry ?\] ">") ;; make ] as a comment ender
				      (modify-syntax-entry ?\[ "(]12") ;;make [[ as a comment starter
				(modify-syntax-entry ?\] ")[34") ;; make ]] as a comment ender


				))

(add-hook 'seyyul-mode-hook (lambda()
				(modify-syntax-entry ?\| "\"")  ;; make | into a string delimiter it's a thing I use as single quote in tamil
				))
				
(setq seyyul-structure
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

(setq font-lock-heading1-seyyul-face 'face-boxed)

(make-face 'face-boxed2 "Face-Boxed")
(set-face-attribute 'face-boxed2 nil 
		    :foreground "White"
		    :background "FireBrick"
		    :height 275
		    :family "Droid Sans Tamil"
		    )
(setq font-lock-heading2-seyyul-face 'face-boxed2)

(make-face 'face-boxed3 "Face-Boxed")
(set-face-attribute 'face-boxed3 nil 
		    :foreground "White"
		    :background "Purple"
		    :height 210
		    :family "Droid Sans Tamil"
		    )
(setq font-lock-heading3-seyyul-face 'face-boxed3)


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



(setq seyyul-structure-regexp (regexp-opt seyyul-structure 'words))
(load "tamil_grammar_autogen_avoid_lists")

(setq seyyulKeywords
      `(
	("^\\*[^*\n]+" . font-lock-heading1-seyyul-face)
	("^\\*\\*[^*\n]+" . font-lock-heading2-seyyul-face)
	("^\\*\\*\\*[^*\n]+" . font-lock-heading3-seyyul-face)

      ))

;(eval-after-load "tamil_grammar_knowledge"
;  '(push '("ந" . "சீதையு") tml-suffix-um-knowledge))



(add-hook 'seyyul-mode-hook  'seyyul-specific-rules)



(defun seyyul-specific-rules ()
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


