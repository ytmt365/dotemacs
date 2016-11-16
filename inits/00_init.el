;; C-zでundo
(define-key global-map "\C-z" 'undo)
;;; *.~ とかのバックアップファイルを作らない
(setq make-backup-files nil)
;;; .#* とかのバックアップファイルを作らない
(setq auto-save-default nil)
;;; 行番号を表示
(global-linum-mode t)
;;; Line mergine
(setq linum-format "%3d ")
;;; 対応するカッコを光らせる
(show-paren-mode 1)
;;; カーソル点滅の停止
(blink-cursor-mode 0)
;;; 行の先頭でC-kを一回押すだけで行全体を消去する
(setq kill-whole-line t)
;;; 全角スペース, 行末空白表示
;; (defadvice font-lock-mode (before my-font-lock-mode ())
;;   (font-lock-add-keywords
;;    major-mode
;;    '(("　" 0 my-face-b-1 append)
;;      ("[ \t]+$" 0 my-face-u-1 append)
;;      )))
;; (ad-enable-advice 'font-lock-mode 'before 'my-font-lock-mode)
;; (ad-activate 'font-lock-mode)
;; (defvar my-face-b-1 'my-face-b-1)
;; (defvar my-face-u-1 'my-face-u-1)
;;; 全角スペース
;; (defface my-face-b-1 '((t (:background "NavajoWhite4"))) nil)
;;; 行末空白
;; (defface my-face-u-1 '((t (:background "SteelBlue" :underline t))) nil)
;;; 置換 (対話型) query-replace
(global-set-key (kbd "C-c q") 'query-replace)
;;; 置換 (非対話型) replace-string
(global-set-key (kbd "C-c r") 'replace-string)
;; オープニングメッセージを表示しない
(setq inhibit-startup-message t)
;; yesとnoをyとnで
(defalias 'yes-or-no-p 'y-or-n-p)
;; 行末の半角スペースを消去
(global-set-key (kbd "C-c d") 'delete-trailing-whitespace)
;; コメントアウト
(global-set-key (kbd "C-c o") 'comment-or-uncomment-region)
;; カッコの自動挿入
(electric-pair-mode 1)

(setq-default show-trailing-whitespace t)
