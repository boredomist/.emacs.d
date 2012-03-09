(defconst boredomist-c-style
  '((c-basic-offset             . 2)
    (c-tab-always-indent        . t)
    (c-comment-only-line-offset . 2)
    (c-hanging-braces-alist     . ((defun-open)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ())
    (c-cleanup-list             . (space-before-funcall
                                   brace-elseif-brace))
    (c-offsets-alist            . ())
    (c-echo-syntactic-information-p . t))
  "boreodmist's C Programming Style")

(c-add-style "boredomist" boredomist-c-style)


(defun my-c-mode-hook ()
  (c-set-style "boredomist")
  (setq indent-tabs-mode nil))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(provide 'init-c)
