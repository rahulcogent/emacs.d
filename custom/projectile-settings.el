;;; projectile-settings.el -- This file has projectile related configurations
(straight-use-package 'projectile)

(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)

;;;
;;; projectile-settings.el ends here
