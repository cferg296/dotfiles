(defun my/open-floating-terminal ()
  (interactive)
  (start-process
   "floating-terminal"
   nil
   "kitty"
   "--class" "emacs-terminal"
   "--directory" default-directory))

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
