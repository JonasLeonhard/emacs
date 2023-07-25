;; Make ESC quit prompts
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

;; Set up the visible bell
;; (setq visible-bell t)
;; quiet, please! No dinging!
;; (setq visible-bell nil)
(setq ring-bell-function `(lambda ()))

;; Line Numbers
(column-number-mode)
(global-display-line-numbers-mode t)
;; Disable line numbers for some modes
(setq display-line-numbers-type 'relative)

;; right alt should not be a meta key on macos
(setq mac-option-modifier 'meta)
(setq mac-right-option-modifier nil)
