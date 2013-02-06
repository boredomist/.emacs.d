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
(require 'idle-highlight-mode)
(add-hook 'c-mode-common-hook   (lambda () (idle-highlight-mode t)))
(add-hook 'emacs-lisp-mode-hook (lambda () (idle-highlight-mode t)))
(add-hook 'java-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'lisp-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'perl-mode-hook       (lambda () (idle-highlight-mode t)))
(add-hook 'sh-mode-hook         (lambda () (idle-highlight-mode t)))

;; markdown
(autoload 'markdown-mode "markdown-mode.el" "major mode for markdown files" t)
(add-to-list 'auto-mode-alist '("\\.md$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.text$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdwn$" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.mdt$" . markdown-mode))
(add-hook 'markdown-mode-hook (lambda () (setq indent-tabs-mode nil)))

;; gist
(require 'gist)
(setq gist-use-curl t)

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Nuke tabs
(setq indent-tabs-mode nil)

(defalias 'yes-or-no-p 'y-or-n-p)

;; Ace jump
(require 'ace-jump-mode)
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

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

;; linenum
(setq linum-mode-inhibit-modes-list
      '(eshell-mode
        shell-mode
        erc-mode
        wl-summary-mode))

(defadvice linum-on (around linum-on-inhibit-for-modes)
  "Stop the load of linum-mode for some major modes."
  (unless (member major-mode linum-mode-inhibit-modes-list)
    ad-do-it))

(ad-activate 'linum-on)

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
(autoload 'wl "wl" "Wanderlust" t)
(autoload 'wl-other-frame "wl" "Wanderlust on new frame." t)
(autoload 'wl-draft "wl-draft" "Write draft with Wanderlust." t)

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

(require 'mu4e)

(setq mu4e-maildir "~/mail"
      mu4e-drafts-folder "/drafts"
      mu4e-sent-folder "/sent"
      mu4e-trash-folder "/trash"

      mu4e-maildir-shortcuts '(("/INBOX" . ?i)
                               ("/trash" . ?t))

      mu4e-get-mail-command "offlineimap -o"
      mu4e-update-interval 300

      mu4e-view-show-images t

      user-mail-address "erik.price16@gmail.com"
      user-full-name "Erik Price")

(require 'starttls)
(setq starttls-use-gnutls t)
(setq smtpmail-debug-info t)
(setq smtpmail-debug-verb t)
(require 'smtpmail)

(set-variable 'mu4e-bookmarks
              '(("date:7d..now AND maildir:/INBOX"      "Recent inbox"         ?i)
                ("flag:unread AND NOT flag:trashed"     "Unread messages"      ?u)
                ("date:today..now AND NOT flag:trashed" "Today's messages"     ?t)
                ("date:7d..now AND NOT flag:trashed"    "Last 7 days"          ?w)
                ("mime:image/* AND NOT flag:trashed"    "Messages with images" ?p)))

(add-hook 'mu4e-index-updated-hook
          (lambda ()
            (show-popup "Mail" "You have new mail, go check your inbox."
                        "/usr/share/icons/gnome/48x48/status/mail-unread.png")))

(setq message-kill-buffer-on-exit t)

(provide 'init-other)
