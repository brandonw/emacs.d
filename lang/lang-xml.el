;;; lang-xml.el --- Summary: Initialize xml configuration
;;; Commentary:

;;; Code:

(require 'nxml-mode)

(setq nxml-child-indent 4)
(setq nxml-attribute-indent 4)
(setq nxml-auto-insert-xml-declaration-flag nil)
(setq nxml-bind-meta-tab-to-complete-flag t)
(setq nxml-slash-auto-complete-flag t)

(provide 'lang-xml)
;;; lang-xml.el ends here
