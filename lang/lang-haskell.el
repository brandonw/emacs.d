;;; lang-haskell.el --- Summary: Initialize haskell configuration
;;; Commentary:

;;; Code:

(require-package 'haskell-mode)

(require 'speedbar)
(speedbar-add-supported-extension ".hs")

(add-hook 'haskell-mode-hook 'haskell-mode-defaults)

(defun haskell-mode-defaults ()
  (turn-on-haskell-doc-mode)
  (turn-on-haskell-indentation)
  (evil-leader/set-key
    "l" 'inferior-haskell-load-file
    "r" 'inferior-haskell-reload-file
    "s" 'switch-to-haskell
    "i" 'inferior-haskell-info
    "t" 'inferior-haskell-type
    "d" 'inferior-haskell-find-definition
    "h" 'inferior-haskell-find-haddock))

(provide 'lang-haskell)
;;; lang-haskell.el ends here
