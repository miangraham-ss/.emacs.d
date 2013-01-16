(defun package-install-with-refresh(package-name)
  (when (not package-archive-contents) (package-refresh-contents))
  (package-install package-name)
)

(defun package-require-or-install(package-name)
  (if (require package-name nil 't)
    nil
    (package-install-with-refresh package-name))
)


