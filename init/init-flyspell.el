(dolist (hook '(c-mode-hook
                lisp-mode-hook
                emacs-lisp-mode-hook
                ruby-mode-hook
                python-mode-hook
                shell-mode-hook
                php-mode-hook
                css-mode-hook
                javascript-mode-hook))
  (add-hook hook 'flyspell-prog-mode))

(provide 'init-flyspell.el)
