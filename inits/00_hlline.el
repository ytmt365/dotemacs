;;; 現行行を目立たせる
(if window-system ;; GUIの場合
    (progn
      ;; ついでに文字サイズ指定
      (add-to-list 'default-frame-alist '(font . "fontset-13.5"))
      (defface hlline-face
	'((((class color)
	    (background dark))
	   (:background "dark slate gray"))
	  (((class color)
	    (background light))
	   (:background "#aaffaa"))
	  (t
	   ()))
	"*Face used by hl-line.")
      )
  (progn ;; CUIの場合
    (defface hlline-face
      '((((class color)
	  (background dark))
	 (:background "dark slate gray"))
	(((class color)
	  (background light))
	 (:background "#006400"))
	(t
	 ()))
      "*Face used by hl-line.")
    ))
(setq hl-line-face 'hlline-face)
(global-hl-line-mode)
