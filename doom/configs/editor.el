(after! lsp-ui
  (setq lsp-ui-sideline-enable nil))

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(setq select-enable-clipboard t)
(setq select-enable-primary t)

(setq evil-want-fine-undo t)

(setq confirm-kill-emacs nil)

(setq window-divider-default-right-width 0
      window-divider-default-bottom-width 0)

(remove-hook 'prog-mode-hook #'whitespace-mode)
