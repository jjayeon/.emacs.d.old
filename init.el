;; (global-set-key (kbd "<right>") 'right-char)
;; (global-set-key (kbd "<left>") 'left-char)
;; (global-set-key (kbd "<up>") 'previous-line)
;; (global-set-key (kbd "<down>") 'next-line)

(load "~/.emacs.d/no-externals.el")
(load "~/.emacs.d/load-packages.el")

(global-unset-key (kbd "C-c C-c"))
(global-set-key (kbd "C-c C-c") 'comment-region)

(setq-default indent-tabs-mode nil)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(put 'upcase-region 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
