;; Indentation
;(setq indent-tabs-mode t)
;(setq-default indent-tabs-mode t)
;(setq-default default-tab-width 4)
;(setq-default tab-width 4)
;(setq-default c-basic-indent 2)

(setq-default c-basic-indent 4)

(add-hook 'c-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'c-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'c-mode-hook (lambda () (setq c-basic-indent 2)))
(add-hook 'c-mode-hook (lambda () (setq c-basic-offset 2)))

(add-hook 'c++-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'c++-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'c++-mode-hook (lambda () (setq c-basic-indent 2)))
(add-hook 'c++-mode-hook (lambda () (setq c-basic-offset 2)))

;(add-hook 'c-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'c-mode-hook (lambda () (setq tab-width 4)))
;(add-hook 'c-mode-hook (lambda () (setq c-basic-indent 4)))
;(add-hook 'c-mode-hook (lambda () (setq c-basic-offset 4)))

;(add-hook 'c++-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'c++-mode-hook (lambda () (setq tab-width 4)))
;(add-hook 'c++-mode-hook (lambda () (setq c-basic-indent 4)))
;(add-hook 'c++-mode-hook (lambda () (setq c-basic-offset 4)))

;(add-hook 'php-mode-hook (lambda () (setq indent-tabs-mode 't)))
;(add-hook 'php-mode-hook (lambda () (setq-default indent-tabs-mode 't)))
(add-hook 'php-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'php-mode-hook (lambda () (setq-default indent-tabs-mode nil)))
(add-hook 'php-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'php-mode-hook (lambda () (setq c-basic-indent 2)))
(add-hook 'php-mode-hook (lambda () (setq c-basic-offset 2)))

(add-hook 'php-mode-hook (lambda () (c-set-offset 'case-label '+)))
(add-hook 'php-mode-hook (lambda () (c-set-offset 'arglist-close 'c-lineup-arglist-operators)))
(add-hook 'php-mode-hook (lambda () (c-set-offset 'arglist-intro '+)))
(add-hook 'php-mode-hook (lambda () (c-set-offset 'arglist-cont-nonempty 'c-lineup-math)))

;(add-hook 'js-mode-hook (lambda () (c-set-offset 'case-label '+)))

;(autoload 'javascript-mode "js" nil t)
;(add-to-list 'auto-mode-alist '("\\.js$" . javascript-mode))
(add-hook 'js-mode-hook (lambda () (setq indent-tabs-mode nil)))
(add-hook 'js-mode-hook (lambda () (c-set-offset 'case-label '+)))
(add-hook 'js-mode-hook (lambda () (c-set-offset 'statement-case-open '++)))
(add-hook 'js-mode-hook (lambda () (c-set-offset 'statement-case-intro '++)))
(add-hook 'js-mode-hook (lambda () (setq tab-width 2)))
(add-hook 'js-mode-hook (lambda () (setq c-basic-indent 2)))
(add-hook 'js-mode-hook (lambda () (setq c-basic-offset 2)))
(add-hook 'js-mode-hook (lambda () (setq js-indent-level 2)))
;(add-hook 'js-mode-hook (lambda () (setq c-basic-offset 4)))


; Dumb
;(add-hook 'js-mode-hook (lambda () (setq indent-tabs-mode nil)))
;(add-hook 'js-mode-hook (lambda () (setq tab-width 2)))
;(add-hook 'js-mode-hook (lambda () (setq c-basic-indent 2)))
;(add-hook 'js-mode-hook (lambda () (setq c-basic-offset 2)))

(add-hook 'text-mode-hook
  (function
   (lambda ()
     (setq tab-width 4)
     (define-key text-mode-map "\C-i" 'self-insert-command)
     )))

(package-require-or-install 'slime)
(package-require-or-install 'slime-js)
(add-hook 'js2-mode-hook
  (lambda ()
    (slime-js-minor-mode 1)))
