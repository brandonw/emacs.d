;;; lang-haskell.el --- Summary: Initialize haskell configuration
;;; Commentary:

;;; Code:

(require-package 'haskell-mode)

(require 'speedbar)
(speedbar-add-supported-extension ".hs")

(add-hook 'haskell-mode-hook 'haskell-mode-defaults)

(defun haskell-mode-defaults ()
  (turn-on-haskell-doc-mode)
  (turn-on-haskell-indentation))

(provide 'lang-haskell)
;;; lang-haskell.el ends here
