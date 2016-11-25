;; Emacs GUIのフォント設定
;; 参考 https://gist.github.com/mitukiii/4365568
(if window-system
    (progn
      ;; 日本語をヒラギノ角ゴProNにする
      (set-fontset-font "fontset-default"
			'japanese-jisx0208
			'("Hiragino Maru Gothic ProN"))
      ;; 半角カナをヒラギノ角ゴProNにする
      (set-fontset-font "fontset-default"
			'katakana-jisx0201
			)))
