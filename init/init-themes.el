;; initialize color themes and such

(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-6.5.5/")

(require 'color-theme)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(dolist (theme (directory-files (expand-file-name "~/.emacs.d/themes/") t "\\w+"))
 (when (file-directory-p theme)
   (add-to-list 'custom-theme-load-path theme)))

(provide 'init-themes)
