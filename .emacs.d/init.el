(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(unless (package-installed-p 'web-mode)
(package-refresh-contents)
(package-install 'web-mode))

(setq inhibit-splash-screen t
      make-backup-files nil)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)

(show-paren-mode 1)
(electric-pair-mode 1)

(ido-mode t)

(defalias 'yes-or-no-p 'y-or-n-p)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files '("~/notes/notes.org"))
 '(package-selected-packages '(magit yaml-mode compat web-mode)))
