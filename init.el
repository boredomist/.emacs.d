(require 'package)

(add-to-list 'load-path
             (expand-file-name "~/.emacs.d/vendor"))

(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(unless (package-installed-p 'quelpa)
  (with-temp-buffer
    (url-insert-file-contents "https://framagit.org/steckerhalter/quelpa/raw/master/bootstrap.el")
    (eval-buffer)
    (quelpa-self-upgrade)))

(require 'quelpa)
;; Updating quelpa at startup takes FOREVER.
;; (setq-default quelpa-checkout-melpa-p nil)

(quelpa
 '(quelpa-use-package
   :fetcher git
   :url "https://github.com/quelpa/quelpa-use-package.git"))

(require 'quelpa-use-package)

(require 'use-package)
(setq use-package-always-ensure t)

(use-package evil
  :ensure t

  :init
  (setq evil-split-window-below t
        evil-vsplit-window-right t
        ;; bind Y to y$
        evil-want-Y-yank-to-eol t

        ;; NOTE: Temporary, let's see if this is nice.
        evil-insert-state-cursor '(bar "White")
        evil-normal-state-cursor '(box "White")
        evil-visual-state-cursor '(box "#F86155"))

  :config
  (evil-mode)

  ;; Ergonomic bindings
  (define-key evil-normal-state-map (kbd "C-w C-h") 'evil-window-left)
  (define-key evil-normal-state-map (kbd "C-w C-j") 'evil-window-down)
  (define-key evil-normal-state-map (kbd "C-w C-k") 'evil-window-up)
  (define-key evil-normal-state-map (kbd "C-w C-l") 'evil-window-right)

  ;; Winner-mode ish bindings.
  (global-set-key (kbd "S-<left>") 'evil-window-left)
  (global-set-key (kbd "S-<down>") 'evil-window-down)
  (global-set-key (kbd "S-<up>") 'evil-window-up)
  (global-set-key (kbd "S-<right>") 'evil-window-right))

(use-package magit
  :ensure t

  :config
  (global-set-key (kbd "C-x g") 'magit-status))

(use-package haskell-mode
  :ensure hindent

  :init
  (defun erik/haskell-mode-hook ()
   (progn
    (subword-mode +1)
    (eldoc-mode +1)
    (haskell-indentation-mode +1)
    (haskell-doc-mode +1)))

  :config
  (add-hook 'haskell-mode-hook 'erik/haskell-mode-hook))

(use-package ido
  :ensure ido-completing-read+

  :init
  (setq ido-enable-prefix nil
        ido-enable-flex-matching t
        ido-create-new-buffer 'always)

  :config
  (ido-mode t)
  (ido-everywhere t)
  (require 'ido-completing-read+)
  (ido-ubiquitous-mode 1))

(use-package smex
  :ensure t

  :config
  (smex-initialize)
  (global-set-key (kbd "M-x") 'smex)
  (global-set-key (kbd "M-X") 'smex-major-mode-commands))

(use-package winner
  :ensure t

  :config
  (winner-mode +1))

(use-package projectile
  :ensure ag

  :config
  (projectile-mode)
  (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map))



(use-package markdown-mode
  :ensure t)

(use-package elm-mode
  :ensure t

  :config
  (add-hook 'elm-mode-hook 'subword-mode))

(use-package smartparens
  :ensure t

  :config
  (require 'smartparens-config)
  (smartparens-global-mode)
  (sp-use-paredit-bindings))

(use-package color-theme-sanityinc-tomorrow
  :ensure t)

(use-package js2-mode
  :ensure t

  :config
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  (setq js2-basic-offset 2))

(use-package rust-mode
  :ensure t)

(use-package go-mode
  :ensure go-guru

  :config
  (add-hook 'before-save-hook #'gofmt-before-save)
  (add-hook 'go-mode-hook #'go-guru-hl-identifier-mode))


(use-package flycheck
  :ensure flycheck-rust
  :quelpa t

  :config
  (flycheck-define-checker sql-squabble
    "A SQL syntax checker using the squabble tool.
See URL `https://github.com/erik/squabble'."
    :command ("squabble" "--reporter=sqlint" "--preset=full")
    :standard-input t
    :error-patterns
    ((warning line-start "stdin:" line ":" column ":WARNING "
              (message (one-or-more not-newline)
                       (zero-or-more "\n"))
              line-end)
     (error line-start "stdin:" line ":" column ":ERROR "
            (message (one-or-more not-newline)
                     (zero-or-more "\n"))
            line-end))
    :modes (sql-mode))

  (add-to-list 'flycheck-checkers 'sql-squabble)
  (flycheck-add-next-checker 'python-flake8 'python-mypy t))


(use-package flycheck-rust
  :ensure t
  :quelpa t

  :init
  (with-eval-after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(use-package nord-theme
  :ensure t)

(use-package typescript-mode
  :ensure t)

(use-package pyvenv
  :ensure t)

;; Custom things
;; TODO: Split these out

(require 'better-defaults)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

(setq
  make-backup-files nil
  inhibit-startup-screen t
  inhibit-startup-echo-area-message t

  ;; Scroll view by lines, not pages.
  scroll-conservatively 1000)

(column-number-mode +1)

;; Typing "yes" is too many characters, switch to "y"
(defalias 'yes-or-no-p 'y-or-n-p)

;; I always accidentally C-x C-c somehow...
(setq confirm-kill-emacs 'yes-or-no-p)

;; mu4e is special and installs itself from outside of melpa
;;
;; (add-to-list 'load-path "/usr/share/emacs/site-lisp/mu4e")
;;
;; (when (require 'mu4e nil t)
;;   (setq mu4e-maildir "~/mail"))

;; cleanup whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(defun erik/font-lock-comments ()
  "Add highlighting for TODO, FIXME, etc."
  (font-lock-add-keywords
   nil '(("\\<\\(FIX\\(ME\\)?\\|TODO\\|HACK\\|XXX\\|NOTE\\):"
          1 font-lock-warning-face t))))

(add-hook 'prog-mode-hook 'erik/font-lock-comments)
