;;; lang-web.el --- Summary: Initialize web configuration
;;; Commentary:

;;; Code:

(require-package 'web-mode)

(require 'web-mode)

(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.blade\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist
'("/\\(views\\|html\\|theme\\|templates\\)/.*\\.php\\'" . web-mode))

(evil-define-key 'visual web-mode-map "%" 'web-mode-tag-match)
(evil-define-key 'normal web-mode-map "%" 'web-mode-tag-match)

(defun web-mode-defaults ()
  (setq web-mode-markup-indent-offset 4
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 4
        web-mode-disable-autocompletion t))

(add-hook 'web-mode-hook 'web-mode-defaults)

(provide 'lang-web)
;;; lang-web.el ends here
