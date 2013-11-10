;;; init-flyspell.el --- Configure flyspell
;;; Commentary:

;;; Code:

(require 'flyspell)

(setq ispell-program-name "aspell"
      ispell-extra-args '("--sug-mode=ultra"))

(add-hook 'prog-mode-hook (lambda () (flyspell-prog-mode)))
(add-hook 'text-mode-hook (lambda () (flyspell-mode 1)))

(diminish 'flyspell-mode)

(provide 'init-flyspell)
;;; init-flyspell.el ends here
