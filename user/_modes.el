;; This file extends what modes should be loaded for what filetypes.
;; eg. The js-mode auto-loads for js-files. But it should also be loaded for jshintrc files

(use-package yaml-mode)
(use-package php-mode)
(use-package svelte-mode)
(use-package rust-mode)
(use-package twig-mode)
(use-package typescript-mode
            :hook (typescript-mode . lsp-deferred)
            :config (setq typescript-indent-level 2))

