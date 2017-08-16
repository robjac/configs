(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (atom-one-dark)))
 '(custom-safe-themes
	 (quote
		("a4c9e536d86666d4494ef7f43c84807162d9bd29b0dfd39bdf2c3d845dcc7b2e" "3b0a350918ee819dca209cec62d867678d7dac74f6195f5e3799aa206358a983" "89531935dc9c4620a06579e525d5365f94639cb4c5c328bcabbd22bc39a862ed" default)))
 '(display-time-mode t)
 '(evil-auto-indent t)
 '(evil-mode 1)
 '(js-indent-level 2)
 '(package-selected-packages
	 (quote
		(yasnippet haskell-mode smart-tab emmet-mode web-mode highlight-indentation atom-one-dark-theme smartparens enh-ruby-mode ag auto-complete emacsql-sqlite railscasts-theme rubocop jsx-mode helm magit evil-visual-mark-mode)))
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(tab-width 2)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Hack" :foundry "nil" :slant normal :weight normal :height 141 :width normal)))))

;; my settings
(require 'evil)
(require 'rinari)
(require 'auto-complete-config)
(require 'smartparens-config)
(require 'smartparens-ruby)
(require 'highlight-indentation)
(require 'web-mode)
(require 'emmet-mode)
(require 'smart-tab)

;; globals
(global-smart-tab-mode 1)
(smartparens-global-mode)
(show-smartparens-global-mode t)
(global-linum-mode 1)

;; functions

;; hooks
(add-hook 'sgml-mode-hook 'emmet-mode) ;; auto start everywhere
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)

;; emmet-mode
(setq emmet-move-cursor-between-quotes t)
(setq emmet-self-closing-tag-style " /") ;; leave that space!

;; web-mode settings
(setq web-mode-enable-current-element-highlight t)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html.*\\'" . web-mode))

;; indentation
(highlight-indentation-mode t)

;; auto complete settings
(ac-config-default)
(setq ac-ignore-case nil)
(add-to-list 'ac-modes 'enh-ruby-mode)
(add-to-list 'ac-modes 'web-mode)

;; editor settings
(save-place-mode t)
(setq backup-inhibited t)
