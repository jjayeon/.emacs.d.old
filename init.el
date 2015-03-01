;; (global-set-key (kbd "<right>") 'right-char)
;; (global-set-key (kbd "<left>") 'left-char)
;; (global-set-key (kbd "<up>") 'previous-line)
;; (global-set-key (kbd "<down>") 'next-line)

(load "~/.emacs.d/my-noexternals.el")
(load "~/.emacs.d/my-loadpackages.el")

(global-unset-key (kbd "C-c C-c"))
(global-set-key (kbd "C-c C-c") 'comment-region)

(setq-default indent-tabs-mode nil)

(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)
(put 'upcase-region 'disabled nil)
