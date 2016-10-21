;(defun insert-template-pradosham (kovil)
;  (interactive "nபல்லவனம் பல்லவனீஸ்வரன்(1)தருமகுளம்(2):")
;  (insert (concat 
;)
;)


(load "stringutils")
(load "newscommon")
(load "saravanakumar_abbrevs")


(defvar tamil-month-knowledge
  '(
    ("2015-09-18" . ("புரட்டாசி" 2015))
    ("2015-10-18" . ("ஐப்பசி" 2015))
    ("2015-11-17" . ("கார்த்திகை" 2015))
    ("2015-12-17" . ("மார்கழி" 2015))
    
    ("2016-01-15" . ("தை" 2016))
    ("2016-02-13" . ("மாசி" 2016))
    ("2016-03-14" . ("பங்குனி" 2016))

    )
  "tamil months knowledge")


(defvar pradosham-dates '("09/11/2015"
			"23/11/2015"
			"08/12/2015"
			"23/12/2015"
			"07/01/2016"
			"21/01/2016"
			"06/02/2016"
			"20/02/2016"
			"06/03/2016"
			"20/03/2016"
			"05/04/2016"

			)
  "pradosham dates")


(defvar egadasi-dates  '(
			 "07/11/2015"
			 "22/11/2015"
			 "07/12/2015"
			 "21/12/2015"

			 "05/01/2016"
			 "20/01/2016"
			 "04/02/2016"
			 "18/02/2016"
			 "05/03/2016"
			 "19/03/2016"
			 "03/04/2016"
			 
						 
				      )
  "egadasi dates")

(defvar sankataharasathurthi-dates  '(
				      "29/11/2015"
				      "28/12/2015"
				      "27/01/2016"
				      "26/02/2016"
				      "27/03/2016"

				      )
  "sankataharasathurthi dates")




(defun decrement-date (strdate) ;;--will use unix shell
  (let ((cmd (concat "date '+%Y-%m-%d' -d \'" strdate " -1 day\'")))
    (remove-newline     (shell-command-to-string cmd))))

;;(decrement-date "2015-11-11")

(defun today-is-before (strdate) ;; <
  (let ((diff (ddiff strdate (today))))
    (> diff 0)))


(defun get-tamil-month-year (knowledge res)
  (let ((first-date (first (first knowledge))))
    (if (today-is-before first-date)
	(rest res)
	(get-tamil-month-year (rest knowledge) (first knowledge))
      )))
      


  ;;(get-tamil-month-year tamil-month-knowledge)


(defun get-tamil-month-period-helper (knowledge prev-date)
  (let ((first-date (first (first knowledge))))
    (if (today-is-before first-date)
	(list prev-date (decrement-date first-date))
      (get-tamil-month-period-helper (rest knowledge) (decrement-date first-date)))))

(defun get-tamil-month-period ()
  (get-tamil-month-period-helper tamil-month-knowledge ""))

(defun get-tamil-month ()
  (first (get-tamil-month-year tamil-month-knowledge nil)))


  

(defun date-as-days (strdate)
  (let ((seconds (string-to-number (remove-newline (shell-command-to-string (concat "date -d " strdate " +%s"))))))
    (/ seconds (* 24 60 60))))

(defun ddiff (strdate1 strdate2)
  (- (date-as-days strdate1) (date-as-days strdate2)))

(defun dadd (strdate n)
  (let ((cmd (concat "date '+%Y-%m-%d' -d \'" strdate " "  (number-to-string n) " days\'")))
    (remove-newline (shell-command-to-string cmd))))


(defun day-of-week (strdate)
  (let ((cmd (concat "date '+%w' -d \'" strdate "\'")))
    (string-to-number (remove-newline (shell-command-to-string cmd)))))
    

(defun next (strdate n) ;; 5 for friday  ;; almost copied from my javascript library
  (let ((diff (- n (day-of-week strdate))))
    (dadd strdate (if (< diff 0) (+ diff 7) diff))))

(defun previous (strdate n) ;; 5 for friday  
  (let ((diff (- n (day-of-week strdate))))
    (dadd strdate (if (> diff 0) (- diff 7) (- diff)))))

(defun today ()
  (format-time-string "%Y-%m-%d"))

;;(defun today ()   "2015-12-13") ;;for debugging

(defun previous-friday (strdate) ;; 5 for friday  
  (previous strdate 5))
(defun previous-tuesday (strdate) 
  (previous strdate 2))

(defun next-friday (strdate) ;; 5 for friday  
  (next strdate 5))
(defun next-tuesday (strdate) ;; 2 for tuesday 
  (next strdate 2))

(defun which-friday ()
  (let* ((this-fri (previous-friday (today))) ;;      ((this-fri (previous-friday "2015-11-20"))
	 (intrvl (get-tamil-month-period))
	 (strt (next-friday (first intrvl)))
	 (end (previous-friday (second intrvl)))
	 (nth-fri  (+ 1 (/ (ddiff this-fri strt) 7)))
	 (total (+ 1 (/ (ddiff end strt) 7))))
    (if (= total nth-fri) 0 nth-fri)
    ))

(defun tamil-ordinal (n)
  (nth n '("கடை" "முதலாம்" "இரண்டாம்" "மூன்றாம்" "நான்காம்")))

(defun fri-gen-month-and-count ()
  (concat (get-tamil-month) " " (tamil-ordinal (which-friday))))




(defun which-tuesday ()
  (let* ((this-tue (previous-tuesday (today)))
	 (intrvl (get-tamil-month-period))
	 (strt (next-tuesday (first intrvl)))
	 (end (previous-tuesday (second intrvl))))
    (+ 1 (/ (ddiff this-tue strt) 7))))

    
	  
	


(defun is-today-friday ()
  (string-equal (format-time-string "%A") "Friday"))
(defun friday-occured-when ()
  (if (is-today-friday) "நேற்று" "நேற்றுமுன்தினம்"))
(defun friday-command-gen (place-kovil)
  (concat "genKovilNews '" (fri-gen-month-and-count)  " வெள்ளி' " (friday-occured-when) " " place-kovil))
(defun friday-command-exec (place-kovil)
  (shell-command-to-string (friday-command-gen place-kovil)))
(defun friday-news-insert (place-kovil)
  (insert (friday-command-exec place-kovil)))

(defun is-pradosham ()
  (let ((today (format-time-string "%d/%m/%Y")))
    (member today pradosham-dates)))
(defun pradosham-occured-when ()
  (if (is-pradosham) "நேற்று" "நேற்றுமுன்தினம்"))
(defun pradosham-command-gen (place-kovil)
  (concat "genKovilNews பிரதோஷம் " (pradosham-occured-when) " " place-kovil))
(defun pradosham-command-exec (place-kovil)
  (shell-command-to-string (pradosham-command-gen place-kovil)))
(defun pradosham-news-insert (place-kovil)
  (insert (pradosham-command-exec place-kovil)))


(defun is-sankataharasathurthi ()
  (let ((today (format-time-string "%d/%m/%Y")))
    (member today sankataharasathurthi-dates)))

(defun sankataharasathurthi-occured-when ()
  (if (is-sankataharasathurthi) "நேற்று" "நேற்றுமுன்தினம்"))
(defun sankataharasathurthi-command-gen (place-kovil)
  (concat "genKovilNews சங்கடஹரசதுர்த்தி " (sankataharasathurthi-occured-when) " " place-kovil))
(defun sankataharasathurthi-command-exec (place-kovil)
  (shell-command-to-string (sankataharasathurthi-command-gen place-kovil)))
(defun sankataharasathurthi-news-insert (place-kovil)
  (insert (sankataharasathurthi-command-exec place-kovil)))


(defun is-egadasi ()
  (let ((today (format-time-string "%d/%m/%Y")))
    (member today egadasi-dates)))
(defun egadasi-occured-when ()
  (if (is-egadasi) "நேற்று" "நேற்றுமுன்தினம்"))
(defun egadasi-command-gen (place-kovil)
  (concat "genKovilNews ஏகாதசி " (egadasi-occured-when) " " place-kovil))
(defun egadasi-command-exec (place-kovil)
  (shell-command-to-string (egadasi-command-gen place-kovil)))
(defun egadasi-news-insert (place-kovil)
  (insert (egadasi-command-exec place-kovil)))




(defun insert-template-sankataharasathurthi-dharmakulam-sakthivinayagar ()
  (interactive)
  (sankataharasathurthi-news-insert "தருமகுளம் ஸ்ரீசக்திவிநாயகர்"))
(defun insert-template-sankataharasathurthi-melaiyur-kankoduthavinayagar ()
  (interactive)
    (sankataharasathurthi-news-insert "மேலையூர் கண்கொடுத்தவிநாயகர்"))

(defun insert-template-friday-kuranguputhur-kathayiamman ()
  (interactive)
  (friday-news-insert "குரங்குப்புத்தூர் 'ஸ்ரீகாத்தாயி அம்மன்'"))
(defun insert-template-friday-keezhaperumpallam-srimahakaliyamman ()
  (interactive)
  (friday-news-insert "கீழப்பெரும்பள்ளம் ஸ்ரீமகாகாளியம்மன்"))
(defun insert-template-friday-vangiri-seethalamariyamman ()
  (interactive)
  (friday-news-insert "வானகிரி சீதாளமாரியம்மன்"))
(defun insert-template-friday-dharmakulam-sridurgaparameswari ()
  (interactive)
  (friday-news-insert "தருமகுளம் ஸ்ரீதுர்க்காபரமேஸ்வரி"))
(defun insert-template-friday-neydhavasal-srikannigaparameswari ()
  (interactive)
  (friday-news-insert "நெய்தவாசல் ஸ்ரீகன்னிகாபரமேஸ்வரி"))
(defun insert-template-friday-poombuhar-rathinapoorneswari ()
  (interactive)
    (friday-news-insert "பூம்புகார் 'ஸ்ரீரத்தினபூர்ணேஸ்வரி அம்மன்'"))


(defun insert-template-pradosham-pallavanam-pallavaneeswaran ()
  (interactive)
  (pradosham-news-insert "பல்லவனம் பல்லவனீஸ்வரன்"))
(defun insert-template-pradosham-melaperumpallam-valamburanathar ()
  (interactive)
    (pradosham-news-insert "மேலப்பெரும்பள்ளம் வலம்புரநாதர்"))
(defun insert-template-pradosham-sayavanam-sayavaneswarar ()
  (interactive)
    (pradosham-news-insert "சாயாவனம் சாயாவனேஸ்வரர்"))
(defun insert-template-pradosham-keezhaperumpallam-naganathaswamy ()
  (interactive)
    (pradosham-news-insert "கீழப்பெரும்பள்ளம் நாகநாதஸ்வாமி"))
(defun insert-template-pradosham-dharmakulam-manmatheswarar ()
  (interactive)
    (pradosham-news-insert "தருமகுளம் மன்மதேஸ்வரர்"))


(defun insert-template-egadasi ()
  (interactive)
  (egadasi-news-insert "தருமகுளம் \'ஸ்ரீராஜநாராயண பெருமாள்\'"))


;;use this following example to elaborate
(defun say-word (word)
  (interactive (list
                (read-string (format "word (%s): " (thing-at-point 'word))
                             nil nil (thing-at-point 'word))))
  (message "The word is %s" word))

(setq sk-news-avoid
        '(
  	"கோவில்"
  	"கோவிலில்"
  	"கோவிலுக்கு"
  	"கோவிலை"
  	"பூம்புகார் கல்லூரி"
  	"பூம்புகார் கல்லூரியில்"
  	"விலையில்லா"
	"தருமபுரம்"
  	))
  (setq sk-news-avoid-regexp (regexp-opt sk-news-avoid 'words))
(setq sk-news-avoid nil)

(setq sk-news-important
        '(
	  "சித்திரை"
	  "வைகாசி"
	  "ஆனி"
	  "ஆடி"
	  "ஆவணி"
	  "புரட்டாசி"
	  "ஐப்பசி"
	  "கார்த்திகை"
	  "மார்கழி"
	  "தை"
	  "மாசி"
	  "பங்குனி"
	  "முதல் வெள்ளியை"
	  "இரண்டாம் வெள்ளியை"
	  "மூன்றாம் வெள்ளியை"
	  "நான்காம் வெள்ளியை"
	  "கடை வெள்ளியை"
	  "நேற்று"
	  "நேற்றுமுன்தினம்"
	  "நேற்று முன்தினம்"
  	))
  (setq sk-news-important-regexp (regexp-opt sk-news-important 'words))

(setq sk-news-important nil)


(make-face 'face-boxed3 "Face-Boxed")
(set-face-attribute 'face-boxed3 nil 
		    :foreground "White"
		    :background "Purple"
		    :height 210
		    :font "Droid Sans Tamil"
		    )
(setq font-lock-heading3-katturai-face 'face-boxed3)





(setq saravanakumarKeywords
      `((,news-places-regexp . font-lock-places-face)
	(,news-deities-regexp . font-lock-deities-face)
	(,news-persons-regexp . font-lock-variable-name-face)
	(,news-posts-regexp . font-lock-posts-face)
	(,news-functions-regexp . font-lock-function-name-face)
	(,news-unimportant-regexp . font-lock-unimportant-face)

	(,sk-news-avoid-regexp . font-lock-warning-face)
	(,sk-news-important-regexp . font-lock-heading3-katturai-face)

	))





(eval-after-load "tamil_grammar_knowledge"
  '(progn
     (setq tml-suffix-il-knowledge 
	(append '(
		  ("\\<பம\\'" . "பூம்புகாரில்")
		  ("\\<பமச\\'" . "பூம்புகார் மேலையூர் சீனிவாசா மேல்நிலைப்பள்ளியில்")
		  ("\\<எம்\\'" . "எம்.எஸ்.சுவாமிநாதன் ஆராய்ச்சி நிறுவனத்தில்")		  
		 )
		tml-suffix-il-knowledge))
     (setq tml-ir-knowledge 
	(append '(
		  ("\\<ூ\\'" . "ஊராட்சி மன்ற தலைவர்")
		  ("\\<ா\\'" . "ஆசிரியர்")
		  ("\\<பச\\'" . "பள்ளியின் செயலர்")
		  ("\\<மம\\'" . "முதல்வர் முனைவர்")
		  ("\\<கமம\\'" . "கல்லூரி முதல்வர் முனைவர்")

		  
		 )
		tml-ir-knowledge))


          (setq tml-mey-periya-La-knowledge
	(append '(
		  ("\\<்\\'" . "அருகேயுள்ள")  
		  
		 )
		tml-mey-periya-La-knowledge))


     (setq tml-same-suit-or-pause-knowledge 
	   (append '(

		     ("^வ$" . "வானகிரி,") ;  the last comma would be eaten by ...

		     ("^மம$" . "மணிக்கிராமம்,") ;  the last comma would be eaten by ...
		     ("^த$" . "தருமகுளம்,") ;  the last comma would be eaten by ...
		     ("^மே$" . "மேலையூர்,") ;  the last comma would be eaten by ...
		     ("^க$" . "கீழப்பெரும்பள்ளம்,") ;  the last comma would be eaten by ...
		     ("^ம$" . "மேலப்பெரும்பள்ளம்,") ;  the last comma would be eaten by ...
		     ("^ே$" . "மேலும்,") ;  the last comma would be eaten by ...
		     ("^ச$" . "செய்தும்,") ;  the last comma would be eaten by ...
		     ("^ந$" . "நெய்தவாசல்,") ;  the last comma would be eaten by ...
		     )
		   tml-same-suit-or-pause-knowledge))

))
     

(define-key-after
  global-map
  [menu-bar saravanakumar-menu]
  (cons "தினகரன்" (make-sparse-keymap "hoot hoot"))
  'tools)



(define-key
  global-map
  [menu-bar saravanakumar-menu pl]
  '("Previous Line" . previous-line))

(define-key
  global-map
  [menu-bar saravanakumar-menu sankataharasathurthi]
  (cons "சங்கடஹரசதுர்த்தி" (make-sparse-keymap ""))
  )

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman]
  (cons "வெள்ளி" (make-sparse-keymap ""))
  )

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham]
  (cons "பிரதோஷம்" (make-sparse-keymap ""))
  )


(define-key
  global-map
  [menu-bar saravanakumar-menu sankataharasathurthi sakthivinayagar]
  '("தருமகுளம் சக்திவிநாயகர்" . insert-template-sankataharasathurthi-dharmakulam-sakthivinayagar))

(define-key
  global-map
  [menu-bar saravanakumar-menu sankataharasathurthi kankoduthavinayagar]
  '("மேலையூர் கண்கொடுத்தவிநாயகர்" . insert-template-sankataharasathurthi-melaiyur-kankoduthavinayagar))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman kathayi]
  '("குரங்குப்புத்தூர் ஸ்ரீகாத்தாயி அம்மன்" . insert-template-friday-kuranguputhur-kathayiamman))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman mahakali]
  '("கீழப்பெரும்பள்ளம் ஸ்ரீமகாகாளியம்மன்" . insert-template-friday-keezhaperumpallam-srimahakaliyamman))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman seethalamariyamman]
  '("வானகிரி சீதாளமாரியம்மன்" . insert-template-friday-vangiri-seethalamariyamman))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman rathinapoorneswari]
  '("பூம்புகார் ஸ்ரீரத்தினபூர்ணேஸ்வரி அம்மன்" . insert-template-friday-poombuhar-rathinapoorneswari))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman durgaparameswari]
  '("தருமகுளம் ஸ்ரீதுர்க்காபரமேஸ்வரி" . insert-template-friday-dharmakulam-sridurgaparameswari))

(define-key
  global-map
  [menu-bar saravanakumar-menu friday-amman kannigaparameswari]
  '("நெய்தவாசல் ஸ்ரீகன்னிகாபரமேஸ்வரி" . insert-template-friday-neydhavasal-srikannigaparameswari))

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham pallavaneeswaran]
  '("பல்லவனம் பல்லவனீஸ்வரன்" . insert-template-pradosham-pallavanam-pallavaneeswaran))

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham valamburanathar]
  '("மேலப்பெரும்பள்ளம் வலம்புரநாதர்" . insert-template-pradosham-melaperumpallam-valamburanathar))

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham sayavaneswarar]
  '("சாயாவனம் சாயாவனேஸ்வரர்" . insert-template-pradosham-sayavanam-sayavaneswarar))

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham naganathaswamy]
  '("கீழப்பெரும்பள்ளம் நாகநாதஸ்வாமி" . insert-template-pradosham-keezhaperumpallam-naganathaswamy))

(define-key
  global-map
  [menu-bar saravanakumar-menu pradosham manmatheswarar]
  '("தருமகுளம் மன்மதேஸ்வரர்" . insert-template-pradosham-dharmakulam-manmatheswarar))

(define-key
  global-map
  [menu-bar saravanakumar-menu egadasi]
  '("ஏகாதசி" . insert-template-egadasi))


(define-key
  global-map [menu-bar saravanakumar-menu case-fold-search]
  (menu-bar-make-toggle toggle-case-fold-search case-fold-search
			"Ignore case"
			"Case inse Search %s"
			"Ignore letter-வார்த்தைதென்றல்"))
