;; initialize color themes and such
;; only use color theme on emacs < 24
(when (< emacs-major-version 24)
  (require 'color-theme)

  (eval-after-load "color-theme"
    '(progn
       (color-theme-initialize)))

  (require 'load-directory)
  (load-directory "~/.emacs.d/themes")

  (setq color-theme-is-global t))

(provide 'init-themes)
