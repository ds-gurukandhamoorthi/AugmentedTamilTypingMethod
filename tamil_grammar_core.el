(defun make-function-using-knowledge (knowledge-base word)
  (let ((modified-word
	 (assoc-default word knowledge-base 'string-match)))
    (if (null modified-word)
	word
      (replace-match modified-word t nil word))))

;; (defun make-function-using-knowledge (knowledge-base word)
;;   (let ((modified-word
;; 	 (assoc-default word knowledge-base 'string-match-eventual-vectors)))
;;     (cond  ((null modified-word) 	word)
;; 	   ((atom modified-word)  (replace-match modified-word t nil word))
;; 	   (t word)
;; )))

;; (defun string-match-eventual-vectors (word re-or-vector-of-res )
;;   (if (stringp re-or-vector-of-res)
;;       (string-match word re-or-vector-of-res)
;;     (mapcar #'(lambda (x) (string-match x word) re-or-vector-of-res))))



(require 'thingatpt)


(defun make-func-interactive (autistic-function  prev-chars-forbidden bound-function) ; prev-char-forbidden is a list of regexp. ; bound-function is the function to which the key is bound
  (interactive)
  (if (or (bolp) (not (eolp)))
      (funcall bound-function)
    (backward-char 1)
    (if (some #'identity (mapcar #'(lambda (regexp) (looking-at regexp)) prev-chars-forbidden)) ;; equiv to (or (looking-at " ") (looking-at "[[:punct:]]")) 
	(progn
	  (forward-char 1)
	  (funcall bound-function))
      (forward-char 1)
      (forward-word -1)
      (let* ((word (word-at-point))
	         (result (funcall autistic-function word)))
	(if (not (string-equal word result)) ;only if there is modification do we change buffer
	    (progn
	      (kill-word 1)
	      (insert result))
	  (forward-word 1)
	  (funcall bound-function))))))


(defun make-suzhi-func-interactive (autistic-function) ; for the keys like ை ே  ...
  (interactive)
  (make-func-interactive autistic-function '(" " "[[:punct:]]")  #'(lambda () (self-insert-command 1))))

(defun make-suffix-func-interactive (autistic-function)
  "Add  suffix interactively"
  (interactive)
  (make-func-interactive autistic-function '(" " "[[:punct:]]" "[௧-௯0-9]")  #'(lambda () (self-insert-command 1))))

(defun make-eol-func-interactive (autistic-function)
  "eol special case"
  (interactive)
  (make-func-interactive autistic-function '(" " "[[:punct:]]" "[௧-௯0-9]")  #'newline) )


(defun make-func-on-two-words-interactive (autistic-function)
  "Add  suffix interactively"
  (interactive)
  (if (or (bolp) (not (eolp)))
      (self-insert-command 1)
    (backward-char 1)
    (cond ((or (looking-at " ") (looking-at "[௧-௯0-9]") (looking-at "[[:punct:]]"))
	   (progn 
	     (forward-char 1)
	     (self-insert-command 1)))
	  (t
	   (progn
	     (forward-char 1)
	     (forward-word -1)
	     (let ((word2 (word-at-point)))
	       (forward-word -1)
	       (if (looking-at "\\w+ \\w+")
		   (progn
		     (let* ((word1 (word-at-point))
			    (two-words (concat word1 " " word2))
			    (result  (funcall autistic-function two-words)))
		       (if (not (string-equal two-words result));only if there is modification do we change buffer
			   (progn 	     	   
			     (kill-word 2)
			     (insert result)
			     (self-insert-command 1))
			 (forward-word 2)
			 (self-insert-command 1)
			 )))
		 (forward-word 2)
		 (self-insert-command 1)
		 )))))))


