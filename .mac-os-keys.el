(setq ns-right-control-modifier 'hyper)
(setq ns-command-modifier 'meta)
(defun help/toggle-alternate-modifier ()
  "Tottle left alternate key between meta or ignored by Emacs and passed
though to the operating system."
  (interactive)
  (setq ns-alternate-modifier
        (cond ((eq ns-alternate-modifier 'super) 'none)
              ((eq ns-alternate-modifier 'none) 'super)
              (t 'super))))
(help/toggle-alternate-modifier)
