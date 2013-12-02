;;; lang-haskell.el --- Summary: Initialize haskell configuration
;;; Commentary:

;;; Code:

(require-package 'haskell-mode)
(require-package 'ghc)

(require 'ghc)
(require 'speedbar)
(require 'auto-complete)
(speedbar-add-supported-extension ".hs")

(add-hook 'haskell-mode-hook 'haskell-mode-defaults)

(defun haskell-mode-defaults ()
  (add-to-list 'ac-sources 'ac-source-ghc-mod)
  (add-to-list 'ac-sources 'ac-source-yasnippet)
  (turn-on-haskell-doc-mode)
  (turn-on-haskell-indentation)
  (diminish 'haskell-indentation-mode)
  (diminish 'haskell-doc-mode)
  (evil-leader/set-key
    "l" 'inferior-haskell-load-file
    "r" 'inferior-haskell-reload-file
    ;; "s" 'switch-to-haskell
    "i" 'inferior-haskell-info
    "t" 'inferior-haskell-type
    "d" 'inferior-haskell-find-definition
    "h" 'inferior-haskell-find-haddock))

(provide 'lang-haskell)
;;; lang-haskell.el ends here
