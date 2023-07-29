;; Add the "user" dir
;; user config files are prefixed with an underscore, this will avoid name conflicts. Eg. load "evil" would cause the package evil to load, causing infinite recursion.
(let ((user-dir (expand-file-name "user" user-emacs-directory)))
  (add-to-list 'load-path user-dir))

(load "_required-dependencies-check")

;; Core
(load "_package-management") ;; install package manager + use-package
(load "_keybindings") ;; keybindings needs to be loaded before all packages that define keybindings
(load "_evil") ;; nvim baby
(load "_clean") ;; keeps emacs from saving temp files in .emacs. Moves them to ~/.cache/.emacs/
(load "_savehist") ;; save history to file


;; Completions
(load "_vertico")
(load "_orderless")
(load "_marginalia")
(load "_consult")
(load "_projectile")
(load "_helpful")

;; Lsp & Language & Debugging Support
(load "_mode-mappings") ;; extend wich files to load wich mode in
(load "_treesitter") ;; wich mode to load wich treesitter syntax in
(load "_lsp-mode")
(load "_lsp-ui")
(load "_dap-mode")

;; Git & File Management
(load "_magit")
(load "_dired")

;; Terminal Emulation
(load "_vterm")

;; UI
(load "_options") ;; global settings like no-bell, relative-line-numbers
(load "_theme") ;; catppuccin
(load "_nerd-icons")
(load "_doom-modeline")
(load "_whichkey")

