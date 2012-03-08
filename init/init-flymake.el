(setq flymake-gui-warnings-enabled nil)

(add-hook 'flymake-mode-hook
          (lambda ()
            (local-set-key "\C-c\C-v"
                           (lambda ()
                             (interactive)
                             (flymake-goto-next-error)
                             (flymake-display-err-menu-for-current-line)))))

(provide 'init-flymake)
