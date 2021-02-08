;;; avy-settings.el -- This file has avy related configurations
(straight-use-package 'avy)

(global-set-key (kbd "C-;") 'avy-goto-char-timer)
(global-set-key (kbd "M-g M-g") 'avy-goto-line)
(global-set-key (kbd "C-'") 'avy-copy-region)

;;;
;;; avy-settings.el ends here
