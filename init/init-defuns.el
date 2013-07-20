;; try to bring color-theme back to a sane state
(defun color-theme-undo ()
  (interactive)
  (color-theme-reset-faces)
  (color-theme-standard))

(defun untabify-buffer ()
  (interactive)
  (untabify (point-min) (point-max)))

(defun indent-buffer ()
  (interactive)
  (indent-region (point-min) (point-max)))

(defun cleanup-buffer ()
  "Perform a bunch of operations on the whitespace content of a buffer."
  (interactive)
  (indent-buffer)
  (untabify-buffer)
  (delete-trailing-whitespace))

(defun pretty-lambdas ()
  (font-lock-add-keywords
   nil `(("(?\\(lambda\\>\\)"
          (0 (progn (compose-region (match-beginning 1) (match-end 1)
                                    ,(make-char 'greek-iso8859-7 107))
                    nil))))))

(defun lorem ()
  "Insert a lorem ipsum."
  (interactive)
  (insert "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do "
          "eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim"
          "ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut "
          "aliquip ex ea commodo consequat. Duis aute irure dolor in "
          "reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla "
          "pariatur. Excepteur sint occaecat cupidatat non proident, sunt in "
          "culpa qui officia deserunt mollit anim id est laborum."))

(defun reload-site-lisp ()
  "Reload the site-lisp directory."
  (interactive)
  (dolist (project (directory-files site-lisp-dir t "\\w+"))
    (when (file-directory-p project)
      (add-to-list 'load-path project))))

(defun show-popup (title msg &optional icon)
  "Show a popup using notify-send"
  (interactive)
  (if icon
      (start-process "show-popup" nil
                     "notify-send"
                     title msg
                     "-i" icon)

      (start-process "show-popup" nil
                     "notify-send"
                     title msg)))

(defun toggle-fullscreen ()
  "toggles whether the currently selected frame consumes the entire display or
is decorated with a window border"
  (interactive)
  (let ((f (selected-frame)))
    (modify-frame-parameters
     f `((fullscreen . ,(if (eq nil (frame-parameter f 'fullscreen))
                            'fullboth nil))))))


(provide 'init-defuns)
