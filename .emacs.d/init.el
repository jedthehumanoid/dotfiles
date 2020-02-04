
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("1436d643b98844555d56c59c74004eb158dc85fc55d2e7205f8d9b8c860e177f" default)))
 '(package-selected-packages
   (quote
    (rust-mode lsp-ui multiple-cursors projectile ivy markdown-mode go-mode gruvbox-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'gruvbox t)

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1) 
(setq inhibit-splash-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(projectile-mode +1)
(define-key mode-specific-map (kbd "p") 'projectile-command-map)

(ivy-mode 1)
(setq projectile-completion-system 'ivy)

(xterm-mouse-mode 1)
