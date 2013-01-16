;; Key Bindings
;(global-set-key (kbd "TAB") 'self-insert-command)
(package-require-or-install 'ace-jump-mode)

(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xg" 'goog)
(global-set-key "\C-xp" 'phpref)
(global-set-key "\C-xj" 'jsref)
(global-set-key "\C-xw" 'copy-whole-buffer)
(global-set-key [f5] 'slime-js-reload)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
