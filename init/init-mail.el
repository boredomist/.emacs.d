;; Set up whatever mail related stuff

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

      mu4e-html2text-command "html2text -utf8 -width 80 -nobs")

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

(add-hook 'mu4e-index-updated-hook
          (lambda ()
            (show-popup "Mail" "You have new mail, go check your inbox."
                        "/usr/share/icons/gnome/48x48/status/mail-unread.png")))

(setq message-kill-buffer-on-exit t)


(provide 'init-mail)
