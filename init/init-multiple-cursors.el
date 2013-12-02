;;; init-multiple-cursors.el --- Configure multiple cursors.
;;; Commentary:

;;; Code:

(require-package 'multiple-cursors)

(require 'multiple-cursors)

(after 'evil
  (add-hook 'multiple-cursors-mode-enabled-hook 'evil-emacs-state)
  (add-hook 'multiple-cursors-mode-disabled-hook 'evil-normal-state))

(diminish 'multiple-cursors-mode)

(provide 'init-multiple-cursors)
;;; init-multiple-cursors.el ends here
