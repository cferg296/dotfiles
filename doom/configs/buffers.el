(after! centaur-tabs
  (setq centaur-tabs-buffer-groups-function
        (lambda ()
          (list "Files")))

  (setq centaur-tabs-hide-tabs-hooks nil)

  (centaur-tabs-mode t))

(after! demap
  (defun my/demap-auto-open ()
    (when buffer-file-name
      (demap-open)))
  (add-hook 'doom-switch-buffer-hook #'my/demap-auto-open))
