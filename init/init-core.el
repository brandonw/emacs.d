;;; init-core.el --- Configure core plugins
;;; Commentary:

;;; Code:

(require-package 'expand-region)
(require-package 'diminish)
(require-package 'xclip)

(require 'uniquify)
(require 'xclip)
(require 'expand-region)
(require 'diminish)
(require 'undo-tree)

(show-paren-mode t)
(turn-on-xclip)

(global-set-key (kbd "RET") 'newline-and-indent)

(add-hook 'local-write-file-hooks
          (lambda ()
            (delete-trailing-whitespace)
            nil))

(setq uniquify-buffer-name-style 'forward
      uniquify-separator "/"
      uniquify-after-kill-buffer-p t
      uniquify-ignore-buffers-re "^\\*"
      x-select-enable-clipboard t
      x-select-enable-primary t
      mouse-yank-at-point t
      save-place-file (concat user-emacs-directory "places")
      backup-directory-alist `(("." . ,temporary-file-directory))
      auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(require 'saveplace)
(setq-default save-place t
              indent-tabs-mode nil)

(diminish 'undo-tree-mode)

(provide 'init-core)
;;; init-core.el ends here
