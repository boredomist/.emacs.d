;; -*-no-byte-compile: t; -*-

;;;###autoload
(progn

  ;; Turn off unused GUI elements
  (dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
    (when (fboundp mode) (funcall mode -1)))

  ;; Initialize the load path
  (add-to-list 'load-path (expand-file-name "~/.emacs.d"))
  (add-to-list 'load-path (expand-file-name "~/.emacs.d/init"))
  (add-to-list 'load-path (expand-file-name "~/.emacs.d/site-lisp"))

  ;; Some handy global modes
  (progn
    (winner-mode 1)
    (show-paren-mode 1)
    (global-linum-mode 1)
    (global-hl-line-mode)
    (global-auto-revert-mode))

  (add-hook 'prog-hook 'hs-minor-mode)
  (add-hook 'prog-hook 'whitespace-mode)

  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; Nuke tabs
  (setq indent-tabs-mode nil)

  (defalias 'yes-or-no-p 'y-or-n-p)

  ;; Smex M-x magic
  (eval-after-load "smex"
    '(progn
       (setq smex-save-file "~/.emacs.d/.smex-items")
       (global-set-key (kbd "M-x") 'smex)
       (global-set-key (kbd "M-X") 'smex-major-mode-commands))))

;; Start loading init files

(require 'init-defuns)
(require 'init-bindings)

(require 'init-gui)
(require 'init-ido)
(require 'init-git)
(require 'init-themes)

;; language specific settings
(require 'init-c)
(require 'init-lua)
(require 'init-vala)
(require 'init-flymake)

;; Other init things
(require 'init-other)

;; Start a server if none is running
(require 'server)
(unless (server-running-p)
  (server-start))

;; require custom things
(load "custom")
