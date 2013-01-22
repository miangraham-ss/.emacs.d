(package-require-or-install 'frame-fns)
(package-require-or-install 'frame-cmds)

(defun replace-last-sexp ()
  (interactive)
  (let ((value (eval (preceding-sexp))))
    (kill-sexp -1)
    (insert (format "%s" value))))

(defun undosify ()
 (interactive)
 (goto-char (point-min))
 (while (search-forward "\r" nil t) (replace-match "")))

(defun use-node()
  (interactive)
  (desktop-change-dir "~/projects/nodejs")
  (cd "~/projects/nodejs")
  (rename-frame "" "nodejs")
)

(defun use-home()
  (interactive)
  (desktop-change-dir "~")
  (cd "~")
  (rename-frame "" "~")
)

(defun use-scratch()
  (interactive)
  (desktop-change-dir "~/tmp")
  (cd "~/tmp")
  (rename-frame "" "scratch")
)

(cd "~")
(rename-frame "" "~")

; Font/color settings

(defface dim-braces-face '((t (:foreground "#5f5f5f")))
  "*Face for highlighting whitespace at line ends in Font-Lock mode."
  :group 'font-lock :group 'faces)
(defvar dim-braces-p t
  "Non-nil means font-lock mode highlights whitespace at line ends.")
(defun dim-braces ()
  (interactive)
  (setq dim-braces-p
        (not dim-braces-p))
  (if dim-braces-p
      (add-hook 'font-lock-mode-hook 'dim-braces-add-colors)
    (remove-hook 'font-lock-mode-hook 'dim-braces-add-colors)
    (dim-braces-remove-colors))
  (font-lock-mode) (font-lock-mode)
  (message "Dim braces is now %s."
           (if dim-braces-p "ON" "OFF")))
(defun dim-braces-add-colors ()
  (font-lock-add-keywords
   nil '(("[\;\{\}]" (0 'dim-braces-face t)))))
(defun dim-braces-remove-colors ()
  (when (fboundp 'font-lock-remove-keywords)
    (font-lock-remove-keywords
     nil '(("[\;\{\}]" (0 'dim-braces-face t))))))

(dim-braces)
;(add-hook 'font-lock-mode-hook 'dim-braces-add-colors)

(defun pres-display ()
  (interactive)
  (if dim-braces-p
	  (dim-braces)
	)
  (set-face-attribute 'default nil :height 320)
)

(defun pres-mid ()
  (interactive)
  (if dim-braces-p
	  (dim-braces)
	)
  (set-face-attribute 'default nil :height 240)
)

(defun pres-small ()
  (interactive)
  (if dim-braces-p
	  (dim-braces)
	)
  (set-face-attribute 'default nil :height 180)
)

(defun pres-done ()
  (interactive)
  (if (not dim-braces-p)
	  (dim-braces)
	)
  (set-face-attribute 'default nil :height 120)
)

(defun goog(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?q="
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun phpref(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=site%3Aphp.net+"
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun jsref(term)
  (interactive "sSearch term: ")
  (browse-url
   (concat "http://www.google.com/search?btnI=I%27m+Feeling+Lucky&q=site%3Adeveloper.mozilla.org/en/JavaScript/Reference+"
		   (replace-regexp-in-string " " "+" term)
		   )
   )
)

(defun copy-whole-buffer()
  (interactive)
  (mark-whole-buffer)
  (copy-region-as-kill (region-beginning) (region-end))
)

(defun delint()
  (interactive)
  (mark-whole-buffer)
  (replace-regexp "}(" "} (")
  (goto-char (point-min))
  (replace-regexp "){" ") {")
  (goto-char (point-min))
  (replace-regexp "function(" "function (")
  (goto-char (point-min))
  (replace-regexp "if(" "if (")
  (goto-char (point-min))
  (replace-regexp "}else" "} else")
  (goto-char (point-min))
  (replace-regexp "else{" "else {")
  (goto-char (point-min))
  (replace-regexp "for(" "for (")
  (goto-char (point-min))
  (replace-regexp "catch(" "catch (")
  (goto-char (point-min))
  (replace-regexp "}catch" "} catch")
)

