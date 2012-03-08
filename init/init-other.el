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

(provide 'init-other)