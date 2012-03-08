(defun my-c-mode-hook ()
  (c-set-style "k&r")

  (setq
   c-basic-indent 2
   tab-width 4
   indent-tabs-mode nil))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(provide 'init-c)
