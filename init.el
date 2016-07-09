;; load path
(setq load-path (cons "~/.emacs.d/elisp/" load-path))

;; init-loader
(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
