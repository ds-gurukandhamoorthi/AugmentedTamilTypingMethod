; regexp opt

(load "tamil_grammar_autogen_lists")
;; This load is needed because all constants are needed at compile time...

(eval-when-compile (require 'tamil-grammar-autogen-lists))

(defmacro make-regexp-from-list-of-words (regexp list start-char end-char)
`(progn (defconst ,regexp
	  (eval-and-compile (concat ,start-char (regexp-opt  
						,list
) ,end-char )))
	(setq ,list nil)))
			  
;;; once we have created regexp the list is no more needed, it is set to nil to save memory

(make-regexp-from-list-of-words otru-miga-idangal-regexp otru-miga-idangal-list "\\<" " ")

(make-regexp-from-list-of-words words-ending-with-villai villai-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-thillai thillai-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-yillai yillai-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-millai millai-list "\\<" "\\'")

(make-regexp-from-list-of-words words-ending-with-yum yum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-kum-1 kum-list-1 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-kum-2 kum-list-2 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-lum-1 lum-list-1 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-lum-2 lum-list-2 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-bigrum bigrum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-dum dum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-biglum biglum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-rum rum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-thum thum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-num num-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-mum mum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-vum-1 vum-list-1 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-vum-2 vum-list-2 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-pum pum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-zhum zhum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-bignum bignum-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-sum sum-list "\\<" "\\'")


(make-regexp-from-list-of-words words-ending-with-yil yil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-thil thil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-biglil biglil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-lil lil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-vil vil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-ril ril-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-kil kil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-pil pil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-dil dil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-zhil zhil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-bigril bigril-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-nil nil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-mil mil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-sil sil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-northsil northsil-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-bignil bignil-list "\\<" "\\'")

(make-regexp-from-list-of-words words-ending-with-nar nar-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-var var-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-bignedilrar bignedilrar-list "\\<" "\\'")

(make-regexp-from-list-of-words words-ending-with-rpointkal-1 rpointkal-list-1 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-rpointkal-2 rpointkal-list-2 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-ngpointkal ngpointkal-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-ikal ikal-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-varkal varkal-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-aarkal-1 aarkal-list-1 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-aarkal-2 aarkal-list-2 "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-aikal aikal-list "\\<" "\\'")
(make-regexp-from-list-of-words words-ending-with-kpointkal kpointkal-list "\\<" "\\'")







(provide 'tamil-grammar-brute-knowledge)
