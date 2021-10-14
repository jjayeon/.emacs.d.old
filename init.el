(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
(unless (package-installed-p 'use-package)
  ;; only fetch the archives if you don't have use-package installed
  (package-refresh-contents)
  (package-install 'use-package))
(require 'use-package)

(use-package paredit
  :ensure t
  :init
  (autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)
  (add-hook 'emacs-lisp-mode-hook       #'enable-paredit-mode)
  (add-hook 'eval-expression-minibuffer-setup-hook #'enable-paredit-mode)
  (add-hook 'ielm-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-mode-hook             #'enable-paredit-mode)
  (add-hook 'lisp-interaction-mode-hook #'enable-paredit-mode)
  (add-hook 'scheme-mode-hook           #'enable-paredit-mode))

(use-package paredit-everywhere
  :ensure t
  :init
  (add-hook 'prog-mode-hook 'paredit-everywhere-mode))

(use-package js2-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
  ;; (add-hook 'js2-mode-hook #'js2-imenu-extras-mode)
  )

(use-package rjsx-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.jsx?$" . rjsx-mode)) ;; auto-enable for .js/.jsx files
  (setq sgml-basic-offset 4))

(use-package prettier-js
  :ensure t
  :init
  (add-hook 'js-mode-hook 'prettier-js-mode)
  (add-hook 'js2-mode-hook 'prettier-js-mode)
  (setq prettier-js-args '(
			   "--tab-width" "4"
			   )))

(use-package python-black
  :ensure t
  :init
  (add-hook 'python-mode-hook 'python-black-on-save-mode-enable-dwim))

(use-package csharp-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode)))

(use-package go-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.go$" . go-mode)))
  
(use-package flycheck
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'global-flycheck-mode))

(use-package yaml-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.ya?ml$ . yaml-mode")))

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
	 ("\\.md\\'" . markdown-mode)
	 ("\\.markdown\\'" . markdown-mode)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (deeper-blue)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (python-black csharp-mode use-package prettier flycheck js2-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(setq-default tab-width 4)
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
