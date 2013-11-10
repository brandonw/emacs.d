;;; init-evil.el --- Configure Evil mode
;;; Commentary:

;;; Code:

(require-package 'evil)
(require-package 'surround)
(require-package 'evil-nerd-commenter)
(require-package 'evil-leader)
(require-package 'evil-matchit)
(require-package 'evil-visualstar)

;;; prevent evilmi from binding default keys
(defun evilmi-customize-keybinding ()
  "Existence of this method bypasses setup of default evil-mi key-bindings.")

(setq evil-search-module 'evil-search
      evil-want-C-u-scroll t
      evil-want-C-w-in-emacs-state t)

(require 'surround)
(require 'evil-leader)
(require 'evil-matchit)
(require 'evil-visualstar)
(require 'evil)
(evil-mode t)

(evil-leader/set-key
  "e" 'find-file
  "b" 'switch-to-buffer
  "k" 'kill-buffer
  "w" 'create-or-switch-window
  "x" 'er/expand-region
  "c" 'evilnc-comment-or-uncomment-lines)

(defun minibuffer-keyboard-quit ()
  "Abort recursive edit.
In Delete Selection mode, if the mark is active, just deactivate it;
then it takes a second \\[keyboard-quit] to abort the minibuffer."
  (interactive)
  (if (and delete-selection-mode transient-mark-mode mark-active)
      (setq deactivate-mark  t)
    (when (get-buffer "*Completions*") (delete-windows-on "*Completions*"))
    (abort-recursive-edit)))

(defun create-or-switch-window ()
  "Create a window if only one exists, otherwise switch to next window."
  (interactive)
  (if (not (one-window-p))
      (evil-window-next ())
    (split-window-horizontally) (evil-window-next ())))
 

;;; esc quits
(define-key evil-normal-state-map [escape] 'keyboard-quit)
(define-key evil-visual-state-map [escape] 'keyboard-quit)
(define-key minibuffer-local-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-ns-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-completion-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-must-match-map [escape] 'minibuffer-keyboard-quit)
(define-key minibuffer-local-isearch-map [escape] 'minibuffer-keyboard-quit)

;;; space enters command mode
(define-key evil-normal-state-map " " 'evil-ex)

;;; matchit
(evil-define-key 'normal evil-matchit-mode-map "%" 'evilmi-jump-items)

(global-surround-mode 1)
(global-evil-leader-mode)
(global-evil-matchit-mode 1)

(provide 'init-evil)
;;; init-evil.el ends here
