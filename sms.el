(defvar sms-mode-hook nil)

(defvar sms-mode-map
	(let ((map (make-keymap)))
		(define-key map [(control return)] 'sms-show-as-qr)
	map)
	"Keymap for SMS major mode")

;(add-to-list 'auto-mode-alist '("\\.sms" . sms-mode))

(add-to-list 'auto-mode-alist '("\\.sms\\'" . sms-mode))

(defun sms-mode ()
	"Major mode for editing Sms"
	(interactive)
	(kill-all-local-variables)
	(use-local-map sms-mode-map)


	(setq major-mode 'sms-mode)
	(setq mode-name "Sms")
	(run-hooks 'sms-mode-hook)
	


	(flyspell-mode 1)


)
(provide 'sms-mode)

(defun load-superior-tamil-writing-method ()
  (interactive)

	;(load "tamil_grammar_autogen_lists") ;;IN THIS ORDER...
	(load "tamil_grammar_brute_knowledge") ;;IN THIS ORDER...
	(load "tamil_grammar_knowledge")
	(load "tamil_grammar_core")
	(load "tamil_grammar_functions")
	(load "tamil_grammar_bindings")


)

(add-hook 'sms-mode-hook (lambda ()               (set-face-attribute 'default nil :height 400)))
(add-hook 'sms-mode-hook (lambda ()            
			    (setq-default abbrev-mode t)
			    (read-abbrev-file "~/.emacs.d/abbrev_defs")
			    (setq save-abbrevs t)
			    ))
(add-hook 'sms-mode-hook 'load-superior-tamil-writing-method)
(add-hook 'sms-mode-hook 'toggle-input-method)

(defun sms-show-as-qr ()
  (interactive)
  (shell-command-to-string (concat "qr_sms.sh \"" (buffer-substring (point-min) (point-max)) "\"")))