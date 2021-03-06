;;; init-core.el --- Configure core plugins
;;; Commentary:

;;; Code:

(require-package 'expand-region)
(require-package 'diminish)
(require-package 'xclip)
(require-package 'ag)
(require-package 'undo-tree)

(require 'uniquify)
(require 'xclip)
(require 'expand-region)
(require 'diminish)
(require 'undo-tree)

(show-paren-mode t)
(turn-on-xclip)
(global-undo-tree-mode)

;(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'local-write-file-hooks
          (lambda ()
            (delete-trailing-whitespace)
            nil))

(setq uniquify-buffer-name-style 'forward
      uniquify-separator "/"
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*"
      browse-url-browser-function 'browse-url-chromium
      x-select-enable-clipboard t
      x-select-enable-primary t
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(require 'saveplace)
(setq-default save-place t
              indent-tabs-mode nil)

(defun core-defaults ()
  (diminish 'server-mode))

(diminish 'undo-tree-mode)

(add-hook 'server-visit-hook 'core-defaults)

(provide 'init-core)
;;; init-core.el ends here
