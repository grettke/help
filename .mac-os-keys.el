(setq mac-control-modifier 'control)
(setq mac-right-control-modifier 'left)
(setq mac-command-modifier 'meta)
(setq mac-right-command-modifier 'left)
(setq mac-option-modifier 'super)
(setq mac-right-option-modifier 'left)
(setq mac-function-modifier 'hyper)
(defun help/toggle-mac-right-option-modifier ()
  "Toggle between passing option modifier either to Emacs or macOS."
  (interactive)
  (let ((old-ropt mac-right-option-modifier))
    (setq mac-right-option-modifier
          (if (eq mac-right-option-modifier 'left)
              'none
            'left))
    (message "Toggled `mac-right-option-modifier' from %s to %s."
             old-ropt
             mac-right-option-modifier)))
