;; Emacs GUIのフォント設定
;; 参考 https://gist.github.com/mitukiii/4365568
(if window-system
    (progn
      ;; Monaco 12pt をデフォルトにする
      (set-face-attribute 'default nil
			  :family "Monaco"
			  :height 125)
      ;; 日本語をヒラギノ角ゴProNにする
      (set-fontset-font "fontset-default"
			'japanese-jisx0208
			'("Hiragino Maru Gothic ProN"))
      ;; 半角カナをヒラギノ角ゴProNにする
      (set-fontset-font "fontset-default"
			'katakana-jisx0201
			)))
