;;; init-yas.el --- Configure YASnippet
;;; Commentary:

;;; Code:

(require-package 'yasnippet)

(defvar yas-fallback-behaviour 'return-nil)
(defvar yas-also-auto-indent-first-line t)

(require 'yasnippet)

(yas-global-mode t)

(define-key yas-minor-mode-map (kbd "TAB") nil)
(define-key yas-minor-mode-map [tab] nil)

(diminish 'yas-minor-mode)

(provide 'init-yas)
;;; init-yas.el ends here
