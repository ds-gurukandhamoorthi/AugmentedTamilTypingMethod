(defvar wordcheck-mode-hook nil)

(defvar wordcheck-mode-map
	(let ((map (make-keymap)))
		(define-key map (kbd "-") 'kill-whole-line)
		(define-key map (kbd "?") 'ispell-word)
		(define-key map (kbd "0") 'ispell-word)

	map)
	"Keymap for WORDCHECK major mode")

;(add-to-list 'auto-mode-alist '("\\.wordcheck" . wordcheck-mode))

(add-to-list 'auto-mode-alist '("\\.mandic\\'" . wordcheck-mode))
(add-to-list 'auto-mode-alist '("\\.list\\'" . wordcheck-mode))

(defun wordcheck-mode ()
	"Major mode for editing Wordcheck"
	(interactive)
	(kill-all-local-variables)
	(use-local-map wordcheck-mode-map)


	(setq major-mode 'wordcheck-mode)
	(setq mode-name "Wordcheck")
	(run-hooks 'wordcheck-mode-hook)

	(setq font-lock-defaults '(wordcheckKeywords))
	(setq ispell-choices-win-default-height 5)


)
(provide 'wordcheck-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)

	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")
	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")
)



;(add-hook 'wordcheck-mode-hook (lambda ()              (set-face-attribute :height 175)))


(add-hook 'wordcheck-mode-hook (lambda ()              
				 (setq buffer-face-mode-face '(:family "Droid Sans Tamil"))
				 (buffer-face-mode t) ))
(add-hook 'wordcheck-mode-hook (lambda ()              (set-face-attribute 'default nil :height 175)))


;    (set-face-attribute 'default nil :font "Droid Sans Tamil" )
(add-hook 'wordcheck-mode-hook 'load-superior-tamil-writing-method)
(add-hook 'wordcheck-mode-hook 'toggle-input-method)

;; (add-hook 'wordcheck-mode-hook (lambda ()        				 (flyspell-mode 1)
				 
;; 				 (set-face-attribute 'flyspell-incorrect-face nil :slant 'italic)

;;  				 ))


(load "tamil_grammar_autogen_avoid_lists")

(setq wordcheckKeywords
      `(
	("[கசடதபறயரலவழளஞஙணநமன][அஆஇஈஉஊஎஏஐஓஒஔ]" . font-lock-warning-face)
	("ன்ட்\\|ண்ற\\|ண்த" . font-lock-warning-face)
	("[^ ]\\([அஆஇஈஉஊஎஒஓஔஃஙந]\\)\\>\\([\n]\\|.\\)" 1 font-lock-warning-face) ;;ending letters  ;;what I have added at the end is to avoid it turning to red when i am still composing
	("\\<\\([்ாிீுூெேைௌங]\\)[^ ]" 1 font-lock-warning-face) ;;ending letters
	(,tamil-avoid-bigrams-regexp . font-lock-warning-face) ;;avoid these character bigrams

	("^(.*)$" . font-lock-reference-face)

	;("]]" . font-lock-comment-face)
      ))

;(eval-after-load "tamil_grammar_knowledge"
;  '(push '("ந" . "சீதையு") tml-suffix-um-knowledge))

