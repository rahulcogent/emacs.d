;;; yasnippets-settings.el -- This file has yasnippets settings
;;; Commentary:

;;; Code:
(straight-use-package 'yasnippet)
(straight-use-package 'yasnippet-snippets)

(yas-global-mode 1)
(add-hook 'prog-mode-hook #'yas-minor-mode)

(define-key yas-minor-mode-map (kbd "<tab>") nil)
(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map (kbd "<C-tab>") 'yas-expand)

(setq yas-snippet-dirs
      '( "/Users/rahul.sharma/.emacs.d/straight/repos/yasnippet-snippets/snippets/" ;; the yasmate collection
        ))

(provide 'yasnippets-settings)
;;; yasnippets-settings.el ends here
