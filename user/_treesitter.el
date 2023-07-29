;; find more at: https://github.com/drom/awesome-tree-sitter
;; or: https://github.com/nvim-treesitter/nvim-treesitter#supported-languages

;; (setq treesit-language-source-alist
;;    '((bash "https://github.com/tree-sitter/tree-sitter-bash")
;;      (cmake "https://github.com/uyha/tree-sitter-cmake")
;;      (css "https://github.com/tree-sitter/tree-sitter-css")
;;      (elisp "https://github.com/Wilfred/tree-sitter-elisp")
;;      (go "https://github.com/tree-sitter/tree-sitter-go")
;;      (html "https://github.com/tree-sitter/tree-sitter-html")
;;      (javascript "https://github.com/tree-sitter/tree-sitter-javascript" "master" "src")
;;      (json "https://github.com/tree-sitter/tree-sitter-json")
;;      (make "https://github.com/alemuller/tree-sitter-make")
;;      (markdown "https://github.com/ikatyang/tree-sitter-markdown")
;;      (python "https://github.com/tree-sitter/tree-sitter-python")
;;      (toml "https://github.com/tree-sitter/tree-sitter-toml")
;;      (tsx "https://github.com/tree-sitter/tree-sitter-typescript" "master" "tsx/src")
;;      (typescript "https://github.com/tree-sitter/tree-sitter-typescript" "master" "typescript/src")
;;      (yaml "https://github.com/ikatyang/tree-sitter-yaml")
;;      (svelte "https://github.com/Himujjal/tree-sitter-svelte")
;;      ))
;;
;; ;; every language grammer needs to be called tree-sitter-<language>.
;; ;; if that is not the case: you could renmae it via:
;; ;; (setq treesit-load-name-override-list '((js "libtree-sitter-js" "tree_sitter_javascript")))
;;
;; ;; run this whenever you updated the treesitter source list
;; (defun +tree-sitter-languages-install-all-from-treesitter-el ()
;;     (interactive)
;;     (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist)))
;;
;; (defun +tree-sitter-languages-loaded ()
;;   (interactive)
;;   (with-output-to-temp-buffer "*Loaded Tree-sitter Languages*"
;;     (princ "Loaded Tree-sitter Languages:\n\n")
;;     (mapc (lambda (language)
;;             (princ (format "%s: %s\n" language (treesit-language-available-p language))))
;;           (mapcar #'car treesit-language-source-alist))))

;; prompt to install language grammars if not installed
;; (use-package treesit-auto
;;     :hook (after-init . global-treesit-auto-mode)
;;     :init (setq treesit-auto-install 'prompt))

;; currently the builtin treesitter mode in emacs 29 does not highlight stuff correctly when going into js-ts-mode.
;; TODO: how to get the builtin treesitter mode to work correctly?
(use-package tree-sitter
  :hook
  ((css-mode
    js-mode
    json-mode
    php-mode
    rust-mode
    sh-mode
    typescript-mode
    yaml-mode) . +ctree-sitter-mode-enable)

  :preface
  (defun +ctree-sitter-mode-enable ()
    (tree-sitter-mode t))

  :defer t)

(use-package tree-sitter-langs
  :hook
  (tree-sitter-after-on . tree-sitter-hl-mode))
