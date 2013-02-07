;; -*-no-byte-compile: t; -*-

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

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(dolist (theme (directory-files (expand-file-name "~/.emacs.d/themes/") t "\\w+"))
  (when (file-directory-p theme)
    (add-to-list 'custom-theme-load-path theme)))

;; Some handy global modes
(progn
  (winner-mode 1)
  (show-paren-mode 1)
  (global-linum-mode 1)
  (global-auto-revert-mode)
  (setq-default indent-tabs-mode nil))

;; Remove some annoying prompts
(dolist (func '(downcase-region upcase-region narrow-to-region
                                eval-expression set-goal-column))
  (put func 'disabled nil))

;; Start loading init files

(require 'init-defuns)
(require 'init-bindings)

(require 'init-gui)
(require 'init-ido)
(require 'init-git)
(require 'init-themes)
(require 'init-erc)
(require 'init-mail)

;; language specific settings
(require 'init-c)
(require 'init-lua)
(require 'init-vala)
(require 'init-ocaml)
(require 'init-flymake)

;; Other init things
(require 'init-other)

;; Start a server if none is running
(require 'server)
(unless (server-running-p)
  (server-start))

(require 'cl)
(require 'uniquify)

;; for things set by emacs
(setq custom-file "~/.emacs.d/customizations.el")
(when (file-exists-p custom-file)
    (load "customizations"))

;; require custom things
(load "custom")
