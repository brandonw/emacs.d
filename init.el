;;; init.el --- Initialize all modules.
;;; Commentary:
 
;;; Code:

(add-to-list 'load-path (concat user-emacs-directory "init"))
(add-to-list 'load-path (concat user-emacs-directory "lang"))
(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(defmacro after (feature &rest body)
  "After FEATURE is loaded, evaluate BODY."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))

(require 'init-setup)
(require 'init-core)
(require 'init-flycheck)
(require 'init-evil)
(require 'init-linum)
(require 'init-ui)
(require 'init-ido)
(require 'init-yas)
(require 'init-ac)
(require 'init-git)
(require 'init-flyspell)
(require 'init-projectile)
(require 'init-smartparens)
(require 'init-multiple-cursors)

(require 'lang-haskell)
(require 'lang-c)
(require 'lang-css)
(require 'lang-web)
(require 'lang-xml)
(require 'lang-prog)

(provide 'init.el)
;;; init.el ends here
