;;; init-ido.el --- Configure ido-mode
;;; Commentary:

;;; Code:

(require-package 'flx-ido)
(require-package 'smex)
(require-package 'sr-speedbar)
(require-package 'ido-vertical-mode)

(require 'ido)
(require 'flx-ido)
(require 'smex)
(require 'sr-speedbar)
(require 'ido-vertical-mode)

(ido-mode 1)
(ido-vertical-mode)
(ido-everywhere 1)
(flx-ido-mode 1)
(smex-initialize)
(iswitchb-mode 1)
(speedbar-change-initial-expansion-list "quick buffers")

(setq ido-use-faces nil
      ido-enable-flex-matching t
      gc-cons-threshold 50000000
      sr-speedbar-right-side nil
      sr-speedbar-width 45
      sr-speedbar-width-x 45
      sr-speedbar-width-console 45)

(global-set-key "\M- " 'hippie-expand)
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "<f9>") 'sr-speedbar-toggle)

(defadvice find-tag (before load-etags activate)
  "Reload tags if not loaded."
  (if (not (or tags-file-name tags-table-list))
      (visit-tags-table default-directory nil)))

(provide 'init-ido)
;;; init-ido.el ends here
