;; ERC configuration
(require 'znc)
(require 'erc-hl-nicks)
(require 'erc-nick-notify)

(eval-after-load 'erc
  '(progn
      (setq erc-prompt ">"
            erc-server-reconnect-timeout 30
            erc-fill-column 75
            erc-max-buffer-size 100000
            erc-nick '("erik" "bdmst" "boredomist"))

      (erc-spelling-mode 1)
      (add-to-list 'erc-modules 'hl-nicks 'nick-notify)
      (add-hook 'erc-connect-pre-hook (lambda (x) (erc-update-modules)))))

(autoload 'erc-tls "erc" "" t)
(autoload 'erc-ssl "erc" "" t)
(autoload 'erc-nick-notify-mode "erc-nick-notify"
  "Minor mode that calls `erc-nick-notify-cmd' when his nick gets
mentioned in an erc channel" t)

(provide 'init-erc)
