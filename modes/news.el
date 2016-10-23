(defvar news-mode-hook nil)

(defvar news-mode-map
	(let ((map (make-keymap)))
		(define-key map "C-j" 'newline-and-indent)
	map)
	"Keymap for NEWS major mode")

;(add-to-list 'auto-mode-alist '("\\.news" . news-mode))

(add-to-list 'auto-mode-alist '("\\.news\\'" . news-mode))

(defun news-mode ()
	"Major mode for editing News"
	(interactive)
	(kill-all-local-variables)
	(use-local-map news-mode-map)


	(setq major-mode 'news-mode)
	(setq mode-name "News")
	(run-hooks 'news-mode-hook)

	(when (string-match "^sk" (file-name-nondirectory buffer-file-name)) ;;Saravanakumar (Dinakaran)
		(load "saravanakumar")
		(flyspell-mode 1)
		(setq font-lock-defaults '(saravanakumarKeywords))


		)
	(when (string-match "^jeeva" (file-name-nondirectory buffer-file-name)) ;;Jeeva (Malaimurasu)
	  (load "jeeva")
	    (flyspell-mode 1)
	    (setq font-lock-defaults '(jeevaKeywords))
  
   
	    )

	(when (string-match "^nak" (file-name-nondirectory buffer-file-name)) ;;Selvakumar (Nakeeran)
		(load "nakeeran")
		;(flyspell-mode 1)
		(setq font-lock-defaults '(nakeeranKeywords))


		)



)
(provide 'news-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)

	;(load "tamil_grammar_autogen_lists") ;;IN THIS ORDER...
	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")
	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")


)

(add-hook 'news-mode-hook (lambda ()           
    (set-face-attribute 'default nil :height 150 :font "GIST-TMOTChanakya")
               (set-face-attribute 'mode-line nil :font "DejaVu Sans Mono-10")
))
(add-hook 'news-mode-hook (lambda ()            
			    (setq-default abbrev-mode t)
			    (read-abbrev-file "~/.emacs.d/abbrev_defs")
			    (setq save-abbrevs t)
			    ))
(add-hook 'news-mode-hook 'load-superior-tamil-writing-method)
(add-hook 'news-mode-hook 'toggle-input-method)

