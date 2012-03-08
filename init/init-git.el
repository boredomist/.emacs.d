(setq magit-save-some-buffers nil
      magit-process-popup-time 10
      magit-completing-read-function 'magit-ido-completing-read)

(autoload 'rebase-mode "rebase-mode")

(add-to-list 'auto-mode-alist '("git-rebase-todo" . rebase-mode))

(provide 'init-git)