(setq auto-mode-alist (cons '("\\.lua$" . lua-mode) auto-mode-alist))
(add-hook 'lua-mode-hook 'turn-on-font-lock)
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)

(provide 'init-lua)
