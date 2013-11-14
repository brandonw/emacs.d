;;; init-smartparens.el --- Summary: Initialize smartparens
;;; Commentary:

;;; Code:

(require-package 'smartparens)

(require 'smartparens-config)

(add-to-list 'sp-ignore-modes-list 'nxml-mode)
(smartparens-global-mode t)

(diminish 'smartparens-mode)

(provide 'init-smartparens)
;;; init-smartparens.el ends here
