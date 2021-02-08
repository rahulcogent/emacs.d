;;; undo-tree-settings.el -- This file has undo tree settings
;;; Commentary:

;;; Code:
(straight-use-package 'undo-tree)

(require 'undo-tree)
(global-undo-tree-mode)
(setq undo-tree-auto-save-history t)

(defadvice undo-tree-make-history-save-file-name
    (after undo-tree activate)
  "Compress undo history in gz format."
  (setq ad-return-value (concat ad-return-value ".gz")))

(provide 'undo-tree-settings)
;;; undo-tree-settings.el ends here
