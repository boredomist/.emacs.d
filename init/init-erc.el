;; ERC configuration
(require 'znc)
(require 'erc-hl-nicks)
(require 'erc-nick-notify)

(eval-after-load 'erc
  '(progn
      (setq erc-prompt ">"
            erc-server-reconnect-timeout 30
            erc-fill-column 79
            erc-max-buffer-size 100000
            scroll-conservatively 1000
            erc-nick '("erik" "bdmst" "boredomist")
            erc-hide-list '("JOIN" "PART" "QUIT"))

      (erc-spelling-mode 1)
      (add-to-list 'erc-modules 'hl-nicks 'nick-notify)
      (add-hook 'erc-connect-pre-hook (lambda (x) (erc-update-modules)))))

(defun erc-privmsg-notify (proc res)
  (flet ((rtrim-string (s)
                       (replace-regexp-in-string "\\([[:space:]\n]*$\\)" "" s)))
    (let ((channel-buffers
           (erc-channel-list proc))
          (sender
           (or (car (split-string (erc-response.sender res) "!"))
               (erc-response.sender res)))
          (target-channel-name (car (erc-response.command-args res))))

      (unless
          (member
           (get-buffer target-channel-name) channel-buffers) ; this is a channel message
        (progn
          (notify "Instant message!"
                  (format "Direct message from %s" sender)
                  :icon     "/usr/share/icons/gnome/48x48/status/important.png"
                  :timeout  120000
                  :app "ERC")
          nil)))))
(add-hook 'erc-server-PRIVMSG-functions 'erc-privmsg-notify)

(autoload 'erc-tls "erc" "" t)
(autoload 'erc-ssl "erc" "" t)
(autoload 'erc-nick-notify-mode "erc-nick-notify"
  "Minor mode that calls `erc-nick-notify-cmd' when his nick gets
mentioned in an erc channel" t)

(provide 'init-erc)
