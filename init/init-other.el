;; recentf mode
(require 'recentf)
(recentf-mode 1)

;; whitespace mode
(require 'whitespace)
;; (global-whitespace-mode t)

;; hideshow
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

;; paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook
	  (lambda () (paredit-mode +1)))

;; backup files
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t
      kept-new-versions 6
      kept-old-versions 2)

;; text mode
(add-hook 'text-mode-hook 'auto-fill-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq column-number-mode t)

;; Idle highlight mode
(require 'idle-highlight-mode)
(add-hook 'c-mode-common-hook   (lambda () (idle-highlight-mode t)))
(add-hook 'emacs-lisp-mode-hook (lambda () (idle-highlight-mode t)))
(add-hook 'java-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'lisp-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'perl-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'sh-mode-hook         (lambda () (idle-highlight-mode t)))

;; markdown
(autoload 'markdown-mode "markdown-mode.el" "major mode for markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdt$" . markdown-mode))

(provide 'init-other)