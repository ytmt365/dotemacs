;; 必要なパッケージのロード
(require 'go-mode)
(require 'company)
(require 'company-go)

(setenv "GOROOT" "/usr/local/Cellar/go/1.14.2_1/libexec")
(setenv "GOPATH" (concat (getenv "HOME") "/.go"))

;; Goのパスを通す
(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin/"))

;; go get で入れたツールのパスを通す
(add-to-list 'exec-path (expand-file-name "/Users/yutaro/.go/bin"))

;; 諸々の有効化、設定
(add-hook 'go-mode-hook 'company-mode)
(add-hook 'go-mode-hook 'flycheck-mode)
(add-hook 'go-mode-hook (lambda()
			  (add-hook 'before-save-hook' 'gofmt-before-save)
			  (local-set-key (kbd "M-.") 'godef-jump)
			  (set (make-local-variable 'company-backends) '(company-go))
			  (company-mode)
			  (setq indent-tabs-mode nil)    ; タブを利用
			  (setq c-basic-offset 4)        ; tabサイズを4にする
			  (setq tab-width 4)))
