;;; flycheck-settings.el -- This file has flycheck  related configurations
;;; Commentary:
;;; Sets up flycheck and google cpplint

;;; Code:
(straight-use-package 'flycheck)
(straight-use-package 'google-c-style)

(add-hook 'after-init-hook #'global-flycheck-mode)

(load-user-file "flycheck-google-cpplint.el")

(eval-after-load 'flycheck
  '(progn
     (require 'flycheck-google-cpplint)
     ;; Add Google C++ Style checker.
     ;; In default, syntax checked by Cppcheck.
     (flycheck-add-next-checker 'c/c++-cppcheck
                                '(warning . c/c++-googlelint))))

(custom-set-variables
 '(flycheck-c/c++-googlelint-executable "/usr/local/bin/cpplint.py"))
(custom-set-variables
 '(flycheck-c/c++-cppcheck-executable "/usr/local/bin/cppcheck"))
(setq-default flycheck-disabled-checkers '(c/c++-clang c/c++-gcc))

(custom-set-variables
 '(flycheck-googlelint-verbose "3")
 '(flycheck-googlelint-filter "-whitespace,+whitespace/braces,-build/c++11")
 '(flycheck-googlelint-root "project/src")
 '(flycheck-googlelint-linelength "120"))

(provide 'flycheck)
;; flycheck-settings.el ends here
