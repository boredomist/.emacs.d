(require 'ido)
(require 'ido-ubiquitous)

(eval-after-load "ido"
  '(progn
     (ido-mode t)
     (ido-ubiquitous t)
     (ido-everywhere t)
     (setq ido-enable-prefix nil
	   ido-enable-flex-matching t
	   ido-auto-merge-work-directories-length nil
	   ido-create-new-buffer 'always
	   ido-use-filename-at-point 'guess
	   ido-use-virtual-buffers t
	   ido-handle-duplicate-virtual-buffers 2
	   ido-max-prospects 10)))


;; smex - ido like M-x completion
(require 'smex)
(smex-initialize)

(setq smex-save-file "~/.emacs.d/.smex-items")

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

(provide 'init-ido)