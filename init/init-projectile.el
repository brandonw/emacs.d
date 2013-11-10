;;; init-projectile.el --- Configure projectile
;;; Commentary:

;;; Code:

(require-package 'projectile)

(require 'projectile)

(projectile-global-mode t)

(evil-leader/set-key "f" 'projectile-find-file)

(diminish 'projectile-mode)

(provide 'init-projectile)
;;; init-projectile.el ends here
