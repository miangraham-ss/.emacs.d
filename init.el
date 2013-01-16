(setq package-enable-at-startup nil)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(load-library "~/.emacs.d/install_packages")
(load-library "~/.emacs.d/modes")
(load-library "~/.emacs.d/hooks")
(load-library "~/.emacs.d/defuns")
(load-library "~/.emacs.d/keys")

