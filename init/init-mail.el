;; Set up whatever mail related stuff

(require 'mu4e)

(setq mu4e-maildir "~/mail"
      mu4e-drafts-folder "/[Gmail].Drafts"
      mu4e-sent-folder "/[Gmail].Sent Mail"
      mu4e-trash-folder "/[Gmail].Trash"

      mu4e-maildir-shortcuts '(("/INBOX" . ?i)
                               ("/[Gmail].Trash" . ?t))

      mu4e-get-mail-command "offlineimap -o"
      mu4e-update-interval 300
      mu4e-headers-visible-columns 137
      mu4e-view-show-images t
      mu4e-view-image-max-width 800

      mu4e-html2text-command "html2text -utf8 -width 80 -nobs")

(require 'starttls)
(setq starttls-use-gnutls t)
(setq smtpmail-debug-info t)
(setq smtpmail-debug-verb t)
(require 'smtpmail)

(set-variable 'mu4e-bookmarks
              '(("date:7d..now AND maildir:/INBOX"               "Recent inbox"         ?i)
                ("flag:unread AND NOT maildir:/[Gmail].Trash"     "Unread messages"      ?u)
                ("date:today..now AND NOT maildir:/[Gmail].Trash" "Today's messages"     ?t)
                ("date:7d..now AND NOT maildir:/[Gmail].Trash AND NOT maildir:/SugarLabs"    "Last 7 days"          ?w)
                ("date:7d..now AND maildir:/SugarLabs"    "Sugar Labs"          ?s)
                ("mime:image/* AND NOT maildir:/[Gmail].Trash"    "Messages with images" ?p)))

;;; message view action
(defun mu4e-msgv-action-view-in-browser (msg)
  "View the body of the message in a web browser."
  (interactive)
  (let ((html (mu4e-msg-field (mu4e-message-at-point t) :body-html))
        (tmpfile (format "%s/%d.html" temporary-file-directory (random))))
    (unless html (error "No html part for this message"))
    (with-temp-file tmpfile
      (insert
       "<html>"
       "<head><meta http-equiv=\"content-type\""
       "content=\"text/html;charset=UTF-8\">"
       html))
    (browse-url (concat "file://" tmpfile))))

(add-to-list 'mu4e-view-actions
             '("View in browser" . mu4e-msgv-action-view-in-browser) t)

(setq message-kill-buffer-on-exit t)

(add-hook 'mu4e-compose-mode-hook 'epa-mail-mode)
(add-hook 'mu4e-view-mode-hook 'epa-mail-mode)

(provide 'init-mail)
