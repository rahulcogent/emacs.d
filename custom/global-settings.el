;;; global-settings.el -- This file has global settings
(global-set-key (kbd "C-\\") 'comment-or-uncomment-region) ; easy binding for commenting

(scroll-bar-mode 0) ; no scroll bar
(tool-bar-mode 0) ; no tool bar
(menu-bar-mode 0) ; no menu bar
(show-paren-mode 1) ; visualize matching parenthesees
(global-hl-line-mode 1) ; highlight current line
(eldoc-mode 1) ; enable docs in minibuffer
(setq inhibit-startup-screen 1) ; no start screen

;; store all backups in a single directory 
(setq backup-directory-alist
      `(("." . ,(concat user-emacs-directory "backups"))))

;; y or n instead of yes-or no
(fset 'yes-or-no-p 'y-or-n-p)

;; no annoying bell!
(setq ring-bell-function 'ignore)

;; set font Hack 15 pt
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 150)

;; set my init filt to be this file
(setq user-init-file "~/.emacs.d/init.el")

;; Add to executable path
(setenv "PATH" (concat (getenv "PATH") ":/opt/local/bin"))
(setq exec-path (append exec-path '("/opt/local/bin")))

;; Additional gtags path
(setenv "GTAGSLIBPATH" "/home/renovo/.conan")
(setenv "GTAGSTHROUGH" "true")
;;;
;;; global-settings.el ends here
