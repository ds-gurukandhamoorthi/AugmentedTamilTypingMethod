(defun put-parentheses-around-numbers ()
  (interactive)
  (replace-regexp "\\([0-9]+\\)" "(\\1)"))

(defun tml-pluralize ()
  (interactive)
  (if (bolp)
      (self-insert-command 1)
    (backward-char 1)
    (cond ((or (looking-at " ") (looking-at "[௧-௯0-9]"))
	   (progn 
	     (forward-char 1)
	     (self-insert-command 1)))
	  ((looking-at "[ஙரகற]")
	   (progn 
	     (forward-char 1)
	     (insert "்கள்")))
	  ((looking-at "[யஷஹ]")
	   (progn 
	     (forward-char 1)
	     (insert "ங்கள்")))
	  ((or (looking-at "[தஸவணட]") (looking-at "[ோ]"))
	   (progn 
	     (forward-char 1)
	     (insert "ர்கள்")))
	  (t 
	   (progn
	     (forward-char 1)
	     (insert "கள்"))))))
(global-set-key "௭" 'tml-pluralize)

(defun tml-negate ()
  (interactive)
  (if (bolp)
      (self-insert-command 1)
    (backward-char 1)
    (cond ((or (looking-at " ") (looking-at "[௧-௯0-9]"))
	   (progn 
	     (forward-char 1)
	     (self-insert-command 1)))
	  (t 
	   (progn
	     (forward-char 1)
	     (insert "ல்லை"))))))


(global-set-key "0" 'tml-negate)


(defun tml-um ()
  (interactive)
  (if (eq last-command 'tml-pluralize) ; கள் + ும்  ->களும்
      (progn
	(backward-char 1)
	(delete-char 1)
	(insert "ும்"))
    (if (eq last-command 'tml-il) ; ில் + ும்  -> ிலும்
	(progn
	  (backward-char 1)
	  (delete-char 1)
	  (insert "ும்"))
      
      (if (bolp)
	  (self-insert-command 1)
	(backward-char 1)
	(cond ((or (looking-at " ") (looking-at "[௧-௯0-9]"))
	       (progn 
		 (forward-char 1)
		 (self-insert-command 1)))
	      ((looking-at "[ிா]")
	       (progn 
		 (forward-char 1)
		 (insert "லும்")))
	      ((looking-at "[ங]")
	       (progn 
		 (forward-char 1)
		 (insert "்கும்")))
	      ((looking-at "[்]")
	       (progn 
		 (backward-char 1)
		 (if (looking-at "[கசடதபறயரலவழள]")
		     (progn
		       (forward-char 1)
		       (insert (string (preceding-char)))
		       (transpose-chars 1)
		       (insert "ும்"))
		   (forward-char 1)
		   (delete-char 1)
		   (insert "ும்"))))
	      
	      ((looking-at "[ை]")
	       (progn 
		 (forward-char 1)
		 (insert "யும்")))
	      (t 
	       (progn
		 (forward-char 1)
		 (insert "ும்"))))))))

  (global-set-key "௬" 'tml-um)

  (defun tml-ai ()
    (interactive)
    (if (eq last-command 'tml-pluralize) ; கள் + ை  ->களை
	(progn
	  (backward-char 1)
	  (delete-char 1)
	  (insert "ை"))
      (backward-char 1)
      (if (looking-at "ை")
	  (progn
	    (forward-char 1)
	    (insert "யை"))
	(forward-char 1)
	
	
	(self-insert-command 1))))


  (global-set-key "ை" 'tml-ai)
  (defun tml-ae-nedil ()
    (interactive)
    (if (eq last-command 'tml-pluralize) ; கள் + ே  ->களே
	(progn
	  (backward-char 1)
	  (delete-char 1)
	  (insert "ே"))
      (backward-char 1)
      (if (looking-at "ை")
	  (progn
	    (forward-char 1)
	    (insert "யே"))
	(forward-char 1)
	
	
	(self-insert-command 1))))


  (global-set-key "ே" 'tml-ae-nedil)


  (defun tml-il ()
    (interactive)
    (if (eq last-command 'tml-pluralize) ; கள் + ில்  ->களில்
	(progn
	  (backward-char 1)
	  (delete-char 1)
	  (insert "ில்"))

      (if (bolp)
	  (self-insert-command 1)
	(backward-char 1)
	(cond ((or (looking-at " ") (looking-at "[௧-௯0-9]"))
	       (progn 
		 (forward-char 1)
		 (self-insert-command 1)))
	      ((looking-at "[ை]")
	       (progn 
		 (forward-char 1)
		 (insert "யில்")))
	      (t 
	       (progn
		 (forward-char 1)
		 (insert "ில்")))))))

(global-set-key "௫" 'tml-il)
