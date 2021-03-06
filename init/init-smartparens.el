;;; init-smartparens.el --- Summary: Initialize smartparens
;;; Commentary:

;;; Code:

(require-package 'smartparens)

(require 'smartparens-config)

(setq sp-autoescape-string-quote nil
      sp-show-pair-delay 0
      sp-show-pair-from-inside t)
      ;; sp-highlight-pair-overlay nil
      ;; sp-highlight-wrap-overlay nil
      ;; sp-highlight-wrap-tag-overlay nil)

(add-to-list 'sp-ignore-modes-list 'nxml-mode)
(smartparens-global-mode t)

(diminish 'smartparens-mode)

(provide 'init-smartparens)
;;; init-smartparens.el ends here
