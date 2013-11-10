;;; init-linum.el --- Configure linum
;;; Commentary:

;;; Code:

(require-package 'linum-relative)

(require 'linum)
(require 'linum-relative)

(setq linum-relative-format "%3s ")
(global-linum-mode t)

(provide 'init-linum)
;;; init-linum.el ends here
