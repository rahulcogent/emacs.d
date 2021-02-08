;; Bootstrap instructions for straight-use-package
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; load custom user files
(defun load-user-file (file)
  "Load FILE is current user's configuration directory."
  (interactive "f")
  "Load a file in current user's configuration directory"
  (load-file (expand-file-name file "~/.emacs.d/custom")))

;; Pretty mode for json files
(straight-use-package 'json-mode)
(straight-use-package 'git-timemachine)

;; User specific settings for plugins
(load-user-file "helm-cfg.el")
(load-user-file "projectile-settings.el")
(load-user-file "magit-settings.el")
(load-user-file "which-key-config.el")
(load-user-file "smartparens-config.el")
(load-user-file "doom-theme-config.el")
(load-user-file "auto-complete-settings.el")
(load-user-file "ace-window-settings.el")
(load-user-file "avy-settings.el")
(load-user-file "diff-hl-settings.el")
(load-user-file "easy-kill-settings.el")
(load-user-file "flycheck-settings.el")
(load-user-file "compilation-settings.el")
(load-user-file "undo-tree-settings.el")

;; Global settings and key bindings
(load-user-file "global-settings.el")

(provide 'init.el)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flycheck-c/c++-cppcheck-executable "/usr/local/bin/cppcheck")
 '(flycheck-c/c++-googlelint-executable "/usr/local/bin/cpplint.py")
 '(flycheck-googlelint-filter "-whitespace,+whitespace/braces,-build/c++11")
 '(flycheck-googlelint-linelength "120")
 '(flycheck-googlelint-root "project/src")
 '(flycheck-googlelint-verbose "3")
 '(undo-tree-history-directory-alist '((".*" . "/Users/rahul.sharma/.emacs.d/undo"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
