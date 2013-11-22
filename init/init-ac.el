;;; init-ac.el --- Configure auto-complete
;;; Commentary:

;;; Code:

(require-package 'auto-complete)

(require 'auto-complete-config)
(require 'yasnippet)

(ac-config-default)
(ac-flyspell-workaround)
(ac-linum-workaround)

(defadvice ac-expand (before advice-for-ac-expand activate)
  (when (yas-expand)
    (ac-stop)))

(diminish 'auto-complete-mode)

(provide 'init-ac)
;;; init-ac.el ends here
