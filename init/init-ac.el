;;; init-ac.el --- Configure auto-complete
;;; Commentary:

;;; Code:

(require-package 'auto-complete)

(require 'auto-complete-config)

(ac-config-default)
(ac-flyspell-workaround)
(ac-linum-workaround)

(diminish 'auto-complete-mode)

(provide 'init-ac)
;;; init-ac.el ends here
