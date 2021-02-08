;;; easy-kill-settings.el -- This file has easy kill related configurations
(straight-use-package 'easy-kill)

(global-set-key [remap kill-ring-save] 'easy-kill)
(global-set-key [remap mark-sexp] 'easy-mark)

;;;
;;; easy-kill-settings.el ends here
