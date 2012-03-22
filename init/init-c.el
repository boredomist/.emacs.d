(require 'flymake)

(defconst boredomist-c-style
  '((c-basic-offset             . 2)
    (c-tab-always-indent        . t)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist     . ((defun-open)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ())
    (c-cleanup-list             . (space-before-funcall
                                   brace-elseif-brace))
    (c-offsets-alist            . ())
    (c-echo-syntactic-information-p . t))
  "boredomist's C Programming Style")

(c-add-style "boredomist" boredomist-c-style)

(defun my-c-mode-hook ()
  (flymake-mode t)
  (c-set-style "boredomist")
  (setq indent-tabs-mode nil))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(provide 'init-c)
