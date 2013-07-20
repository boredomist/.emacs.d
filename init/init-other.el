;; magnars is my favorite person.
(require 'expand-region)
(require 'change-inner)
(require 'multiple-cursors)

;; recentf mode
(require 'recentf)
(recentf-mode 1)

;; whitespace mode
(require 'whitespace)
;; (global-whitespace-mode t)

;; haml-mode
(require 'haml-mode)

;; rust-mode
(require 'rust-mode)

;; scheme-mode
(require 'cluck)

;; hideshow
(add-hook 'c-mode-common-hook   'hs-minor-mode)
(add-hook 'emacs-lisp-mode-hook 'hs-minor-mode)
(add-hook 'java-mode-hook       'hs-minor-mode)
(add-hook 'lisp-mode-hook       'hs-minor-mode)
(add-hook 'perl-mode-hook       'hs-minor-mode)
(add-hook 'sh-mode-hook         'hs-minor-mode)

;; paredit
(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)
(add-hook 'emacs-lisp-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'lisp-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'lisp-interaction-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'scheme-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'slime-mode-hook
	  (lambda () (paredit-mode +1)))
(add-hook 'clojure-mode-hook
          (lambda () (paredit-mode +1)))

;; backup files
(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t
      kept-new-versions 6
      kept-old-versions 2)

;; text mode
(add-hook 'text-mode-hook 'auto-fill-mode)
(add-hook 'text-mode-hook 'flyspell-mode)

(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq column-number-mode t)

;; Idle highlight mode
;; (require 'idle-highlight-mode)
;; (add-hook 'c-mode-common-hook   (lambda () (idle-highlight-mode nil)))
;; (add-hook 'emacs-lisp-mode-hook (lambda () (idle-highlight-mode nil)))
;; (add-hook 'java-mode-hook       (lambda () (idle-highlight-mode nil)))
;; (add-hook 'lisp-mode-hook       (lambda () (idle-highlight-mode nil)))
;; (add-hook 'perl-mode-hook       (lambda () (idle-highlight-mode nil)))
;; (add-hook 'sh-mode-hook         (lambda () (idle-highlight-mode nil)))

;; markdown
(autoload 'markdown-mode "markdown-mode.el" "major mode for markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdt$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda () (setq indent-tabs-mode nil)))

;; gist
;;(require 'gist)
;;(setq gist-use-curl t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Nuke tabs
(setq indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

;; ;; Ace jump
;; (require 'ace-jump-mode)
;; (define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

;; org-mode
(setq org-startup-indented t)
(require 'epa-file)
(epa-file-enable)

;; Smalltalk-mode
;; This is a hack, smalltalk-mode uses a variable deprecated in Emacs 24.1
(defvar inhibit-first-line-modes-regexps 'inhibit-file-local-variables-regexps)
(require 'smalltalk-mode)

;; emacs-lisp-mode
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)

;; make firefox-nightly default browser
(setq browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox-bin")

;; ;; linenum
;; (setq linum-mode-inhibit-modes-list
;;       '(eshell-mode
;;         shell-mode
;;         erc-mode
;;         wl-summary-mode))

;; (defadvice linum-on (around linum-on-inhibit-for-modes)
;;   "Stop the load of linum-mode for some major modes."
;;   (unless (member major-mode linum-mode-inhibit-modes-list)
;;     ad-do-it))

;; (ad-activate 'linum-on)

;; rainbow delimiters
(require 'rainbow-delimiters)
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; erc
(require 'erc)
(defun erc-cmd-NP ()
  (interactive)
  (erc-cmd-ME
   (concat
    " is listening to "
    (shell-command-to-string
     "mpc current -f \"[%artist% - %title% #[%album%#]\""))))

;; ack
(autoload 'ack "ack-and-a-half" "Ack and a half" t)
;; Create shorter aliases
(defalias 'ack 'ack-and-a-half)
(defalias 'ack-same 'ack-and-a-half-same)
(defalias 'ack-find-file 'ack-and-a-half-find-file)
(defalias 'ack-find-file-same 'ack-and-a-half-find-file-same)

;; wanderlust
;; (autoload 'wl "wl" "Wanderlust" t)
;; (autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
;; (autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

(require 'haxe-mode)
(require 'go-mode)

(eval-after-load 'magit
  '(progn
     (set-face-foreground 'magit-diff-add "green3")
     (set-face-foreground 'magit-diff-del "red3")
     (when (not window-system)
       (set-face-background 'magit-item-highlight "black"))))

;; CUDA is close enough to C++
(add-to-list 'auto-mode-alist '("\\.cu$" . c++-mode))

;; Replace region just by typing without having to kill it first
(delete-selection-mode 1)

;; Autocomplete -- configuration is a work in progress
;;  it depends on how annoying this becomes in practice
(require 'auto-complete-config)
(require 'ac-math)
(require 'yasnippet)

(ac-config-default)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of {{{latex-mode}}}

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
        (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
                ac-sources)))

(add-hook 'LaTeX-mode-hook 'ac-latex-mode-setup)
(ac-flyspell-workaround)
(define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
(ac-set-trigger-key "M-TAB")

(setq ac-use-fuzzy t
      ac-auto-start nil
      global-auto-complete-mode nil)

(setq-default fill-column 79)

;; Packages
(require 'package)
(add-to-list 'package-archives
  '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

;; ibuffer
(require 'ibuffer)

(define-ibuffer-sorter filename-or-dired
  "Sort the buffers by their pathname."
  (:description "filenames plus dired")
  (string-lessp
   (with-current-buffer (car a)
     (or buffer-file-name
         (if (eq major-mode 'dired-mode)
             (expand-file-name dired-directory))
         ;; so that all non pathnames are at the end
         "~"))
   (with-current-buffer (car b)
     (or buffer-file-name
         (if (eq major-mode 'dired-mode)
             (expand-file-name dired-directory))
         ;; so that all non pathnames are at the end
         "~"))))

(define-key ibuffer-mode-map (kbd "s p")
  'ibuffer-do-sort-by-filename-or-dired)

;; Enable ibuffer-filter-by-filename to filter on directory names too.
(eval-after-load "ibuf-ext"
  '(define-ibuffer-filter filename
       "Toggle current view to buffers with file or directory name matching QUALIFIER."
     (:description "filename"
                   :reader (read-from-minibuffer "Filter by file/directory name (regexp): "))
     (ibuffer-awhen (or (buffer-local-value 'buffer-file-name buf)
                        (buffer-local-value 'dired-directory buf))
       (string-match qualifier it))))

;; Highlight FIXME/TODO/BUG obnoxiously
(add-hook 'prog-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil
             '(("\\<\\(XXX\\|FIXME\\|TODO\\|BUG\\):" 1 font-lock-warning-face t)))))

(add-hook 'ruby-mode-hook
          (lambda ()
            (font-lock-add-keywords
             nil '(("\\<\\(require\\)" 1 font-lock-keyword-face t)))))

;; Popwin
(require 'popwin)
(popwin-mode 1)

;; mk-project
(require 'mk-project)

;; fill column indicator
;; (setq fci-rule-color "DimGrey")
;; (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
;; (global-fci-mode 0)

(global-linum-mode 0)
(line-number-mode 1)

(when (require 'diminish nil 'noerror)

  (eval-after-load "emacslisp"
    '(diminish 'emacs-lisp-mode "el"))
  (eval-after-load "paredit"
    '(diminish 'paredit-mode "()"))
  (eval-after-load "abbrev"
    '(diminish 'abbrev-mode ""))
  (eval-after-load "hideshow"
    '(diminish 'hs-minor-mode ""))
  (eval-after-load "auto-complete"
    '(diminish 'auto-complete-mode ""))
  (eval-after-load "flyspell"
    '(diminish 'flyspell-mode ""))
  (eval-after-load "yasnippet"
    '(diminish 'yas/minor-mode "Y")))

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(require 'yaml-mode)

;; pain and suffering
(setq python-check-command "flake8")

(provide 'init-other)
