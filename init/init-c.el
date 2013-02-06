(require 'flymake)

(defconst boredomist-c-style
  '("k&r"
    (c-basic-offset             . 2)
    (c-tab-always-indent        . t)
    (c-comment-only-line-offset . 0)
    (c-hanging-braces-alist     . ((defun-open)
                                   (brace-list-open)))
    (c-hanging-colons-alist     . ())
    (c-offsets-alist            . ())
    (c-echo-syntactic-information-p . t)
    (c-offsets-alist .
                     ((substatement-open . 0)
                      (inline-open . 0))))
  "boredomist's C Programming Style")

(c-add-style "boredomist" boredomist-c-style)

(defun my-c-mode-hook ()
  (c-set-style "boredomist")
  (setq indent-tabs-mode nil))

(add-hook 'c-mode-common-hook 'my-c-mode-hook)

(provide 'init-c)
