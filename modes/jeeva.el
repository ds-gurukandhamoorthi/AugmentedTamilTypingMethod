(load "newscommon")

(setq jeeva-news-avoid
      '(

	"கோயில்"
	"கோயிலில்"
	"கோயிலுக்கு"
	"கோயிலை"
	"பூம்புகார் கல்லூரி"
	"பூம்புகார் கல்லூரியில்"
	"இன்று"
	"நேற்று"
	"நேற்றுமுன்தினம்"
	"நேற்று முன்தினம்"
	"முன்தினம்"
	))
(setq jeeva-news-avoid-regexp (regexp-opt jeeva-news-avoid 'words))


(setq jeevaKeywords
      `((,news-places-regexp . font-lock-places-face)
	(,news-deities-regexp . font-lock-deities-face)
	(,news-persons-regexp . font-lock-variable-name-face)
	(,news-posts-regexp . font-lock-posts-face)
	(,news-functions-regexp . font-lock-function-name-face)
	(,news-unimportant-regexp . font-lock-unimportant-face)

	(,jeeva-news-avoid-regexp . font-lock-warning-face)

	))
