
(defun color-theme-inkpot ()
  "Color theme based on the Inkpot theme. Ported and tweaked by Per Vognsen."
  (interactive)
  (color-theme-install
   '(color-theme-inkpot
     ((foreground-color . "#cfbfad")
      (background-color . "#1e1e27")
      (border-color . "#3e3e5e")
      (cursor-color . "#404040")
      (background-mode . dark))
     (region ((t (:background "#404040"))))
     (highlight ((t (:background "#404040"))))
     (fringe ((t (:background "#16161b"))))
     (show-paren-match-face ((t (:background "#606060"))))
     (isearch ((t (:bold t :foreground "#303030" :background "#cd8b60"))))
     (modeline ((t (:bold t :foreground "#b9b9b9" :background "#3e3e5e"))))
     (modeline-inactive ((t (:foreground "#708090" :background "#3e3e5e"))))
     (modeline-buffer-id ((t (:bold t :foreground "#b9b9b9" :background "#3e3e5e"))))
     (minibuffer-prompt ((t (:bold t :foreground "#708090"))))
     (font-lock-builtin-face ((t (:foreground "#c080d0"))))
     (font-lock-comment-face ((t (:foreground "#708090")))) ; original inkpot: #cd8b00
     (font-lock-constant-face ((t (:foreground "#506dbd"))))
     (font-lock-doc-face ((t (:foreground "#cd8b00"))))
     (font-lock-function-name-face ((t (:foreground "#87cefa"))))
     (font-lock-keyword-face ((t (:bold t :foreground "#c080d0"))))
     (font-lock-preprocessor-face ((t (:foreground "309090"))))
     (font-lock-reference-face ((t (:bold t :foreground "#808bed"))))
     (font-lock-string-face ((t (:foreground "#ffcd8b" :background "#404040"))))
     (font-lock-type-face ((t (:foreground "#ff8bff"))))
     (font-lock-variable-name-face ((t nil)))
     (font-lock-warning-face ((t (:foreground "#ffffff" :background "#ff0000")))))))

(defun color-theme-gruber-darker ()
  "Gruber Darker color theme for Emacs by Jason Blevins.
A darker variant of the Gruber Dark theme for BBEdit
by John Gruber."
  (interactive)
  (color-theme-install
   '(color-theme-gruber-darker
     ((foreground-color . "#e4e4ef")
      (background-color . "#181818")
      (background-mode . dark)
      (cursor-color . "#ffdd33")
      (mouse-color . "#ffdd33"))

     ;; Standard font lock faces
     (default ((t (nil))))
     (font-lock-comment-face ((t (:foreground "#cc8c3c"))))
     (font-lock-comment-delimiter-face ((t (:foreground "#cc8c3c"))))
     (font-lock-doc-face ((t (:foreground "#73c936"))))
     (font-lock-doc-string-face ((t (:foreground "#73c936"))))
     (font-lock-string-face ((t (:foreground "#73c936"))))
     (font-lock-keyword-face ((t (:foreground "#ffdd33"))))
     (font-lock-builtin-face ((t (:foreground "#ffdd33"))))
     (font-lock-function-name-face ((t (:foreground "#96a6c8"))))
     (font-lock-variable-name-face ((t (:foreground "#f4f4ff"))))
     (font-lock-preprocessor-face ((t (:foreground "#95a99f"))))
     (font-lock-constant-face ((t (:foreground "#95a99f"))))
     (font-lock-type-face ((t (:foreground "#95a99f"))))
     (font-lock-warning-face ((t (:foreground "#f43841"))))
     (font-lock-reference-face ((t (:foreground "#95a99f"))))
     (trailing-whitespace ((t (:foreground "#000" :background "#f43841"))))
     (link ((t (:foreground "#96A6C8" :underline t))))

     ;; Search
     (isearch ((t (:foreground "#000" :background "#f5f5f5"))))
     (isearch-lazy-highlight-face ((t (:foreground "#f4f4ff" :background "#5f627f"))))
     (isearch-fail ((t (:foreground "#000" :background "#f43841"))))

     ;; User interface
     (fringe ((t (:background "#111" :foreground "#444"))))
     (border ((t (:background "#111" :foreground "#444"))))
     (mode-line ((t (:background "#453d41" :foreground "#fff"))))
     (mode-line-buffer-id ((t (:background "#453d41" :foreground "#fff"))))
     (mode-line-inactive ((t (:background "#453d41" :foreground "#999"))))
     (minibuffer-prompt ((t (:foreground "#96A6C8"))))
     (region ((t (:background "#484848"))))
     (secondary-selection ((t (:background "#484951" :foreground "#F4F4FF"))))
     (tooltip ((t (:background "#52494e" :foreground "#fff"))))

     ;; Parenthesis matching
     (show-paren-match-face ((t (:background "#52494e" :foreground "#f4f4ff"))))
     (show-paren-mismatch-face ((t (:foreground "#f4f4ff" :background "#c73c3f"))))
     ;; Line highlighting
     (highlight ((t (:background "#282828" :foreground nil))))
     (highlight-current-line-face ((t (:background "#282828" :foreground nil))))

     ;; Calendar
     (holiday-face ((t (:foreground "#f43841"))))

     ;; Info
     (info-xref ((t (:foreground "#96a6c8"))))
     (info-visited ((t (:foreground "#9e95c7"))))

     ;; AUCTeX
     (font-latex-sectioning-5-face ((t (:foreground "#96a6c8" :bold t))))
     (font-latex-bold-face ((t (:foreground "#95a99f" :bold t))))
     (font-latex-italic-face ((t (:foreground "#95a99f" :italic t))))
     (font-latex-math-face ((t (:foreground "#73c936"))))
     (font-latex-string-face ((t (:foreground "#73c936"))))
     (font-latex-warning-face ((t (:foreground "#f43841"))))
     (font-latex-slide-title-face ((t (:foreground "#96a6c8"))))
     )))

(defun color-theme-robin-hood ()
  (interactive)
  (color-theme-install
   '(color-theme-robin-hood
     (
      (foreground-color . "navajo white")
      (background-color . "#304020")
      )
     (
      (CUA-mode-read-only-cursor-color . "white")
      (help-highlight-face . "info-xref")
      (list-matching-lines-buffer-name-face . "bold")
      )
     (button  ((t (:bold t))))
     (calendar-today-face  ((t (:foreground "lemon chiffon"))))
     (custom-button-face  ((t (:bold t :foreground "DodgerBlue1" :weight bold))))
     (diary-face  ((t (:bold t :foreground "yellow" :weight bold))))
     (fringe  ((t (:background "#003700"))))
     (header-line  ((t (:background "#030" :foreground "#AA7"))))
     (holiday-face  ((t (:bold t :foreground "peru" :weight bold))))
     (ido-subdir-face  ((t (:foreground "MediumSlateBlue"))))
     (isearch  ((t (:foreground "pink" :background "red"))))
     (isearch-lazy-highlight-face  ((t (:foreground "red"))))
     (menu  ((t (:background "#304020" :foreground "navajo white"))))
     (minibuffer-prompt  ((t (:foreground "pale green"))))
     (modeline  ((t (:background "dark olive green" :foreground "wheat" :box ( :line-width 1 :style released-button )))))
     (mode-line-inactive  ((t (:background "dark olive green" :foreground "khaki" :box ( :line-width 1 :style released-button )))))
     (semantic-dirty-token-face  ((t (:background "grey22"))))
     (tool-bar  ((t (:background "#304020" :foreground "wheat" :box ( :line-width 1 :style released-button )))))
     (tooltip  ((t (:background "lemon chiffon" :foreground "black"))))
     )
   )
  )

(provide 'color-theme-inkpot)
