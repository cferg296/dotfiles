(setq doom-theme 'jbeans)

(custom-theme-set-faces! 'jbeans
  '(default :background "#151515"))


(custom-set-faces!
  '(header-line :background "#151515" :foreground "#888888")
  '(tab-line :background "#151515" :foreground "#888888"))

(custom-set-faces!
  '(line-number :background "#151515")
  '(line-number-current-line :background "#151515"))

(after! centaur-tabs
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
