;;; smartparens-config.el -- This file has smartparens related configurations

(straight-use-package 'smartparens)
(require 'smartparens-config)

(global-set-key (kbd "C-c C-w") 'sp-unwrap-sexp)
(add-hook 'prog-mode-hook 'turn-on-smartparens-strict-mode)

;;;
;;; smart-parens.el ends here
