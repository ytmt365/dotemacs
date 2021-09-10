;; package install
(require 'package)
;; (add-to-list 'package-archives '("melpa". "http://melpa.milkbox.net/packages/") t)
;; (add-to-list 'package-archives '("marmalade". "http://marmalade-repo.org/packages/"))
;; (setq package-archives
;; '(("melpa" . "https://melpa.org/packages/")
;; ("melpa-stable" . "https://stable.melpa.org/packages/")
;; ("org" . "https://orgmode.org/elpa/")
;; ("gnu" . "https://elpa.gnu.org/packages/")))

;; HTTPS repo
;; (add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; (add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; (add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/") t)

;; HTTP repo
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives '("ELPA" . "http://tromey.com/elpa/") t)

;; marmalade
;; (add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; (package-initialize)
