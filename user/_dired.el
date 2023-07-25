(use-package dired
  :ensure nil
  :commands (dired dired-jump)
  :bind (("C-x C-j" . dired-jump))
  :config
  (evil-collection-define-key 'normal 'dired-mode-map
    "h" 'dired-single-up-directory
    "l" 'dired-single-buffer))

(use-package dired-single
  :commands (dired dired-jump))

(use-package nerd-icons-dired
  :hook
  (dired-mode . nerd-icons-dired-mode))

(leader-key-def
  "e" '(dired :which-key "Explore (dired)")
)
