;;; lang-css.el --- Summary: Initialize css configuration
;;; Commentary:

;;; Code:

(require-package 'rainbow-delimiters)

(add-hook 'css-mode-hook 'css-mode-defaults)

(defun css-mode-defaults ()
  (rainbow-delimiters-mode)
  (setq css-indent-offset 3))

(provide 'lang-css)
;;; lang-css.el ends here
