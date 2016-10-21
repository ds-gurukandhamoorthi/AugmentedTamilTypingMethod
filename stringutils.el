(defun remove-newline (str)
  (replace-regexp-in-string "\n$" "" str))
