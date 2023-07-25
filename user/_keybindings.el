;; keybindings
(use-package general
  :config
  (general-evil-setup t)

  (general-create-definer leader-key-def
    :keymaps '(normal insert visual emacs)
    :prefix "SPC"
    :global-prefix "C-SPC"))

(leader-key-def
 "s" '(:ignore t :which-key "search/replace")
 "b" '(:ignore t :which-key "buffer")
 "c" '(:ignore t :which-key "code")
 "d" '(:ignore t :which-key "debug")
 "u" '(:ignore t :which-key "ui/toggles")
 "g" '(:ignore t :which-key "git")
)
