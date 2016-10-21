(load "newscommon")

(setq nak-news-avoid
      '(
	"nowordatpresent"	

	))
(setq nak-news-avoid-regexp (regexp-opt nak-news-avoid 'words))

(setq nak-news-heading
      '(
	"வந்த செய்தி"	
	"விசாரித்த உண்மை"
	"லோக்கல் சேனல்"
	))

(setq nak-news-heading-regexp (regexp-opt nak-news-heading 'words))


(setq nakeeranKeywords
      `((,news-places-regexp . font-lock-places-face)
	(,news-deities-regexp . font-lock-deities-face)
	(,news-functions-regexp . font-lock-function-name-face)
	(,news-persons-regexp . font-lock-constant-face)
	(,news-posts-regexp . font-lock-posts-face)
	(,nak-news-avoid-regexp . font-lock-warning-face)
	(,nak-news-heading-regexp . font-lock-heading-news-face)

	))



(eval-after-load "tamil_grammar_knowledge"
  '(progn
     (setq tml-suffix-um-knowledge 
	   (append '(
		     ("மு" . "முழுவதும்")
		     )
		   tml-suffix-um-knowledge))

     (setq tml-suzhi-ou-kuril-knowledge 
	   (append '(
		     ("\\<ோ\\'" . "ஓட்டு")
		     )
		   tml-suzhi-ou-kuril-knowledge))

     (setq tml-suffix-il-knowledge 
	   (append '(
		     ("\\<ந\\'" . "நிலையில்")
		     ("\\<ிந\\'" . "இந்த நிலையில்")
     		     ("\\<கு\\'" . "கும்பகோணத்தில்")

		     ("\\<நா\\'" . "நாகப்பட்டினத்தில்")
     		     ("\\<தி\\'" . "திருவாரூரில்")
		     ("\\<திவி\\'" . "திருவிடைமருதூரில்")

		     ("\\<ம\\'" . "மயிலாடுதுறையில்")
		     ("\\<மா\\'" . "மாவட்டத்தில்")
		     ("\\<மாவட்ட\\'" . "மாவட்டத்தில்")
		     ("\\<மாவட்டம்\\'" . "மாவட்டத்தில்")
		     
		     ("\\<தொ\\'" . "தொகுதியில்")

		     )
		   
		   tml-suffix-il-knowledge))

     (setq tml-suffix-kal-knowledge 
	   (append '(
		     ("\\<வி\\'" . "விவசாயிகள்")

		     )
		   
		   tml-suffix-kal-knowledge))

     
     (setq tml-suzhi-a-kuril-knowledge 
	   (append '(
		     ("\\<கு\\'" . "கும்பகோண")
		     ("\\<நா\\'" . "நாகப்பட்டின")
		     ("\\<வே\\'" . "வேதாரண்ய")
		     ("\\<கும்பகோண\\'" . "கும்பகோணம்")
		     ("\\<நாகப்பட்டின\\'" . "நாகப்பட்டினம்")
		     ("\\<வேதாரண்ய\\'" . "வேதாரண்யம்")
		     
		     ("\\<மு\\'" . "முழுவதும்")
		     ("\\<ே\\'" . "கேட்டோம்")
		     ("\\<வி\\'" . "விவசாய")
		     ("\\<மா\\'" . "மாவட்ட")

		     ("\\<மாவட்ட\\'" . "மாவட்டம்")
		     ("\\<திரு\\'" . "திருவாரூர் மாவட்ட")
		     
		     )
		   
		   tml-suzhi-a-kuril-knowledge))
     
     (setq tml-suzhi-ii-kuril-knowledge 
	   (append '(
		     ("\\<ொ\\'" . "தொகுதி")
		     
		     )
		   
		   tml-suzhi-ii-kuril-knowledge))
     



     
     (setq tml-ir-knowledge 
	   (append '(
		     ("\\<அ\\'" . "அமைச்சர்")
		     ("\\<ே\\'" . "வேட்பாளர்")
		     ("\\<ெ\\'" . "செயலாளர்")
		     ("\\<திரு\\'" . "திருவாரூர்")
		     ("\\<திவி\\'" . "திருவிடைமருதூர்")
		     ("\\<மீன்\\'" . "மீன்வளத்துறை அமைச்சர்")
		     ("\\<வரு\\'" . "வருகின்றனர்")
		     ("\\<ொ\\'" . "சொன்னார்")
		     ("\\<சொ\\'" . "சொல்லியிருக்கிறார்")
		     ("\\<வழ\\'" . "வழக்கறிஞர்")
		     
	     )
		   
	   tml-ir-knowledge))

     
  (setq tml-eol-knowledge 
	(append '(
		  ("^வ$" . "வந்த செய்தி :\n")
		  ("^வி$" . "விசாரித்த உண்மை :\n")
		  ("^ல$" . "லோக்கல் சேனல் :\n")

		 )
		tml-eol-knowledge))


))
     

