(package-require-or-install 'iedit)
(package-require-or-install 'magit)
(setenv "NODE_ENV" "ian")

(package-require-or-install 'zenburn-theme)
(load-theme 'zenburn t)

(require 'tramp)
(setq tramp-default-method "ssh")

(require 'desktop)
(desktop-save-mode 1)

(require 'winner)
(winner-mode 1)
(setq even-window-heights nil)

(iswitchb-mode 1)

(setq backup-directory-alist `(("." . "~/.emacs.d/backup")))

(setq mac-command-modifier 'meta)
(setq cursor-type 'box)
(blink-cursor-mode -1)
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(unless (display-graphic-p) (menu-bar-mode -1))
(setq scroll-bar-width 0)
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(setq visible-bell t)

(global-auto-revert-mode)

(setq org-todo-keywords
  '((sequence "TODO" "PROG" "WAIT" "DONE")))
(setq org-log-done 'time)

(setq org-todo-keyword-faces
      '(("TODO" . 'org-todo)
	("PROG" . "yellow")
	("WAIT" . "yellow")
	("DONE" . 'org-done)))
