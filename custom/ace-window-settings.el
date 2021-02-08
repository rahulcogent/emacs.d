;;; ace-window-settings.el -- This file has ace window related configurations
(straight-use-package 'ace-window)

(global-set-key (kbd "M-o") 'ace-window)
(setq aw-keys '(?a ?s ?d ?f ?g ?h ?j ?k ?l))
(setq aw-dispatch-always t)

;;;
;;; ace-window-settings.el ends here
