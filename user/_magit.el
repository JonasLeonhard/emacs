(use-package magit
  :custom
  (magit-display-buffer-function #'magit-display-buffer-same-window-except-diff-v1))

(leader-key-def
  "gg" '(magit :which-key "Magit")
)
