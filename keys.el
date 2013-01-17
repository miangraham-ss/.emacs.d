(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xg" 'goog)
(global-set-key "\C-xp" 'phpref)
(global-set-key "\C-xj" 'jsref)
(global-set-key "\C-xw" 'copy-whole-buffer)

(package-require-or-install 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

(setq select-active-regions nil)
(setq mouse-drag-copy-region 't)
(setq x-select-enable-clipboard nil)
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)
