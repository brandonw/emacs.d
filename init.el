;;; init.el --- Initialize all modules.
;;; Commentary:
 
;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "init"))
(add-to-list 'load-path (concat user-emacs-directory "lang"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'init-setup)
(require 'init-core)
(require 'init-evil)
(require 'init-linum)
(require 'init-ui)
(require 'init-ido)
(require 'init-yas)
(require 'init-ac)
(require 'init-git)
(require 'init-flyspell)
(require 'init-flycheck)
(require 'init-projectile)

(require 'lang-haskell)

(provide 'init.el)
;;; init.el ends here
