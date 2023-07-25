(use-package projectile
  :diminish projectile-mode
  :config (projectile-mode)
  :demand t)

(leader-key-def
 "f" '(projectile-find-file :which-key "find file")
 "sf" '(projectile-find-file :which-key "find file")
)
