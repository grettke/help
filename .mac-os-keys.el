;; | Key                            | My Emacs | OS Note                           |
;; |--------------------------------+----------+-----------------------------------|
;; | lcl : Left-Control             | Control  | Rarely used                       |
;; | lgi : Left-GUI (Command, Win)  | Meta     | Mac Window Switching              |
;; | lal : Left-Alt (Option)        | Super    | Mac symbols, Win Window Switching |
;; | rcl : Right-Control            | Hyper    | Rarely used                       |
;; | rgi : Right-GUI (Command, Win) | Alt      | Mac Window Switching              |
;; | ral : Right-Alt (Option)       | Alt∨None | Mac symbols, Win Window Switching |

(setq ns-control-modifier 'control)
(setq ns-command-modifier 'meta)
(setq ns-alternate-modifier 'super)
(setq ns-right-control-modifier 'hyper)
(setq ns-right-command-modifier 'alt)
(setq ns-right-alternate-modifier 'alt)

(defun help/toggle-ns-right-alternate-modifier ()
  "Either Emacs swallows right-alt as alt or passes it to OS."
  (interactive)
  (setq ns-right-alternate-modifier
        (cond ((eq ns-right-alternate-modifier 'alt) 'none)
              ((eq ns-right-alternate-modifier 'none) 'alt)
              (t 'alt))))
