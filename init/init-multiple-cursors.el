;;; init-multiple-cursors.el --- Configure multiple cursors.
;;; Commentary:

;;; Code:

(require-package 'multiple-cursors)

(require 'multiple-cursors)

;; Disable for now, as it is hard to use in conjunction with evil
;; (evil-leader/set-key
;;   "m" 'mc/mark-next-like-this)

;;; Ensure multiple-cursors only ever interacts with evil's
;;; insert mode. This prevents the disparity of the standard
;;; Emacs cursor position vs the standard evil-mode cursor
;;; position.
(defvar my-mc-evil-previous-state nil)

(defun my-mc-evil-switch-to-insert-state ()
  (when (and (bound-and-true-p evil-mode)
             (not (memq evil-state '(insert emacs))))
    (setq my-mc-evil-previous-state evil-state)
    (evil-insert 1)))

(defun my-mc-evil-back-to-previous-state ()
  (when my-mc-evil-previous-state
    (unwind-protect
        (case my-mc-evil-previous-state
          ((normal visual) (evil-force-normal-state))
          (t (message "Don't know how to handle previous state: %S"
                      my-mc-evil-previous-state)))
      (setq my-mc-evil-previous-state nil))))

(add-hook 'multiple-cursors-mode-enabled-hook
          'my-mc-evil-switch-to-insert-state)
(add-hook 'multiple-cursors-mode-disabled-hook
          'my-mc-evil-back-to-previous-state)

(defun my-rrm-evil-switch-state ()
  (if rectangular-region-mode
      (my-mc-evil-switch-to-insert-state)
    ;; (my-mc-evil-back-to-previous-state)  ; does not work...
    (setq my-mc-evil-previous-state nil)))

(add-hook 'rectangular-region-mode-hook 'my-rrm-evil-switch-state)

(diminish 'multiple-cursors-mode)

(provide 'init-multiple-cursors)
;;; init-multiple-cursors.el ends here
