(package-require-or-install 'zenburn-theme)
(load-theme 'zenburn t)

(require 'tramp)
(setq tramp-default-method "ssh")

(require 'desktop)
(desktop-save-mode 1)

(setq mac-command-modifier 'meta)
(setq cursor-type 'box)
(blink-cursor-mode -1)
(tool-bar-mode -1)
(setq scroll-bar-width 0)
(scroll-bar-mode -1)
(setq visible-bell t)

(global-auto-revert-mode)

;; Line numbers
;(require 'linum)
;(linum-mode)
;(add-hook 'js-mode-hook (lambda () (linum-mode 1)))
;(add-hook 'php-mode-hook (lambda () (linum-mode 1)))
;(add-hook 'ruby-mode-hook (lambda () (linum-mode 1)))

(set-frame-size (selected-frame) 160 60)
