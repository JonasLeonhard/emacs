(eval-and-compile  ; Check version at both compile and runtime.
  ;; Doom's minimum supported version of Emacs is 27.1. Its my goal to support
  ;; one major version below the stable release, for about a year or until
  ;; stable is ubiquitous (or at least easily accessible) across Linux distros.
  (when (< emacs-major-version 29)
    (user-error
     (concat
      "Detected Emacs " emacs-version ", but this config requires 29 or newer \n\n"))))
