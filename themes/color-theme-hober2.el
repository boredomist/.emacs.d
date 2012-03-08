
(defun color-theme-hober2 ()
  (interactive)
  (color-theme-install
   '(color-theme-hober2
     (
      (foreground-color . "light gray")
      (background-color . "gray4")
      (mouse-color . "khaki")
      (cursor-color . "khaki")
      (border-color . "gray4")
      (background-mode . "dark")
      )
     (
      (Man-overstrike-face . "font-lock-variable-name-face")
      (Man-underline-face . "font-lock-string-face")
      (apropos-symbol-face . "font-lock-keyword-face")
      (apropos-keybinding-face . "font-lock-constant-face")
      (apropos-label-face . "font-lock-type-face")
      (apropos-property-face . "font-lock-string-face")
      (apropos-match-face . "font-lock-function-name-face")
      (cperl-pod-face . "font-lock-doc-string-face")
      (cperl-pod-head-face . "font-lock-variable-name-face")
      (cperl-here-face . "font-lock-doc-string-face")
      (cperl-invalid-face . "font-lock-warning-face")
      (dired-header-face . "dired-header")
      (dired-mark-face . "dired-mark")
      (dired-marked-face . "dired-marked")
      (dired-flagged-face . "dired-flagged")
      (dired-warning-face . "dired-warning")
      (dired-directory-face . "dired-directory")
      (dired-symlink-face . "dired-symlink")
      (dired-ignored-face . "dired-ignored")
      (erc-button-nickname-face . "underline")
      (filladapt-debug-indentation-face-1 . "highlight")
      (filladapt-debug-indentation-face-2 . "secondary-selection")
      (filladapt-debug-paragraph-face . "bold")
      (forms-ro-face . "custom-comment-tag-face")
      (forms-rw-face . "custom-comment-face")
      (goto-address-url-face . "font-lock-string-face")
      (goto-address-url-mouse-face . "highlight")
      (goto-address-mail-face . "font-lock-string-face")
      (goto-address-mail-mouse-face . "highlight")
      (help-highlight-face . "font-lock-variable-name-face")
      (hl-line-face . "fringe")
      (ibuffer-deletion-face . "font-lock-warning-face")
      (ibuffer-filter-group-name-face . "bold")
      (ibuffer-marked-face . "font-lock-comment-face")
      (ibuffer-title-face . "dired-header")
      (list-matching-lines-face . "bold")
      (list-matching-lines-buffer-name-face . "font-lock-type-face")
      (view-highlight-face . "highlight")
      (viper-replace-overlay-cursor-color . "pale violet red")
      (viper-insert-state-cursor-color . "light pink")
      (viper-vi-state-cursor-color . "khaki")
      (widget-mouse-face . "highlight")
      )
     (default  ((t (:background "gray4" :foreground "light gray" :slant normal :weight normal))))
     (antlr-font-lock-keyword-face  ((t (:foreground "steel blue"))))
     (antlr-font-lock-literal-face  ((t (:foreground "pale violet red"))))
     (antlr-font-lock-ruledef-face  ((t (:foreground "DarkGreen"))))
     (antlr-font-lock-ruleref-face  ((t (:foreground "steel blue"))))
     (antlr-font-lock-tokendef-face  ((t (:foreground "khaki"))))
     (antlr-font-lock-tokenref-face  ((t (:foreground "LightSteelBlue4"))))
     (bbdb-company  ((t (:foreground "indian red"))))
     (bbdb-field-name  ((t (:foreground "steel blue"))))
     (bbdb-field-value  ((t (:foreground "lemon chiffon"))))
     (bbdb-name  ((t (:foreground "cadet blue"))))
     (bg:erc-color-face0  ((t (:background "light gray"))))
     (bg:erc-color-face1  ((t (:background "gray30"))))
     (bg:erc-color-face2  ((t (:background "dark slate blue"))))
     (bg:erc-color-face3  ((t (:background "DarkGreen"))))
     (bg:erc-color-face4  ((t (:background "indian red"))))
     (bg:erc-color-face5  ((t (:background "sandy brown"))))
     (bg:erc-color-face6  ((t (:background "medium orchid"))))
     (bg:erc-color-face7  ((t (:background "orange red"))))
     (bg:erc-color-face8  ((t (:background "lemon chiffon"))))
     (bg:erc-color-face9  ((t (:background "medium sea green"))))
     (bg:erc-color-face10  ((t (:background "LightSteelBlue4"))))
     (bg:erc-color-face11  ((t (:background "cadet blue"))))
     (bg:erc-color-face12  ((t (:background "steel blue"))))
     (bg:erc-color-face13  ((t (:background "pale violet red"))))
     (bg:erc-color-face14  ((t (:background "gray50"))))
     (bg:erc-color-face15  ((t (:background "gray90"))))
     (bold  ((t (:bold t))))
     (bold-italic  ((t (:bold t :slant italic :weight bold))))
     (Buffer-menu-buffer-face  ((t (:foreground "lemon chiffon"))))
     (calendar-today-face  ((t (:foreground "khaki"))))
     (change-log-date-face  ((t (:foreground "lemon chiffon"))))
     (change-log-name-face  ((t (:foreground "khaki"))))
     (change-log-email-face  ((t (:foreground "indian red"))))
     (change-log-file-face  ((t (:foreground "cadet blue"))))
     (change-log-list-face  ((t (:foreground "LightSteelBlue4"))))
     (change-log-conditionals-face  ((t (:foreground "indian red"))))
     (change-log-function-face  ((t (:foreground "indian red"))))
     (change-log-acknowledgement-face  ((t (:background "cadet blue" :foreground "gray4"))))
     (comint-highlight-input  ((t (:bold t))))
     (comint-highlight-prompt  ((t (:foreground "pale violet red"))))
     (compilation-warning-face  ((t (:background "indian red" :foreground "white"))))
     (compilation-warning  ((t (:background "indian red" :foreground "white"))))
     (compilation-info-face  ((t (:foreground "medium orchid"))))
     (compilation-info  ((t (:foreground "medium orchid"))))
     (compilation-error-face  ((t (:foreground "medium orchid"))))
     (compilation-error  ((t (:foreground "medium orchid"))))
     (cperl-array-face  ((t (:foreground "pale violet red"))))
     (cperl-array  ((t (:foreground "pale violet red"))))
     (cperl-nonoverridable-face  ((t (:foreground "sandy brown"))))
     (cperl-nonoverridable  ((t (:foreground "sandy brown"))))
     (cperl-hash-face  ((t (:foreground "medium orchid"))))
     (cperl-hash  ((t (:foreground "medium orchid"))))
     (css-selector  ((t (:foreground "indian red"))))
     (css-property  ((t (:foreground "light sea green"))))
     (cursor  ((t (:background "khaki" :foreground "gray4"))))
     (custom-button-face  ((t (:foreground "gray4" :background "light gray" :underline t :weight bold))))
     (custom-button-pressed-face  ((t (:foreground "gray4" :background "light gray" :underline t :weight bold))))
     (custom-face-tag-face  ((t (:bold t))))
     (custom-variable-tag-face  ((t (:bold t))))
     (custom-state-face  ((t (:foreground "medium sea green"))))
     (darcsum-header-face  ((t (:foreground "lemon chiffon"))))
     (darcsum-marked-face  ((t (:bold t))))
     (darcsum-need-action-face  ((t (:foreground "orange red"))))
     (darcsum-need-action-marked-face  ((t (:foreground "orange red" :weight bold))))
     (darcsum-filename-face  ((t (:foreground "light sea green"))))
     (darcsum-changed-line-face  ((t (:background "gray30" :foreground "white"))))
     (diary-face  ((t (:foreground "indian red"))))
     (diary-button-face  ((t (:foreground "gray4" :background "light gray" :underline t :weight bold))))
     (diff-hunk-header-face  ((t (:background "gray30" :foreground "white"))))
     (diff-removed  ((t (:background "indian red"))))
     (diff-added  ((t (:background "medium sea green"))))
     (dired-flagged  ((t (:background "indian red" :foreground "white"))))
     (dired-face-flagged  ((t (:background "indian red" :foreground "white"))))
     (dired-header  ((t (:foreground "medium sea green"))))
     (dired-face-header  ((t (:foreground "medium sea green"))))
     (dired-mark  ((t (:foreground "khaki"))))
     (dired-marked  ((t (:background "cadet blue" :foreground "gray4"))))
     (dired-face-marked  ((t (:background "cadet blue" :foreground "gray4"))))
     (dired-warning  ((t (:background "indian red" :foreground "white"))))
     (dired-directory  ((t (:foreground "khaki"))))
     (dired-face-directory  ((t (:foreground "khaki"))))
     (dired-face-executable  ((t (:foreground "medium sea green"))))
     (dired-ignored  ((t (:foreground "gray30"))))
     (dired-face-boring  ((t (:foreground "gray30"))))
     (dired-face-permissions  ((t (:foreground "gray30"))))
     (dired-face-setuid  ((t (:bold t :foreground "medium sea green" :weight bold))))
     (dired-face-socket  ((t (:foreground "gray30"))))
     (dired-symlink  ((t (:foreground "cadet blue"))))
     (dired-face-symlink  ((t (:foreground "cadet blue"))))
     (ediff-current-diff-face-A  ((t (:background "cadet blue" :foreground "gray4"))))
     (ediff-current-diff-face-Ancestor  ((t (:background "IndianRed1" :foreground "light gray"))))
     (ediff-current-diff-face-B  ((t (:background "lemon chiffon" :foreground "gray30"))))
     (ediff-current-diff-face-C  ((t (:background "medium sea green" :foreground "light gray"))))
     (ediff-even-diff-face-A  ((t (:background "cadet blue" :foreground "gray4" :weight bold))))
     (ediff-even-diff-face-Ancestor  ((t (:background "IndianRed1" :foreground "light gray" :weight bold))))
     (ediff-even-diff-face-B  ((t (:background "lemon chiffon" :foreground "gray30" :weight bold))))
     (ediff-even-diff-face-C  ((t (:background "medium sea green" :foreground "light gray" :weight bold))))
     (ediff-fine-diff-face-A  ((t (:background "steel blue" :foreground "gray4"))))
     (ediff-fine-diff-face-Ancestor  ((t (:background "orange red" :foreground "gray4"))))
     (ediff-fine-diff-face-B  ((t (:background "LightSteelBlue4" :foreground "white"))))
     (ediff-fine-diff-face-C  ((t (:background "DarkGreen" :foreground "gray4"))))
     (ediff-odd-diff-face-A  ((t (:background "steel blue" :foreground "gray4" :weight bold))))
     (ediff-odd-diff-face-Ancestor  ((t (:background "orange red" :foreground "gray4" :weight bold))))
     (ediff-odd-diff-face-B  ((t (:background "LightSteelBlue4" :foreground "white" :weight bold))))
     (ediff-odd-diff-face-C  ((t (:background "DarkGreen" :foreground "gray4" :weight bold))))
     (erc-action-face  ((t (:bold t))))
     (erc-bold-face  ((t (:bold t))))
     (erc-command-indicator-face  ((t (:bold t))))
     (erc-current-nick-face  ((t (:foreground "light sea green"))))
     (erc-my-nick-face  ((t (:foreground "light sea green"))))
     (erc-direct-msg-face  ((t (:foreground "cadet blue"))))
     (erc-error-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (erc-fool-face  ((t (:foreground "gray30"))))
     (erc-input-face  ((t (:foreground "lemon chiffon"))))
     (erc-inverse-face  ((t (:inverse-video t))))
     (erc-keyword-face  ((t (:foreground "medium orchid" :weight bold))))
     (erc-nick-default-face  ((t (:foreground "cadet blue"))))
     (erc-nick-msg-face  ((t (:foreground "pale violet red" :weight bold))))
     (erc-notice-face  ((t (:foreground "steel blue"))))
     (erc-pal-face  ((t (:foreground "pale violet red"))))
     (erc-prompt-face  ((t (:foreground "pale violet red"))))
     (erc-timestamp-face  ((t (:foreground "medium sea green"))))
     (erc-underline-face  ((t (:underline t))))
     (escape-glyph  ((t (:foreground "gray30"))))
     (eshell-prompt-face  ((t (:foreground "pale violet red"))))
     (eshell-prompt  ((t (:foreground "pale violet red"))))
     (eshell-ls-archive-face  ((t (:foreground "indian red"))))
     (eshell-ls-archive  ((t (:foreground "indian red"))))
     (eshell-ls-backup-face  ((t (:foreground "LightSteelBlue4"))))
     (eshell-ls-backup  ((t (:foreground "LightSteelBlue4"))))
     (eshell-ls-clutter-face  ((t (:background "indian red" :foreground "white"))))
     (eshell-ls-clutter  ((t (:background "indian red" :foreground "white"))))
     (eshell-ls-directory-face  ((t (:foreground "khaki"))))
     (eshell-ls-directory  ((t (:foreground "khaki"))))
     (eshell-ls-executable-face  ((t (:foreground "medium sea green"))))
     (eshell-ls-executable  ((t (:foreground "medium sea green"))))
     (eshell-ls-missing-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (eshell-ls-missing  ((t (:background "indian red" :foreground "white" :weight bold))))
     (eshell-ls-product-face  ((t (:foreground "gray30"))))
     (eshell-ls-product  ((t (:foreground "gray30"))))
     (eshell-ls-readonly-face  ((t (:foreground "gray30"))))
     (eshell-ls-readonly  ((t (:foreground "gray30"))))
     (eshell-ls-special-face  ((t (:foreground "pale violet red"))))
     (eshell-ls-special  ((t (:foreground "pale violet red"))))
     (eshell-ls-symlink-face  ((t (:foreground "cadet blue"))))
     (eshell-ls-symlink  ((t (:foreground "cadet blue"))))
     (eshell-ls-unreadable-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (eshell-ls-unreadable  ((t (:background "indian red" :foreground "white" :weight bold))))
     (fg:erc-color-face0  ((t (:foreground "light gray"))))
     (fg:erc-color-face1  ((t (:foreground "gray30"))))
     (fg:erc-color-face2  ((t (:foreground "dark slate blue"))))
     (fg:erc-color-face3  ((t (:foreground "DarkGreen"))))
     (fg:erc-color-face4  ((t (:foreground "indian red"))))
     (fg:erc-color-face5  ((t (:foreground "sandy brown"))))
     (fg:erc-color-face6  ((t (:foreground "medium orchid"))))
     (fg:erc-color-face7  ((t (:foreground "orange red"))))
     (fg:erc-color-face8  ((t (:foreground "lemon chiffon"))))
     (fg:erc-color-face9  ((t (:foreground "medium sea green"))))
     (fg:erc-color-face10  ((t (:foreground "LightSteelBlue4"))))
     (fg:erc-color-face11  ((t (:foreground "cadet blue"))))
     (fg:erc-color-face12  ((t (:foreground "steel blue"))))
     (fg:erc-color-face13  ((t (:foreground "pale violet red"))))
     (fg:erc-color-face14  ((t (:foreground "gray50"))))
     (fg:erc-color-face15  ((t (:foreground "gray90"))))
     (file-name-shadow  ((t (:foreground "gray30"))))
     (font-latex-bold-face  ((t (:bold t :foreground "medium sea green" :weight bold))))
     (font-latex-italic-face  ((t (:slant italic :foreground "medium sea green"))))
     (font-latex-math-face  ((t (:foreground "sandy brown"))))
     (font-latex-sectioning-0-face  ((t (:foreground "khaki"))))
     (font-latex-sectioning-1-face  ((t (:foreground "khaki"))))
     (font-latex-sectioning-2-face  ((t (:foreground "khaki"))))
     (font-latex-sectioning-3-face  ((t (:foreground "khaki"))))
     (font-latex-sectioning-4-face  ((t (:foreground "khaki"))))
     (font-latex-sedate-face  ((t (:foreground "gray30"))))
     (font-latex-string-face  ((t (:foreground "lemon chiffon"))))
     (font-latex-title-1-face  ((t (:foreground "LightSteelBlue4"))))
     (font-latex-title-2-face  ((t (:foreground "LightSteelBlue4"))))
     (font-latex-title-3-face  ((t (:foreground "LightSteelBlue4"))))
     (font-latex-title-4-face  ((t (:foreground "LightSteelBlue4"))))
     (font-latex-warning-face  ((t (:background "indian red" :foreground "white"))))
     (font-lock-builtin-face  ((t (:foreground "sandy brown"))))
     (font-lock-color-constant-face  ((t (:foreground "khaki"))))
     (font-lock-comment-face  ((t (:foreground "medium orchid"))))
     (font-lock-comment-delimiter-face  ((t (:foreground "dark orchid"))))
     (font-lock-constant-face  ((t (:foreground "pale violet red"))))
     (font-lock-doc-face  ((t (:foreground "khaki"))))
     (font-lock-doc-string-face  ((t (:foreground "dark orchid"))))
     (font-lock-function-name-face  ((t (:foreground "cadet blue"))))
     (font-lock-keyword-face  ((t (:foreground "steel blue"))))
     (font-lock-preprocessor-face  ((t (:foreground "khaki"))))
     (font-lock-reference-face  ((t (:foreground "khaki"))))
     (font-lock-string-face  ((t (:foreground "lemon chiffon"))))
     (font-lock-type-face  ((t (:foreground "medium sea green"))))
     (font-lock-variable-name-face  ((t (:foreground "IndianRed1"))))
     (font-lock-warning-face  ((t (:background "indian red" :foreground "white"))))
     (fringe  ((t (:background "gray8" :foreground "white"))))
     (gnus-cite-face-1  ((t (:foreground "lemon chiffon"))))
     (gnus-cite-1  ((t (:foreground "lemon chiffon"))))
     (gnus-cite-face-2  ((t (:foreground "khaki"))))
     (gnus-cite-2  ((t (:foreground "khaki"))))
     (gnus-cite-face-3  ((t (:foreground "cadet blue"))))
     (gnus-cite-3  ((t (:foreground "cadet blue"))))
     (gnus-cite-face-4  ((t (:foreground "indian red"))))
     (gnus-cite-4  ((t (:foreground "indian red"))))
     (gnus-cite-face-5  ((t (:foreground "pale violet red"))))
     (gnus-cite-5  ((t (:foreground "pale violet red"))))
     (gnus-cite-face-6  ((t (:foreground "DarkGreen"))))
     (gnus-cite-6  ((t (:foreground "DarkGreen"))))
     (gnus-cite-face-7  ((t (:foreground "LightSteelBlue4"))))
     (gnus-cite-7  ((t (:foreground "LightSteelBlue4"))))
     (gnus-cite-face-8  ((t (:foreground "gray"))))
     (gnus-cite-8  ((t (:foreground "gray"))))
     (gnus-cite-face-9  ((t (:foreground "steel blue"))))
     (gnus-cite-9  ((t (:foreground "steel blue"))))
     (gnus-cite-face-10  ((t (:foreground "lemon chiffon"))))
     (gnus-cite-10  ((t (:foreground "lemon chiffon"))))
     (gnus-cite-face-11  ((t (:foreground "khaki"))))
     (gnus-cite-11  ((t (:foreground "khaki"))))
     (gnus-emphasis-bold  ((t (:bold t))))
     (gnus-emphasis-bold-italic  ((t (:italic t :weight bold :slant italic))))
     (gnus-emphasis-italic  ((t (:italic t))))
     (gnus-emphasis-underline  ((t (:underline t))))
     (gnus-emphasis-underline-bold  ((t (:bold t :underline t :weight bold))))
     (gnus-emphasis-underline-bold-italic  ((t (:italic t :underline t :weight bold :slant italic))))
     (gnus-emphasis-underline-italic  ((t (:italic t :underline t :slant italic))))
     (gnus-header-content-face  ((t (:foreground "gray30"))))
     (gnus-header-content  ((t (:foreground "gray30"))))
     (gnus-header-from-face  ((t (:height 1.2 :foreground "DarkSeaGreen2"))))
     (gnus-header-from  ((t (:height 1.2 :foreground "DarkSeaGreen2"))))
     (gnus-header-name-face  ((t (:foreground "cadet blue"))))
     (gnus-header-name  ((t (:foreground "cadet blue"))))
     (gnus-header-newsgroups-face  ((t (:foreground "medium sea green"))))
     (gnus-header-newsgroups  ((t (:foreground "medium sea green"))))
     (gnus-header-subject-face  ((t (:height 1.2 :foreground "lemon chiffon"))))
     (gnus-header-subject  ((t (:height 1.2 :foreground "lemon chiffon"))))
     (gnus-signature-face  ((t (:foreground "gray30"))))
     (gnus-signature  ((t (:foreground "gray30"))))
     (gnus-summary-cancelled-face  ((t (:foreground "khaki"))))
     (gnus-summary-cancelled  ((t (:foreground "khaki"))))
     (gnus-summary-high-read-face  ((t (:foreground "khaki"))))
     (gnus-summary-high-read  ((t (:foreground "khaki"))))
     (gnus-summary-high-ticked-face  ((t (:foreground "indian red"))))
     (gnus-summary-high-ticked  ((t (:foreground "<"))))
     (gnus-summary-normal-ticked-face  ((t (:foreground "IndianRed1"))))
     (gnus-summary-normal-ticked  ((t (:foreground "IndianRed1"))))
     (gnus-summary-low-read-face  ((t (:foreground "khaki"))))
     (gnus-summary-low-read  ((t (:foreground "khaki"))))
     (gnus-summary-selected-face  ((t (:background "gray30" :foreground "white"))))
     (gnus-summary-selected  ((t (:background "gray30" :foreground "white"))))
     (header-line  ((t (:box ( :line-width 2 :color "gray8" :style nil ) :background "gray8" :foreground "white"))))
     (help-argument-name  ((t (:foreground "IndianRed1"))))
     (html-helper-significant-tag-face  ((t (:foreground "cadet blue"))))
     (hyper-apropos-documentation  ((t (:foreground "white"))))
     (hyper-apropos-hyperlink  ((t (:underline t))))
     (hyper-apropos-major-heading  ((t (:foreground "lemon chiffon"))))
     (hyper-apropos-section-heading  ((t (:foreground "khaki"))))
     (hyper-apropos-apropos-heading  ((t (:foreground "sandy brown"))))
     (hyper-apropos-apropos-warning  ((t (:background "indian red" :foreground "white"))))
     (highlight  ((t (:background "DarkGreen" :foreground "light gray" :underline t))))
     (highline-face  ((t (:background "gray30" :foreground "white"))))
     (highline-vertical-face  ((t (:background "gray30" :foreground "white"))))
     (holiday-face  ((t (:foreground "pale violet red"))))
     (Info-title-1-face  ((t (:foreground "IndianRed1"))))
     (Info-title-2-face  ((t (:foreground "IndianRed1"))))
     (Info-title-3-face  ((t (:foreground "IndianRed1"))))
     (Info-title-4-face  ((t (:foreground "IndianRed1"))))
     (info-header-node  ((t (:foreground "IndianRed1"))))
     (info-header-xref  ((t (:foreground "cadet blue"))))
     (info-menu-header  ((t (:foreground "IndianRed1"))))
     (info-node  ((t (:foreground "IndianRed1"))))
     (info-title-1  ((t (:foreground "IndianRed1"))))
     (info-title-2  ((t (:foreground "IndianRed1"))))
     (info-title-3  ((t (:foreground "IndianRed1"))))
     (info-title-4  ((t (:foreground "IndianRed1"))))
     (info-xref  ((t (:foreground "cadet blue"))))
     (isearch  ((t (:background "steel blue" :foreground "lemon chiffon"))))
     (isearch-lazy-highlight-face  ((t (:background "DarkGreen" :foreground "lemon chiffon"))))
     (lazy-highlight  ((t (:background "indian red" :foreground "lemon chiffon"))))
     (isearch-secondary  ((t (:background "indian red" :foreground "lemon chiffon"))))
     (isearch-fail  ((t (:background "indian red" :foreground "lemon chiffon"))))
     (iswitchb-current-match  ((t (:foreground "cadet blue"))))
     (iswitchb-single-match  ((t (:foreground "medium sea green"))))
     (iswitchb-invalid-regexp  ((t (:background "indian red" :foreground "white" :weight bold))))
     (iswitchb-virtual-matches  ((t (:foreground "sandy brown"))))
     (italic  ((t (:slant italic))))
     (jde-bug-breakpoint-cursor  ((t (:background "cyan"))))
     (jde-db-active-breakpoint-face  ((t (:background "cyan"))))
     (jde-db-requested-breakpoint-face  ((t (:background "cyan"))))
     (jde-db-spec-breakpoint-face  ((t (:background "cyan"))))
     (jde-java-font-lock-api-face  ((t (:background "cyan"))))
     (jde-java-font-lock-bold-face  ((t (:bold t :foreground "medium orchid" :weight bold))))
     (jde-java-font-lock-code-face  ((t (:foreground "indian red" :background "cadet blue"))))
     (jde-java-font-lock-constant-face  ((t (:foreground "pale violet red"))))
     (jde-java-font-lock-doc-tag-face  ((t (:foreground "khaki" :background "cadet blue"))))
     (jde-java-font-lock-italic-face  ((t (:slant italic :foreground "medium orchid"))))
     (jde-java-font-lock-link-face  ((t (:background "cyan"))))
     (jde-java-font-lock-modifier-face  ((t (:foreground "LightSteelBlue4"))))
     (jde-java-font-lock-number-face  ((t (:foreground "khaki"))))
     (jde-java-font-lock-operator-face  ((t (:background "cyan"))))
     (jde-java-font-lock-package-face  ((t (:foreground "khaki"))))
     (jde-java-font-lock-pre-face  ((t (:background "cyan"))))
     (jde-java-font-lock-underline-face  ((t (:underline t :foreground "medium orchid"))))
     (js2-builtin-face  ((t (:foreground "sandy brown"))))
     (js2-comment-face  ((t (:foreground "medium orchid"))))
     (js2-constant-face  ((t (:foreground "pale violet red"))))
     (js2-error-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (js2-external-variable-face  ((t (:foreground "indian red"))))
     (js2-function-name-face  ((t (:foreground "cadet blue"))))
     (js2-function-param-face  ((t (:foreground "IndianRed1"))))
     (js2-instance-member-face  ((t (:foreground "IndianRed1"))))
     (js2-jsdoc-html-tag-delimiter-face  ((t (:foreground "gray30"))))
     (js2-jsdoc-html-tag-name-face  ((t (:foreground "cadet blue"))))
     (js2-jsdoc-tag-face  ((t (:foreground "dark orchid"))))
     (js2-jsdoc-type-face  ((t (:foreground "dark orchid"))))
     (js2-jsdoc-value-face  ((t (:foreground "dark orchid"))))
     (js2-keyword-face  ((t (:foreground "steel blue"))))
     (js2-private-function-call-face  ((t (:foreground "cadet blue"))))
     (js2-private-member-face  ((t (:foreground "IndianRed1"))))
     (js2-regexp-face  ((t (:foreground "khaki"))))
     (js2-string-face  ((t (:foreground "lemon chiffon"))))
     (js2-type-face  ((t (:foreground "medium sea green"))))
     (js2-variable-name-face  ((t (:foreground "IndianRed1"))))
     (js2-warning-face  ((t (:background "indian red" :foreground "white"))))
     (makefile-space-face  ((t (:background "IndianRed1" :foreground "light gray"))))
     (match  ((t (:background "DodgerBlue3" :foreground "light gray"))))
     (menu  ((t (:background "light gray" :foreground "gray4"))))
     (message-cited-text-face  ((t (:foreground "indian red"))))
     (message-cited-text  ((t (:foreground "indian red"))))
     (message-header-cc-face  ((t (:foreground "medium sea green"))))
     (message-header-cc  ((t (:foreground "medium sea green"))))
     (message-header-name-face  ((t (:foreground "medium sea green"))))
     (message-header-name  ((t (:foreground "medium sea green"))))
     (message-header-newsgroups-face  ((t (:foreground "medium sea green"))))
     (message-header-newsgroups  ((t (:foreground "medium sea green"))))
     (message-header-other-face  ((t (:foreground "cadet blue"))))
     (message-header-other  ((t (:foreground "cadet blue"))))
     (message-header-subject-face  ((t (:height 1.2 :foreground "lemon chiffon"))))
     (message-header-subject  ((t (:height 1.2 :foreground "lemon chiffon"))))
     (message-header-to-face  ((t (:foreground "cadet blue"))))
     (message-header-to  ((t (:foreground "cadet blue"))))
     (message-header-xheader-face  ((t (:foreground "cadet blue"))))
     (message-header-xheader  ((t (:foreground "cadet blue"))))
     (message-mml-face  ((t (:foreground "medium sea green"))))
     (message-mml  ((t (:foreground "medium sea green"))))
     (message-separator-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (message-separator  ((t (:background "indian red" :foreground "white" :weight bold))))
     (minibuffer-prompt  ((t (:foreground "pale violet red"))))
     (mm-uu-extract  ((t (:background "gray8" :foreground "white"))))
     (mode-line  ((t (:foreground "light gray" :background "#5f5f87" :box ( :line-width 2 :style released-button )))))
     (modeline  ((t (:foreground "light gray" :background "#5f5f87" :box ( :line-width 2 :style released-button )))))
     (mode-line-inactive  ((t (:foreground "light gray" :background "gray30" :box ( :line-width 2 :style released-button )))))
     (mode-line-highlight  ((t (:foreground "black" :background "light sky blue" :box ( :line-width 2 :style released-button )))))
     (modeline-buffer-id  ((t (:foreground "khaki" :background "#5f5f87" :box ( :line-width 2 :style released-button )))))
     (modeline-mousable  ((t (:foreground "khaki" :background "#5f5f87" :box ( :line-width 2 :style released-button )))))
     (modeline-mousable-minor-mode  ((t (:foreground "khaki" :background "#5f5f87" :box ( :line-width 2 :style released-button )))))
     (mouse  ((t (:foreground "khaki" :background "gray4"))))
     (multi-region-face  ((t (:background "LightSteelBlue4" :foreground "white"))))
     (nxml-attribute-colon  ((t (:foreground "sandy brown"))))
     (nxml-attribute-colon-face  ((t (:foreground "sandy brown"))))
     (nxml-attribute-local-name  ((t (:foreground "sandy brown"))))
     (nxml-attribute-local-name-face  ((t (:foreground "sandy brown"))))
     (nxml-attribute-prefix  ((t (:foreground "sandy brown"))))
     (nxml-attribute-prefix-face  ((t (:foreground "sandy brown"))))
     (nxml-attribute-value  ((t (:foreground "lemon chiffon"))))
     (nxml-attribute-value-face  ((t (:foreground "lemon chiffon"))))
     (nxml-attribute-value-delimiter  ((t (:foreground "lemon chiffon"))))
     (nxml-attribute-value-delimiter-face  ((t (:foreground "lemon chiffon"))))
     (nxml-cdata-section-CDATA  ((t (:foreground "cadet blue"))))
     (nxml-cdata-section-CDATA-face  ((t (:foreground "cadet blue"))))
     (nxml-cdata-section-delimiter  ((t (:foreground "gray30"))))
     (nxml-cdata-section-delimiter-face  ((t (:foreground "gray30"))))
     (nxml-char-ref-delimiter  ((t (:foreground "IndianRed1"))))
     (nxml-char-ref-delimiter-face  ((t (:foreground "IndianRed1"))))
     (nxml-char-ref-number-face  ((t (:foreground "IndianRed1"))))
     (nxml-comment-content  ((t (:foreground "medium orchid"))))
     (nxml-comment-content-face  ((t (:foreground "medium orchid"))))
     (nxml-comment-delimiter  ((t (:foreground "dark orchid"))))
     (nxml-comment-delimiter-face  ((t (:foreground "dark orchid"))))
     (nxml-element-colon  ((t (:foreground "steel blue"))))
     (nxml-element-colon-face  ((t (:foreground "steel blue"))))
     (nxml-element-local-name  ((t (:foreground "cadet blue"))))
     (nxml-element-local-name-face  ((t (:foreground "cadet blue"))))
     (nxml-element-prefix  ((t (:foreground "steel blue"))))
     (nxml-element-prefix-face  ((t (:foreground "steel blue"))))
     (nxml-entity-ref-delimiter  ((t (:foreground "IndianRed1"))))
     (nxml-entity-ref-delimiter-face  ((t (:foreground "IndianRed1"))))
     (nxml-entity-ref-name  ((t (:foreground "IndianRed1"))))
     (nxml-entity-ref-name-face  ((t (:foreground "IndianRed1"))))
     (nxml-markup-declaration-delimiter  ((t (:foreground "gray30"))))
     (nxml-markup-declaration-delimiter-face  ((t (:foreground "gray30"))))
     (nxml-namespace-attribute-colon  ((t (:foreground "sandy brown"))))
     (nxml-namespace-attribute-colon-face  ((t (:foreground "sandy brown"))))
     (nxml-namespace-attribute-prefix  ((t (:foreground "sandy brown"))))
     (nxml-namespace-attribute-prefix-face  ((t (:foreground "sandy brown"))))
     (nxml-namespace-attribute-xmlns  ((t (:foreground "sandy brown"))))
     (nxml-namespace-attribute-xmlns-face  ((t (:foreground "sandy brown"))))
     (nxml-processing-instruction-delimiter-face  ((t (:foreground "gray30"))))
     (nxml-processing-instruction-target  ((t (:foreground "steel blue"))))
     (nxml-processing-instruction-target-face  ((t (:foreground "steel blue"))))
     (nxml-prolog-keyword  ((t (:foreground "cadet blue"))))
     (nxml-prolog-keyword-face  ((t (:foreground "cadet blue"))))
     (nxml-prolog-literal-content  ((t (:foreground "lemon chiffon"))))
     (nxml-prolog-literal-content-face  ((t (:foreground "lemon chiffon"))))
     (nxml-prolog-literal-delimiter  ((t (:foreground "lemon chiffon"))))
     (nxml-prolog-literal-delimiter-face  ((t (:foreground "lemon chiffon"))))
     (nxml-tag-delimiter  ((t (:foreground "gray30"))))
     (nxml-tag-delimiter-face  ((t (:foreground "gray30"))))
     (nxml-tag-slash  ((t (:foreground "gray30"))))
     (nxml-tag-slash-face  ((t (:foreground "gray30"))))
     (paren-face-match  ((t (:background "cadet blue" :foreground "gray4"))))
     (paren-face-mismatch  ((t (:background "indian red" :foreground "white" :weight bold))))
     (paren-face-no-match  ((t (:background "indian red" :foreground "white" :weight bold))))
     (paren-face  ((t (:foreground "gray30"))))
     (primary-selection  ((t (:foreground "white" :background "#5f5f87"))))
     (svn-status-marked-face  ((t (:background "cadet blue" :foreground "gray4"))))
     (svn-status-marked-popup-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (svn-status-update-available-face  ((t (:background "indian red" :foreground "white"))))
     (svn-status-directory-face  ((t (:foreground "khaki"))))
     (svn-status-filename-face  ((t (:foreground "cadet blue"))))
     (svn-status-symlink-face  ((t (:foreground "cadet blue"))))
     (svn-status-locked-face  ((t (:foreground "medium orchid"))))
     (svn-status-switched-face  ((t (:foreground "lemon chiffon"))))
     (svn-status-blame-highlight-face  ((t (:background "DarkGreen" :foreground "light gray" :underline t))))
     (svn-status-blame-rev-number-face  ((t (:background "cadet blue" :foreground "gray4"))))
     (rcirc-my-nick  ((t (:foreground "light sea green"))))
     (rcirc-mode-line-nick  ((t (:foreground "medium orchid" :weight bold))))
     (rcirc-other-nick  ((t (:foreground "cadet blue"))))
     (rcirc-nick-in-message  ((t (:foreground "pale violet red" :weight bold))))
     (rcirc-server  ((t (:foreground "steel blue"))))
     (rcirc-prompt  ((t (:foreground "pale violet red"))))
     (region  ((t (:foreground "white" :background "#5f5f87"))))
     (rng-error  ((t (:underline "red"))))
     (scroll-bar  ((t (:background "light gray" :foreground "gray4"))))
     (secondary-selection  ((t (:background "LightSteelBlue4" :foreground "white"))))
     (sgml-namespace-face  ((t (:foreground "steel blue"))))
     (shadow  ((t (:foreground "gray30"))))
     (sh-heredoc-face  ((t (:foreground "khaki"))))
     (sh-quoted-exec  ((t (:foreground "khaki"))))
     (show-paren-match-face  ((t (:background "cadet blue" :foreground "gray4"))))
     (show-paren-mismatch-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (show-tabs-space  ((t (:background "IndianRed1" :foreground "light gray"))))
     (show-tabs-space-face  ((t (:background "IndianRed1" :foreground "light gray"))))
     (show-tabs-tab  ((t (:background "IndianRed1" :foreground "light gray"))))
     (show-tabs-tab-face  ((t (:background "IndianRed1" :foreground "light gray"))))
     (slime-error-face  ((t (:background "indian red" :foreground "white" :weight bold))))
     (slime-warning-face  ((t (:background "indian red" :foreground "white"))))
     (slime-style-warning-face  ((t (:background "indian red" :foreground "white"))))
     (slime-note-face  ((t (:background "indian red" :foreground "white"))))
     (slime-highlight-face  ((t (:background "indian red" :foreground "white"))))
     (sldb-catch-tag-face  ((t (:foreground "khaki"))))
     (sldb-condition-face  ((t (:foreground "light sea green"))))
     (sldb-frame-label-face  ((t (:foreground "dark orchid"))))
     (sldb-local-name-face  ((t (:foreground "IndianRed1"))))
     (sldb-local-value-face  ((t (:foreground "lemon chiffon"))))
     (sldb-reference-face  ((t (:background "cyan"))))
     (sldb-restart-type-face  ((t (:foreground "medium orchid"))))
     (sldb-restart-face  ((t (:foreground "pale violet red"))))
     (sldb-restart-number-face  ((t (:foreground "dark orchid"))))
     (sldb-section-face  ((t (:foreground "sandy brown"))))
     (sldb-topline-face  ((t (:foreground "IndianRed1"))))
     (slime-repl-prompt-face  ((t (:foreground "pale violet red"))))
     (slime-repl-output-face  ((t (:foreground "dark orchid"))))
     (slime-repl-input-face  ((t (:foreground "pale violet red"))))
     (slime-repl-result-face  ((t (:foreground "medium orchid"))))
     (slime-inspector-topline-face  ((t (:background "gray30" :foreground "white"))))
     (slime-inspector-label-face  ((t (:foreground "indian red"))))
     (slime-inspector-value-face  ((t (:foreground "light pink"))))
     (slime-inspector-action-face  ((t (:background "cyan"))))
     (slime-inspector-type-face  ((t (:foreground "light sea green"))))
     (slime-reader-conditional-face  ((t (:foreground "gray30"))))
     (speedbar-button-face  ((t (:foreground "medium sea green"))))
     (speedbar-directory-face  ((t (:foreground "khaki"))))
     (speedbar-file-face  ((t (:foreground "cadet blue"))))
     (speedbar-highlight-face  ((t (:background "DarkGreen" :foreground "light gray" :underline t))))
     (speedbar-selected-face  ((t (:background "cadet blue" :foreground "gray4"))))
     (speedbar-tag-face  ((t (:foreground "khaki"))))
     (tex-math-face  ((t (:foreground "sandy brown"))))
     (tex-math  ((t (:foreground "sandy brown"))))
     (tool-bar  ((t (:background "light gray" :foreground "gray4" :underline t))))
     (trailing-whitespace  ((t (:background "IndianRed1" :foreground "light gray"))))
     (underline  ((t (:underline t))))
     (viper-search-face  ((t (:background "steel blue" :foreground "lemon chiffon"))))
     (viper-replace-overlay-face  ((t (:foreground "gray4" :background "light pink" :weight bold))))
     (viper-minibuffer-emacs-face  ((t (:foreground "gray4" :background "DarkSeaGreen2"))))
     (viper-minibuffer-insert-face  ((t (:foreground "gray4" :background "light pink"))))
     (viper-minibuffer-vi-face  ((t (:foreground "gray4" :background "light sea green"))))
     (w3m-anchor-face  ((t (:foreground "light sea green" :underline t))))
     (w3m-arrived-anchor-face  ((t (:foreground "cadet blue" :underline t))))
     (w3m-bitmap-image-face  ((t (:foreground "gray4" :background "white"))))
     (w3m-bold-face  ((t (:foreground "medium sea green"))))
     (w3m-current-anchor-face  ((t (:foreground "light sea green" :underline t :weight bold))))
     (w3m-form-button-face  ((t (:foreground "gray4" :background "light gray" :underline t :weight bold))))
     (w3m-form-button-mouse-face  ((t (:background "DarkGreen" :foreground "light gray" :underline t))))
     (w3m-form-button-pressed-face  ((t (:foreground "gray4" :background "light gray" :underline t :weight bold))))
     (w3m-form-face  ((t (:foreground "gray4" :background "light gray" :weight bold))))
     (w3m-header-line-location-title-face  ((t (:foreground "cadet blue"))))
     (w3m-header-line-location-content-face  ((t (:foreground "khaki"))))
     (w3m-history-current-url-face  ((t (:foreground "lemon chiffon"))))
     (w3m-image-face  ((t (:foreground "DarkSeaGreen2" :weight bold))))
     (w3m-link-numbering-face  ((t (:foreground "medium sea green" :weight bold))))
     (w3m-strike-through-face  ((t (:strike-through t :strikethru t))))
     (w3m-underline-face  ((t (:underline t))))
     (whitespace-highlight-face  ((t (:background "IndianRed1" :foreground "light gray"))))
     (widget-button-face  ((t (:bold t :underline t :weight bold))))
     (widget-button-pressed-face  ((t (:bold t :underline t :weight bold))))
     (widget-documentation-face  ((t (:foreground "medium sea green"))))
     (widget-field-face  ((t (:background "gray30" :foreground "white"))))
     (widget-inactive-face  ((t (:foreground "gray30"))))
     (widget-single-line-field-face  ((t (:background "gray30" :foreground "white"))))
     (woman-italic-face  ((t (:slant italic))))
     (woman-bold-face  ((t (:bold t))))
     (woman-unknwon-face  ((t (:foreground "cadet blue"))))
     (woman-addition-face  ((t (:foreground "medium sea green"))))
     (zmacs-region  ((t (:foreground "white" :background "#5f5f87"))))
     )
   )
  )

(provide 'color-theme-hober2)
