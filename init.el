;; -*-no-byte-compile: t; -*-

;;;###autoload
(progn

  ;; Turn off unused GUI elements
  (dolist (mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
    (when (fboundp mode) (funcall mode -1)))

  ;; Initialize the load path
  (setq
   dotfiles-dir (file-name-directory
		 (or (buffer-file-name) load-file-name))
   site-lisp-dir (expand-file-name "site-lisp" dotfiles-dir)
   init-dir (expand-file-name "init" dotfiles-dir))

  (add-to-list 'load-path dotfiles-dir)
  (add-to-list 'load-path init-dir)
  (add-to-list 'load-path site-lisp-dir)

  ;; Add external projects to load path
  (dolist (project (directory-files site-lisp-dir t "\\w+"))
    (when (file-directory-p project)
      (add-to-list 'load-path project)))

  ;; Some handy global modes
  (progn
    (winner-mode 1)
    (show-paren-mode 1)
    (global-linum-mode 1)
    (global-hl-line-mode)
    (global-auto-revert-mode))

  (add-hook 'before-save-hook 'delete-trailing-whitespace)

  ;; Nuke tabs
  (setq indent-tabs-mode nil)

  (defalias 'yes-or-no-p 'y-or-n-p))

;; Start loading init files

(require 'init-defuns)
(require 'init-bindings)

(require 'init-gui)
(require 'init-ido)
(require 'init-git)
(require 'init-themes)
(require 'init-yasnippet)

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

(require 'cl)
(require 'uniquify)

;; require custom things
(load "custom")
