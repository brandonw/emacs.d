;;; init-yas.el --- Configure YASnippet
;;; Commentary:

;;; Code:

(require-package 'yasnippet)

(require 'yasnippet)

(add-to-list 'yas-snippet-dirs "~/.haskell-mode-snippets")
(setq-default yas-prompt-functions '(yas-ido-prompt yas-dropdown-prompt))

(yas-global-mode t)

(diminish 'yas-minor-mode)

(provide 'init-yas)
;;; init-yas.el ends here
