;;; lang-prog.el --- Summary: Initialize base prog-mode configuration.
;;; Commentary:

;;; Code:

;; show the name of the current function definition in the modeline
(require 'which-func)
(add-to-list 'which-func-modes 'haskell-mode)
(add-to-list 'which-func-modes 'c-mode)
(which-function-mode 1)

(defun prog-mode-defaults ())

(add-hook 'prog-mode-hook 'prog-mode-defaults)

(provide 'lang-prog)
;;; lang-prog.el ends here
