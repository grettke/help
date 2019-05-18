(setq ns-command-modifier 'meta)
(setq ns-option-modifier 'super)
(setq ns-right-option-modifier 'ignore)
(setq ns-right-control-modifier 'hyper)
(defun help/toggle-ns-right-alternate-modifier ()
  "Tottle right alternate key between meta or ignored by Emacs and passed
though to the operating system."
  (interactive)
  (setq ns-right-alternate-modifier
        (cond ((eq ns-right-alternate-modifier 'super) 'none)
              ((eq ns-right-alternate-modifier 'none) 'super)
              (t 'super))))
