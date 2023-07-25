;; Window
(custom-set-variables '(initial-frame-alist (quote ((fullscreen . maximized))))) ;; start emacs maximized
(setq default-frame-alist '((undecorated . t))) ;; no top bar
(setq inhibit-startup-message t)
(scroll-bar-mode -1)        ; Disable visible scrollbar
(tool-bar-mode -1)          ; Disable the toolbar
(tooltip-mode -1)           ; Disable tooltips
(set-fringe-mode 10)        ; Give some breathing room
(menu-bar-mode -1)            ; Disable the menu bar

;; Font
(set-face-attribute 'default nil :font "MesloLGSDZ Nerd Font" :height 150)

;; theme
(use-package catppuccin-theme)
(load-theme 'catppuccin :no-confirm)
