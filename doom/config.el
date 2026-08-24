(setq doom-theme 'jbeans)

(custom-theme-set-faces! 'jbeans
  '(default :background "#151515"))

(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 15))

(after! centaur-tabs
  (setq centaur-tabs-buffer-groups-function
        (lambda ()
          (list "Files")))
  (setq centaur-tabs-hide-tabs-hooks nil)
  (centaur-tabs-mode t)
  (custom-set-faces!
    '(centaur-tabs-default
      :background "#151515"
      :foreground "#888888")

    '(centaur-tabs-unselected
      :background "#151515"
      :foreground "#888888")

    '(centaur-tabs-selected
      :background "#151515"
      :foreground "#ffffff"
      :weight bold)

    '(centaur-tabs-unselected-modified
      :background "#151515"
      :foreground "#aaaaaa")

    '(centaur-tabs-selected-modified
      :background "#151515"
      :foreground "#ffffff"
      :weight bold)

    '(centaur-tabs-active-bar-face
      :background "#151515")

    '(centaur-tabs-modified-marker-selected
      :foreground "#ffffff")

    '(centaur-tabs-modified-marker-unselected
      :foreground "#888888")))

(custom-set-faces!
  '(header-line :background "#151515" :foreground "#888888")
  '(tab-line :background "#151515" :foreground "#888888"))


(remove-hook 'prog-mode-hook #'whitespace-mode)

(custom-set-faces!
  '(line-number :background "#151515")
  '(line-number-current-line :background "#151515"))

(defun my/open-floating-terminal ()
  (interactive)
  (start-process
   "floating-terminal"
   nil
   "kitty"
   "--class" "emacs-terminal"
   "--directory" default-directory))

(map! :leader
      :desc "Floating terminal"
      "o t" #'my/open-floating-terminal)

(after! lsp-ui
  (setq lsp-ui-sideline-enable nil))

(setq display-line-numbers-type t)

(setq org-directory "~/org/")

(setq select-enable-clipboard t)
(setq select-enable-primary t)

(setq evil-want-fine-undo t)

(defun my/lazygit ()
  (interactive)
  (let ((default-directory
         (if buffer-file-name
             (file-name-directory buffer-file-name)
           default-directory)))
    (vterm "*lazygit*")
    (vterm-send-string "lazygit")
    (vterm-send-return)))

(defun my/open-lazygit ()
  (interactive)
  (let ((default-directory
         (if buffer-file-name
             (file-name-directory buffer-file-name)
           default-directory)))
    (start-process "lazygit" nil
                   "kitty"
                   "--class" "lazygit"
                   "--directory" default-directory
                   "lazygit")))

(map! :leader
      :desc "LazyGit"
      "g l" #'my/open-lazygit)

(map! :leader
      :desc "Toggle NeoTree"
      "o n" #'neotree-toggle)

(setq confirm-kill-emacs nil)

(after! demap
  (defun my/demap-auto-open ()
    (when buffer-file-name
      (demap-open)))

  (add-hook 'doom-switch-buffer-hook #'my/demap-auto-open))

(setq window-divider-default-right-width 0
      window-divider-default-bottom-width 0)
