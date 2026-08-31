

(map! :leader
      :desc "LazyGit"
      "g l" #'my/open-lazygit)


(map! :leader
      :desc "Toggle NeoTree"
      "o n" #'neotree-toggle)


(map! :leader
      :desc "Floating terminal"
      "o t" #'my/open-floating-terminal)


(map! :leader
      :prefix ("n" . "navigation")
      :desc "Previous buffer"
      "b" #'previous-buffer)
