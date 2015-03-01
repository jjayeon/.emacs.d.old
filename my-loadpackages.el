(load "~/.emacs.d/my-packages.el")

;; PAREDIT
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
(add-hook 'emacs-lisp-mode-hook       'enable-paredit-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-mode-hook             'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'scheme-mode-hook           'enable-paredit-mode)
(add-hook 'geiser-repl-mode-hook           'enable-paredit-mode)
;; The Linux console doesn't support modified arrow keys, 
;; so I rebound barfage and slurpage to the normal arrow keys
(add-hook 'paredit-mode-hook (lambda ()
			       (local-unset-key (kbd "<right>"))
			       (local-set-key (kbd "<right>") 'paredit-forward-slurp-sexp)
			       (local-unset-key (kbd "<left>"))
			       (local-set-key (kbd "<left>") 'paredit-forward-barf-sexp)
			       (local-unset-key (kbd "<up>"))
			       (local-set-key (kbd "<up>") 'paredit-backward-slurp-sexp)
			       (local-unset-key (kbd "<down>"))
			       (local-set-key (kbd "<down>") 'paredit-backward-barf-sexp)))

;; RAINBOW-DELIMITERS
(add-hook 'emacs-lisp-mode-hook       'rainbow-delimiters-mode)
(add-hook 'eval-expression-minibuffer-setup-hook 'rainbow-delimiters-mode)
(add-hook 'ielm-mode-hook             'rainbow-delimiters-mode)
(add-hook 'lisp-mode-hook             'rainbow-delimiters-mode)
(add-hook 'lisp-interaction-mode-hook 'rainbow-delimiters-mode)
(add-hook 'scheme-mode-hook           'rainbow-delimiters-mode)


;; QUACK
;; (require 'quack)
