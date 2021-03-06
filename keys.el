(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-xg" 'goog)
(global-set-key "\C-xp" 'phpref)
(global-set-key "\C-xj" 'jsref)
(global-set-key "\C-xw" 'copy-whole-buffer)
(global-set-key "\C-x=" 'replace-last-sexp)
(global-set-key "\C-ci" 'magit-status)

(require 'cl)
(package-require-or-install 'ace-jump-mode)
(global-set-key "\C-c " 'ace-jump-mode)

(setq select-active-regions nil)
(setq mouse-drag-copy-region 't)
(setq x-select-enable-clipboard nil)
(setq x-select-enable-primary 't)
(global-set-key (kbd "<mouse-2>") 'mouse-yank-at-click)

(defun iswitchb-local-keys ()
  (mapc (lambda (K)
	  (let* ((key (car K)) (fun (cdr K)))
	    (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	'(("<right>" . iswitchb-next-match)
	  ("<left>" . iswitchb-prev-match)
	  ("<up>" . ignore)
	  ("<down>" . ignore))))
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)
