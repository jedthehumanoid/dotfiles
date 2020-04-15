(package-initialize)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(eval-when-compile (require 'use-package))
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)
(setq inhibit-splash-screen t)

(setq make-backup-files nil)
(setq auto-save-default nil)

(xterm-mouse-mode 1)
(column-number-mode 1)
(global-display-line-numbers-mode 1)

(use-package gruvbox-theme :ensure t)
(use-package go-mode
  :ensure t
  :config
  (add-hook 'before-save-hook #'gofmt-before-save))

(use-package rust-mode
  :ensure t
  :config
  (setq rust-format-on-save t))

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1))

;; Put package-selected-packages cruft into another file
(setq custom-file "~/.emacs.d/package-selected-packages.el")
(load custom-file)
