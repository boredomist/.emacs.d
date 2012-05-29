;; -*-no-byte-compile: t; -*-

;; some custom settings

(if (= emacs-major-version 24)
    (load-theme 'wombat)
    (color-theme-tomorrow-night-eighties))

(setq default-directory "~/code")

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(menu-bar-mode f)
 '(show-paren-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#2d2d2d" :foreground "#cccccc" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 90 :width normal :foundry "bitstream" :family "Bitstream Vera Sans Mono")))))

(provide 'custom)
