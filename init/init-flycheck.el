;;; init-flycheck.el --- Configure flycheck
;;; Commentary:

;;; Code:

(require-package 'flycheck)

(require 'flycheck)

(add-hook 'after-init-hook #'global-flycheck-mode)

(diminish 'flycheck-mode)

(provide 'init-flycheck)
;;; init-flycheck.el ends here
