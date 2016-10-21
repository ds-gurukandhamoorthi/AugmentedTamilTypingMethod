(load "stringutils")
(defun erase-miguntha-otru ()
  (interactive)
  (save-excursion
    (re-search-backward "[கசதப]் ")
    (delete-char 2)
    ))

(defun fetch-seyyul ()
  (interactive)
  (let* ((wrd (thing-at-point 'line))
	 (cmd (concat "getSeyyul " wrd))
	 (rslt (shell-command-to-string cmd) ))
    (unless (string-equal rslt "")
      (delete-line)
      (insert rslt))))

(defun delete-line () ;; code got from ElispCookbook
  (interactive)
  (delete-region (line-beginning-position) (point)))


(defun get-previous-lines (n)
  (interactive)
  (buffer-substring-no-properties
   (save-excursion
     (forward-line -1)
     (line-end-position) )
   (let ((gobackpos (- (line-number-at-pos) n)))
     (save-excursion (goto-line gobackpos) (point)))))

(defun get-current-line () ;; code got from ErgoEmacs
  (buffer-substring-no-properties
   (line-beginning-position)
   (line-end-position)))
    


(defun complete-this-verse ()
  (interactive)
  (let* ((prvs-lns (get-previous-lines 15))
    	 (this-ln (get-current-line))
	 (cmd (concat "completeSeyyul '" prvs-lns "' " this-ln))	 
	 (rslt (remove-newline (shell-command-to-string cmd))))
    (unless (string-equal rslt "")
      (delete-line)
      (insert rslt)
      )))

  
(provide 'tamil-common)
