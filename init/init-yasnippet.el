(require 'yasnippet)
(yas/initialize)

(setq
 yas/root-directory `(,(expand-file-name "snippets" dotfiles-dir)
		      ,(expand-file-name "yasnippet/snippets" site-lisp-dir))

 yas/prompt-functions '(yas/ido-prompt yas/completing-prompt))

(provide 'init-yasnippet)