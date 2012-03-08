;; initialize color themes and such

(require 'color-theme)

(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)))

(require 'load-directory)
(load-directory "~/.emacs.d/themes")

(setq color-theme-is-global t)

(provide 'init-themes)
